import 'package:flutter/material.dart';
import 'package:sih_24/models/disease.dart';

class DiseaseDetailPage extends StatelessWidget {
  final Disease disease;

  DiseaseDetailPage({required this.disease});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF4a7c59), // Custom color for the app bar
        title: Text(
          disease.name,
          style: TextStyle(color: Colors.white),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.white,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Symptoms:',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xFF355b3a), // Slightly darker shade for text
              ),
            ),
            SizedBox(height: 8),
            Container(
              decoration: BoxDecoration(
                color: Color(
                    0xFFe8f5e9), // Light greenish background for the container
                borderRadius: BorderRadius.circular(10.0), // Rounded corners
                boxShadow: [
                  BoxShadow(
                    color: Color(0xFF4a7c59).withOpacity(0.3),
                    blurRadius: 5,
                    offset: Offset(0, 3), // Shadow for elevation
                  ),
                ],
              ),
              padding: EdgeInsets.all(12.0), // Padding inside the box
              child: Text(
                disease.symptoms,
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0xFF355b3a), // Same dark green color for text
                ),
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Remedies:',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xFF355b3a), // Same dark green color for text
              ),
            ),
            SizedBox(height: 8),
            Container(
              decoration: BoxDecoration(
                color: Color(
                    0xFFe8f5e9), // Light greenish background for the container
                borderRadius: BorderRadius.circular(10.0), // Rounded corners
                boxShadow: [
                  BoxShadow(
                    color: Color(0xFF4a7c59).withOpacity(0.3),
                    blurRadius: 5,
                    offset: Offset(0, 3), // Shadow for elevation
                  ),
                ],
              ),
              padding: EdgeInsets.all(12.0), // Padding inside the box
              child: Text(
                disease.remedies,
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0xFF355b3a), // Same dark green color for text
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
