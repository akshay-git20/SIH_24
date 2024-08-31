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
  ),
  Disease(
    name: 'Tomato - Healthy',
    symptoms: 'No visible symptoms...',
    remedies: 'Regular watering, proper fertilization...',
  ),
  Disease(
    name: 'Grape - Healthy',
    symptoms: 'No visible symptoms...',
    remedies: 'Ensure proper sunlight, adequate water supply...',
  ),
  Disease(
    name: 'Orange - Haunglongbing (Citrus greening)',
    symptoms: 'Yellowing of leaves, misshapen fruit...',
    remedies: 'Remove infected trees, use insecticides to control vector...',
  ),
  Disease(
    name: 'Soybean - Healthy',
    symptoms: 'No visible symptoms...',
    remedies: 'Maintain optimal growing conditions, proper fertilization...',
  ),
  Disease(
    name: 'Squash - Powdery Mildew',
    symptoms: 'White powdery spots on leaves and stems...',
    remedies: 'Apply fungicides, improve air circulation...',
  ),
  Disease(
    name: 'Potato - Healthy',
    symptoms: 'No visible symptoms...',
    remedies: 'Ensure proper soil conditions and regular watering...',
  ),
  Disease(
    name: 'Corn (maize) - Northern Leaf Blight',
    symptoms: 'Long, gray-green lesions on leaves...',
    remedies: 'Use resistant hybrids, apply fungicides...',
  ),
  Disease(
    name: 'Tomato - Early Blight',
    symptoms: 'Dark spots on older leaves, yellowing around spots...',
    remedies: 'Remove affected leaves, apply fungicides...',
  ),
  Disease(
    name: 'Tomato - Septoria Leaf Spot',
    symptoms: 'Small, circular spots on lower leaves...',
    remedies: 'Remove infected leaves, apply fungicides...',
  ),
  Disease(
    name: 'Corn (maize) - Cercospora Leaf Spot/Gray Leaf Spot',
    symptoms: 'Gray to tan rectangular lesions on leaves...',
    remedies: 'Rotate crops, apply fungicides...',
  ),
  Disease(
    name: 'Strawberry - Leaf Scorch',
    symptoms: 'Irregular reddish spots on leaves...',
    remedies: 'Remove infected leaves, use resistant varieties...',
  ),
  Disease(
    name: 'Peach - Healthy',
    symptoms: 'No visible symptoms...',
    remedies: 'Regular pruning, proper fertilization...',
  ),
  Disease(
    name: 'Apple - Apple Scab',
    symptoms: 'Olive-green spots on leaves and fruit...',
    remedies: 'Apply fungicides, remove fallen leaves...',
  ),
  Disease(
    name: 'Tomato - Tomato Yellow Leaf Curl Virus',
    symptoms: 'Yellowing and curling of leaves, stunted growth...',
    remedies: 'Control whiteflies, remove infected plants...',
  ),
  Disease(
    name: 'Tomato - Bacterial Spot',
    symptoms: 'Dark, water-soaked spots on leaves, stems, and fruit...',
    remedies: 'Use copper-based bactericides, remove infected plants...',
  ),
  Disease(
    name: 'Apple - Black Rot',
    symptoms: 'Dark lesions on leaves, fruit, and bark...',
    remedies: 'Prune affected areas, apply fungicides...',
  ),
  Disease(
    name: 'Blueberry - Healthy',
    symptoms: 'No visible symptoms...',
    remedies: 'Maintain proper soil pH, adequate watering...',
  ),
  Disease(
    name: 'Cherry (including sour) - Powdery Mildew',
    symptoms: 'White, powdery growth on leaves and fruit...',
    remedies: 'Apply fungicides, improve air circulation...',
  ),
  Disease(
    name: 'Peach - Bacterial Spot',
    symptoms: 'Small, water-soaked spots on leaves and fruit...',
    remedies: 'Apply copper-based bactericides, remove infected leaves...',
  ),
  Disease(
    name: 'Apple - Cedar Apple Rust',
    symptoms: 'Orange-yellow spots on leaves, fruit distortion...',
    remedies: 'Apply fungicides, remove nearby cedar trees...',
  ),
  Disease(
    name: 'Tomato - Target Spot',
    symptoms: 'Brown, concentric rings on leaves and fruit...',
    remedies: 'Remove infected plants, apply fungicides...',
  ),
  Disease(
    name: 'Pepper, bell - Healthy',
    symptoms: 'No visible symptoms...',
    remedies: 'Maintain proper growing conditions, avoid overwatering...',
  ),
  Disease(
    name: 'Grape - Leaf Blight (Isariopsis Leaf Spot)',
    symptoms: 'Dark, irregular spots on leaves...',
    remedies: 'Apply fungicides, improve air circulation...',
  ),
  Disease(
    name: 'Potato - Late Blight',
    symptoms: 'Dark, water-soaked lesions on leaves and tubers...',
    remedies: 'Use resistant varieties, apply fungicides...',
  ),
  Disease(
    name: 'Tomato - Tomato Mosaic Virus',
    symptoms: 'Mosaic pattern of light and dark green on leaves...',
    remedies: 'Remove infected plants, control aphids...',
  ),
  Disease(
    name: 'Strawberry - Healthy',
    symptoms: 'No visible symptoms...',
    remedies: 'Proper soil preparation, adequate watering...',
  ),
  Disease(
    name: 'Apple - Healthy',
    symptoms: 'No visible symptoms...',
    remedies: 'Regular pruning, proper fertilization...',
  ),
  Disease(
    name: 'Grape - Black Rot',
    symptoms: 'Brownish spots on leaves, black fruit rot...',
    remedies: 'Prune affected areas, apply fungicides...',
  ),
  Disease(
    name: 'Potato - Early Blight',
    symptoms: 'Dark, concentric spots on older leaves...',
    remedies: 'Use resistant varieties, apply fungicides...',
  ),
  Disease(
    name: 'Cherry (including sour) - Healthy',
    symptoms: 'No visible symptoms...',
    remedies: 'Proper pruning, avoid overwatering...',
  ),
  Disease(
    name: 'Corn (maize) - Common Rust',
    symptoms: 'Small, reddish-brown pustules on leaves...',
    remedies: 'Use resistant hybrids, apply fungicides...',
  ),
  Disease(
    name: 'Grape - Esca (Black Measles)',
    symptoms: 'Leaf discoloration, dark streaks in wood...',
    remedies: 'Prune affected areas, improve soil drainage...',
  ),
  Disease(
    name: 'Raspberry - Healthy',
    symptoms: 'No visible symptoms...',
    remedies: 'Regular pruning, proper fertilization...',
  ),
  Disease(
    name: 'Tomato - Leaf Mold',
    symptoms: 'Yellow spots on upper leaf surface, mold on underside...',
    remedies: 'Improve air circulation, apply fungicides...',
  ),
  Disease(
    name: 'Tomato - Spider Mites (Two-spotted spider mite)',
    symptoms: 'Tiny yellow spots, webbing on leaves...',
    remedies: 'Use miticides, increase humidity...',
  ),
  Disease(
    name: 'Pepper, bell - Bacterial Spot',
    symptoms: 'Dark, water-soaked spots on leaves and fruit...',
    remedies: 'Use copper-based bactericides, rotate crops...',
  ),
  Disease(
    name: 'Corn (maize) - Healthy',
    symptoms: 'No visible symptoms...',
    remedies: 'Ensure proper soil conditions, adequate watering...',
  ),
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        backgroundColor: CustomTheme.loginGradientStart, // Set the app bar background color
        title: Text('Plant Disease Remedies',style: TextStyle(color: Colors.white),),
        actions: [
          IconButton(
            icon: Icon(Icons.search,color:  Colors.white,),
            onPressed: () {
              showSearch(context: context, delegate: DiseaseSearchDelegate(diseases));
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
        child: Padding(
        
          padding: const EdgeInsets.all(8.0), // Add padding around the ListView
          child: ListView.builder(
            itemCount: diseases.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 8.0), // Space between cards
                child: Card(
                  color: Colors.green[50], // Set the card color
                  elevation: 4.0, // Add shadow to the card
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0), // Rounded corners
                  ),
                  child: ListTile(
                    title: Text(
                      diseases[index].name,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DiseaseDetailPage(disease: diseases[index]),
                        ),
                      );
                    },
                  ),
                ),
              );
            },
          ),
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
    final results = diseases.where((disease) => disease.name.toLowerCase().contains(query.toLowerCase()));

    return ListView(
      children: results.map<ListTile>((disease) => ListTile(
        title: Text(disease.name),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DiseaseDetailPage(disease: disease),
            ),
          );
        },
      )).toList(),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestions = diseases.where((disease) => disease.name.toLowerCase().startsWith(query.toLowerCase()));

    return ListView(
      children: suggestions.map<ListTile>((disease) => ListTile(
        title: Text(disease.name),
        onTap: () {
          query = disease.name;
          showResults(context);
        },
      )).toList(),
    );
  }
}
