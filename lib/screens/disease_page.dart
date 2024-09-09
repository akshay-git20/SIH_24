import 'package:flutter/material.dart';
import 'package:sih_24/models/disease.dart';
import 'package:sih_24/screens/disease_detail_page.dart';
import 'package:sih_24/theme.dart';

class DiseaseListPage extends StatefulWidget {
  @override
  _DiseaseListPageState createState() => _DiseaseListPageState();
}

class _DiseaseListPageState extends State<DiseaseListPage> {
  List<Disease> diseases = [
    Disease(
      name: 'Tomato - Late Blight',
      symptoms: 'Dark, water-soaked spots on leaves, stems, and fruit...',
      remedies: 'Use fungicides, remove infected plants...',
      image: 'assets/img/tomato_late_blight.jpg',
    ),
    Disease(
      name: 'Tomato - Healthy',
      symptoms: 'No visible symptoms...',
      remedies: 'Regular watering, proper fertilization...',
      image: 'assets/img/tomato_late_blight.jpg',
    ),
    Disease(
      name: 'Grape - Healthy',
      symptoms: 'No visible symptoms...',
      remedies: 'Ensure proper sunlight, adequate water supply...',
      image: 'assets/img/tomato_late_blight.jpg',
    ),
    Disease(
      name: 'Orange - Haunglongbing (Citrus greening)',
      symptoms: 'Yellowing of leaves, misshapen fruit...',
      remedies: 'Remove infected trees, use insecticides to control vector...',
      image: 'assets/img/tomato_late_blight.jpg',
    ),
    Disease(
      name: 'Soybean - Healthy',
      symptoms: 'No visible symptoms...',
      remedies: 'Maintain optimal growing conditions, proper fertilization...',
      image: 'assets/img/tomato_late_blight.jpg',
    ),
    Disease(
      name: 'Squash - Powdery Mildew',
      symptoms: 'White powdery spots on leaves and stems...',
      remedies: 'Apply fungicides, improve air circulation...',
      image: 'assets/img/tomato_late_blight.jpg',
    ),
    Disease(
      name: 'Potato - Healthy',
      symptoms: 'No visible symptoms...',
      remedies: 'Ensure proper soil conditions and regular watering...',
      image: 'assets/img/tomato_late_blight.jpg',
    ),
    Disease(
      name: 'Corn (maize) - Northern Leaf Blight',
      symptoms: 'Long, gray-green lesions on leaves...',
      remedies: 'Use resistant hybrids, apply fungicides...',
      image: 'assets/img/tomato_late_blight.jpg',
    ),
    Disease(
      name: 'Tomato - Early Blight',
      symptoms: 'Dark spots on older leaves, yellowing around spots...',
      remedies: 'Remove affected leaves, apply fungicides...',
      image: 'assets/img/tomato_late_blight.jpg',
    ),
    Disease(
      name: 'Tomato - Septoria Leaf Spot',
      symptoms: 'Small, circular spots on lower leaves...',
      remedies: 'Remove infected leaves, apply fungicides...',
      image: 'assets/img/tomato_late_blight.jpg',
    ),
    Disease(
      name: 'Corn (maize) - Cercospora Leaf Spot/Gray Leaf Spot',
      symptoms: 'Gray to tan rectangular lesions on leaves...',
      remedies: 'Rotate crops, apply fungicides...',
      image: 'assets/img/tomato_late_blight.jpg',
    ),
    Disease(
      name: 'Strawberry - Leaf Scorch',
      symptoms: 'Irregular reddish spots on leaves...',
      remedies: 'Remove infected leaves, use resistant varieties...',
      image: 'assets/img/tomato_late_blight.jpg',
    ),
    Disease(
      name: 'Peach - Healthy',
      symptoms: 'No visible symptoms...',
      remedies: 'Regular pruning, proper fertilization...',
      image: 'assets/img/tomato_late_blight.jpg',
    ),
    Disease(
      name: 'Apple - Apple Scab',
      symptoms: 'Olive-green spots on leaves and fruit...',
      remedies: 'Apply fungicides, remove fallen leaves...',
      image: 'assets/img/tomato_late_blight.jpg',
    ),
    Disease(
      name: 'Tomato - Tomato Yellow Leaf Curl Virus',
      symptoms: 'Yellowing and curling of leaves, stunted growth...',
      remedies: 'Control whiteflies, remove infected plants...',
      image: 'assets/img/tomato_late_blight.jpg',
    ),
    Disease(
      name: 'Tomato - Bacterial Spot',
      symptoms: 'Dark, water-soaked spots on leaves, stems, and fruit...',
      remedies: 'Use copper-based bactericides, remove infected plants...',
      image: 'assets/img/tomato_late_blight.jpg',
    ),
    Disease(
      name: 'Apple - Black Rot',
      symptoms: 'Dark lesions on leaves, fruit, and bark...',
      remedies: 'Prune affected areas, apply fungicides...',
      image: 'assets/img/tomato_late_blight.jpg',
    ),
    Disease(
      name: 'Blueberry - Healthy',
      symptoms: 'No visible symptoms...',
      remedies: 'Maintain proper soil pH, adequate watering...',
      image: 'assets/img/tomato_late_blight.jpg',
    ),
    Disease(
      name: 'Cherry (including sour) - Powdery Mildew',
      symptoms: 'White, powdery growth on leaves and fruit...',
      remedies: 'Apply fungicides, improve air circulation...',
      image: 'assets/img/tomato_late_blight.jpg',
    ),
    Disease(
      name: 'Peach - Bacterial Spot',
      symptoms: 'Small, water-soaked spots on leaves and fruit...',
      remedies: 'Apply copper-based bactericides, remove infected leaves...',
      image: 'assets/img/tomato_late_blight.jpg',
    ),
    Disease(
      name: 'Apple - Cedar Apple Rust',
      symptoms: 'Orange-yellow spots on leaves, fruit distortion...',
      remedies: 'Apply fungicides, remove nearby cedar trees...',
      image: 'assets/img/tomato_late_blight.jpg',
    ),
    Disease(
      name: 'Tomato - Target Spot',
      symptoms: 'Brown, concentric rings on leaves and fruit...',
      remedies: 'Remove infected plants, apply fungicides...',
      image: 'assets/img/tomato_late_blight.jpg',
      // assets/img/tomato_late_blight.jpg
    ),
    Disease(
      name: 'Pepper, bell - Healthy',
      symptoms: 'No visible symptoms...',
      remedies: 'Maintain proper growing conditions, avoid overwatering...',
      image: 'assets/img/tomato_late_blight.jpg',
    ),
    Disease(
      name: 'Grape - Leaf Blight (Isariopsis Leaf Spot)',
      symptoms: 'Dark, irregular spots on leaves...',
      remedies: 'Apply fungicides, improve air circulation...',
      image: 'assets/img/tomato_late_blight.jpg',
    ),
    Disease(
      name: 'Potato - Late Blight',
      symptoms: 'Dark, water-soaked lesions on leaves and tubers...',
      remedies: 'Use resistant varieties, apply fungicides...',
      image: 'assets/img/tomato_late_blight.jpg',
    ),
    Disease(
      name: 'Tomato - Tomato Mosaic Virus',
      symptoms: 'Mosaic pattern of light and dark green on leaves...',
      remedies: 'Remove infected plants, control aphids...',
      image: 'assets/img/tomato_late_blight.jpg',
    ),
    Disease(
      name: 'Strawberry - Healthy',
      symptoms: 'No visible symptoms...',
      remedies: 'Proper soil preparation, adequate watering...',
      image: 'assets/img/img1.jpeg',
    ),
    Disease(
      name: 'Apple - Healthy',
      symptoms: 'No visible symptoms...',
      remedies: 'Regular pruning, proper fertilization...',
      image: 'assets/img/tomato_late_blight.jpg',
    ),
    Disease(
      name: 'Grape - Black Rot',
      symptoms: 'Brownish spots on leaves, black fruit rot...',
      remedies: 'Prune affected areas, apply fungicides...',
      image: 'assets/img/tomato_late_blight.jpg',
    ),
    Disease(
      name: 'Potato - Early Blight',
      symptoms: 'Dark, concentric spots on older leaves...',
      remedies: 'Use resistant varieties, apply fungicides...',
      image: 'assets/img/tomato_late_blight.jpg',
    ),
    Disease(
      name: 'Cherry (including sour) - Healthy',
      symptoms: 'No visible symptoms...',
      remedies: 'Proper pruning, avoid overwatering...',
      image: 'assets/img/tomato_late_blight.jpg',
    ),
    Disease(
      name: 'Corn (maize) - Common Rust',
      symptoms: 'Small, reddish-brown pustules on leaves...',
      remedies: 'Use resistant hybrids, apply fungicides...',
      image: 'assets/img/tomato_late_blight.jpg',
    ),
    Disease(
      name: 'Grape - Esca (Black Measles)',
      symptoms: 'Leaf discoloration, dark streaks in wood...',
      remedies: 'Prune affected areas, improve soil drainage...',
      image: 'assets/img/tomato_late_blight.jpg',
    ),
    Disease(
      name: 'Raspberry - Healthy',
      symptoms: 'No visible symptoms...',
      remedies: 'Regular pruning, proper fertilization...',
      image: 'assets/img/tomato_late_blight.jpg',
    ),
    Disease(
      name: 'Tomato - Leaf Mold',
      symptoms: 'Yellow spots on upper leaf surface, mold on underside...',
      remedies: 'Improve air circulation, apply fungicides...',
      image: 'assets/img/tomato_late_blight.jpg',
    ),
    Disease(
      name: 'Tomato - Spider Mites (Two-spotted spider mite)',
      symptoms: 'Tiny yellow spots, webbing on leaves...',
      remedies: 'Use miticides, increase humidity...',
      image: 'assets/img/tomato_late_blight.jpg',
    ),
    Disease(
      name: 'Pepper, bell - Bacterial Spot',
      symptoms: 'Dark, water-soaked spots on leaves and fruit...',
      remedies: 'Use copper-based bactericides, rotate crops...',
      image: 'assets/img/tomato_late_blight.jpg',
    ),
    Disease(
      name: 'Corn (maize) - Healthy',
      symptoms: 'No visible symptoms...',
      remedies: 'Ensure proper soil conditions, adequate watering...',
      image: 'assets/img/tomato_late_blight.jpg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: CustomTheme.loginGradientStart,
        title: Text(
          'Plant Disease Remedies',
          style: TextStyle(
              color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.search, color: Colors.white),
            onPressed: () {
              showSearch(
                  context: context, delegate: DiseaseSearchDelegate(diseases));
            },
          ),
        ],
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/img/background.png"),
            fit: BoxFit.cover,
          ),
        ),
        padding: const EdgeInsets.all(12.0),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // 2 cards per row
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
            childAspectRatio: 0.8, // Adjust height to width ratio
          ),
          itemCount: diseases.length,
          itemBuilder: (context, index) {
            return Card(
              elevation: 10.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          DiseaseDetailPage(disease: diseases[index],),
                    ),
                  );
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Image Section
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15.0),
                        topRight: Radius.circular(15.0),
                      ),
                      child: Container(
                        height: 120,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(diseases[index].image),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ), // Text Section
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            diseases[index].name,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Colors.black87,
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                          SizedBox(height: 6.0),
                          Text(
                            diseases[index].symptoms,
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.black54,
                            ),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class DiseaseSearchDelegate extends SearchDelegate {
  final List<Disease> diseases;

  DiseaseSearchDelegate(this.diseases);

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    final results = diseases.where(
        (disease) => disease.name.toLowerCase().contains(query.toLowerCase()));

    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
        childAspectRatio: 0.8,
      ),
      itemCount: results.length,
      itemBuilder: (context, index) {
        final disease = results.elementAt(index);
        return ListTile(
          title: Text(disease.name),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DiseaseDetailPage(disease: disease),
              ),
            );
          },
        );
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestions = diseases.where((disease) =>
        disease.name.toLowerCase().startsWith(query.toLowerCase()));

    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
        childAspectRatio: 0.8,
      ),
      itemCount: suggestions.length,
      itemBuilder: (context, index) {
        final disease = suggestions.elementAt(index);
        return ListTile(
          title: Text(disease.name),
          onTap: () {
            query = disease.name;
            showResults(context);
          },
        );
      },
    );
  }
}
