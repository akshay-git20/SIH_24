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
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 22,
            letterSpacing: 1.2, // A little spacing to make it elegant
          ),
        ),
        centerTitle: true, // Center the title for symmetry
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.white,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Stack(
        children: [
          // Background Image
          Positioned.fill(
            child: Image.asset(disease.image, // Replace with the path to your background image
              fit: BoxFit.cover, // Ensure the image covers the entire background
            ),
          ),
          // Content over the image
          SingleChildScrollView(
            child: Container(
              width: MediaQuery.of(context).size.width,  // Full width
              height: MediaQuery.of(context).size.height, // Full height
              padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildSectionTitle('Symptoms'),
                  SizedBox(height: 10),
                  _buildInfoCard(disease.symptoms),
                  SizedBox(height: 24),
                  _buildSectionTitle('Remedies'),
                  SizedBox(height: 10),
                  _buildInfoCard(disease.remedies),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Helper function to build section titles with enhanced design
  Widget _buildSectionTitle(String title) {
    return Text(
      title,
      style: TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.w600,
        color: Color(0xFF355b3a), // Darker green for better contrast
        letterSpacing: 1.1,
        shadows: [
          Shadow(
            color: Colors.grey.withOpacity(0.2),
            blurRadius: 3,
            offset: Offset(1, 1),
          )
        ], // Soft shadow for depth
      ),
    );
  }

  // Helper function to build the info cards
  Widget _buildInfoCard(String content) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFFe8f5e9).withOpacity(0.8), // Make the background slightly transparent
        borderRadius: BorderRadius.circular(12.0), // More rounded corners
        border: Border.all(
          color: Color(0xFF4a7c59), // Border for subtle detail
          width: 1.5,
        ),
        boxShadow: [
          BoxShadow(
            color: Color(0xFF4a7c59).withOpacity(0.2),
            blurRadius: 8,
            offset: Offset(0, 4), // Stronger shadow for an elevated look
          ),
        ],
      ),
      padding: EdgeInsets.all(16.0), // More generous padding
      child: Text(
        content,
        style: TextStyle(
          fontSize: 16,
          color: Color(0xFF355b3a), // Darker green for content text
          height: 1.5, // Line height for better readability
        ),
      ),
    );
  }
}
