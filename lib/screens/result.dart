import 'package:flutter/material.dart';

class DetectionResult extends StatefulWidget {
  const DetectionResult({super.key});

  @override
  State<DetectionResult> createState() => _DetectionResultState();
}

class _DetectionResultState extends State<DetectionResult> {
  int _currentStep = 0;
  bool _isAnalyzing = true;
  final List<String> _steps = [
    "Processing Image...",
    "Analyzing Crop Health...",
    "Gathering Environmental Data...",
    "Generating Recommendations..."
  ];

  @override
  void initState() {
    super.initState();
    _startAnalysis();
  }

  void _startAnalysis() {
    for (int i = 0; i < _steps.length - 1; i++) {
      Future.delayed(Duration(seconds: 2 * (i + 1)), () {
        if (mounted) {
          setState(() {
            _currentStep = i + 1;
          });
        }
      });
    }

    Future.delayed(Duration(seconds: 2 * (_steps.length + 1)), () {
      if (mounted) {
        setState(() {
          _isAnalyzing = false;
        });
      }
    });
  }

  void _showAnalysisCompletedDialog() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          content: const Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.check_circle, color: Colors.green, size: 50.0),
              SizedBox(height: 10),
              Text("Analysis Completed!"),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                Navigator.of(context).pop(); // Go back to the previous page
              },
              child: const Text("OK"),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Result'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (_isAnalyzing) ...[
                  const CircularProgressIndicator(),
                  const SizedBox(height: 20),
                  Text(_steps[_currentStep]),
                ] else ...[
                  // Analysis Summary
                  const SizedBox(
                    width: double.infinity,
                    child: Card(
                      child: Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Disease Diagnosis: Powdery Mildew',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold)),
                            SizedBox(height: 8),
                            Text('Confidence Level: High',
                                style: TextStyle(fontSize: 16)),
                          ],
                        ),
                      ),
                    ),
                  ),

                  // Crop Health Status
                  const SizedBox(
                    width: double.infinity,
                    child: Card(
                      child: Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text.rich(
                              TextSpan(
                                text: 'Crop Health Status: ',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                                children: [
                                  TextSpan(
                                    text: 'Infected',
                                    style: TextStyle(
                                        color: Colors.red, fontSize: 18),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  // Container(
                  //   padding: const EdgeInsets.all(10),
                  //   decoration: BoxDecoration(
                  //     color: Colors.red, // Change color based on status
                  //     borderRadius: BorderRadius.circular(8),
                  //   ),
                  //   child: const Text(
                  //     'Health Status: Infected',
                  //     style: TextStyle(color: Colors.white, fontSize: 16),
                  //   ),
                  // ),
                  // Environmental Data Summary
                  const SizedBox(
                    width: double.infinity,
                    child: Card(
                      child: Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Environmental Conditions:',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 8),
                            Text('Temperature: 28°C',
                                style: TextStyle(fontSize: 16)),
                            Text('Humidity: 75%',
                                style: TextStyle(fontSize: 16)),
                            Text('Rainfall: 12 mm',
                                style: TextStyle(fontSize: 16)),
                            Text('Soil Moisture: 35%',
                                style: TextStyle(fontSize: 16)),
                            SizedBox(height: 16),
                          ],
                        ),
                      ),
                    ),
                  ),

                  // Treatment Recommendations

                  const SizedBox(
                    width: double.infinity,
                    child: Card(
                      child: Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Recommendations:',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 8),
                            ListTile(
                              title:
                                  Text('Preventive Measure: Adjust irrigation'),
                            ),
                            ListTile(
                              title: Text('Treatment Option: Fungicide X'),
                            ),
                            SizedBox(height: 16),
                          ],
                        ),
                      ),
                    ),
                  ),

                  // Actionable Insights
                  const SizedBox(
                    width: double.infinity,
                    child: Card(
                      child: Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Next Steps:',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 8),
                            Text(
                                '1. Apply recommended fungicide as per instructions.',
                                style: TextStyle(fontSize: 16)),
                            Text(
                                '2. Monitor environmental conditions regularly.',
                                style: TextStyle(fontSize: 16)),
                            Text(
                                '3. Set up reminders for follow-up treatments.',
                                style: TextStyle(fontSize: 16)),
                            SizedBox(height: 16),
                          ],
                        ),
                      ),
                    ),
                  ),

                  // Additional Resources
                  TextButton(
                    onPressed: () {
                      // Implement link to additional resources
                    },
                    child: const Text('Learn More About Powdery Mildew'),
                  ),
                  // const SizedBox(height: 16),

                  // User Feedback
                  // const Text(
                  //   'Your Feedback:',
                  //   style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  // ),
                  // const SizedBox(height: 8),
                  // TextFormField(
                  //   decoration: const InputDecoration(
                  //     border: OutlineInputBorder(),
                  //     labelText: 'Your Feedback',
                  //   ),
                  //   maxLines: 4,
                  // ),
                  // const SizedBox(height: 16),
                  // ElevatedButton(
                  //   onPressed: () {
                  //     // Logic to submit feedback
                  //   },
                  //   child: const Text('Submit Feedback'),
                  // ),
                ]
              ],
            ),
          ),
        ),
      ),
    );
  }
}
