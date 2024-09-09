import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:sih_24/theme.dart';

class YouTubePlayerPage extends StatefulWidget {
  final String videoId;
  final String videoTitle;

  YouTubePlayerPage({required this.videoId, required this.videoTitle});

  @override
  _YouTubePlayerPageState createState() => _YouTubePlayerPageState();
}

class _YouTubePlayerPageState extends State<YouTubePlayerPage> {
  late YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = YoutubePlayerController(
      initialVideoId: widget.videoId,
      flags: YoutubePlayerFlags(
        autoPlay: true,
        mute: false,
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: CustomTheme.loginGradientStart,
        title: Text(
          widget.videoTitle,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.white,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.black,
                image: DecorationImage(
                  image: AssetImage("assets/img/background.png"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Center(
                child: YoutubePlayer(
                  controller: _controller,
                  showVideoProgressIndicator: true,
                  progressColors: ProgressBarColors(
                    playedColor: Colors.redAccent,
                    handleColor: Colors.red,
                  ),
                  onReady: () {
                    _controller.addListener(() {});
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class YouTubeListPage extends StatefulWidget {
  @override
  _YouTubeListPageState createState() => _YouTubeListPageState();
}

class _YouTubeListPageState extends State<YouTubeListPage> {
  String _selectedLanguage = 'English'; // Default language selection

  // List of videos with associated language
  final Map<String, List<Map<String, String>>> languageVideos = {
    'English': [
      {
        'title': 'Crop Disease and their Control',
        'videoId': YoutubePlayer.convertUrlToId("https://youtu.be/OtiqxEaNY2o")!,
      },
      {
        'title': 'All Crop Solutions',
        'videoId': YoutubePlayer.convertUrlToId("https://youtu.be/nDYTA-eqGOQ")!,
      },
    ],
    'Hindi': [
      {
        'title': 'Crop Protection',
        'videoId': YoutubePlayer.convertUrlToId("https://youtu.be/Saip4YcQLOQ")!,
      },
      {
        'title': 'State Management in Flutter',
        'videoId': YoutubePlayer.convertUrlToId("https://youtu.be/nDYTA-eqGOQ")!,
      },
    ],
  };

  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> videos = languageVideos[_selectedLanguage]!;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: CustomTheme.loginGradientStart,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Text(
                'Recommended Videos',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  letterSpacing: 1.2,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(width: 20),
            DropdownButton<String>(
              elevation: 42,
              borderRadius: BorderRadius.circular(10), 
              value: _selectedLanguage,
              icon: Icon(Icons.arrow_drop_down, color: Colors.white),
              dropdownColor: CustomTheme.loginGradientStart,
              underline: Container(),
              items: <String>['English', 'Hindi']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(
                    value,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                );
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  _selectedLanguage = newValue!;
                });
              },
            ),
          ],
        ),
        elevation: 6, // Add some elevation to make the AppBar stand out
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/img/background.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: ListView.builder(
          itemCount: videos.length,
          itemBuilder: (context, index) {
            return Card(
              elevation: 42.0, // Add a bit more elevation to the card for depth
              margin: EdgeInsets.symmetric(vertical: 10.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: InkWell(
                borderRadius: BorderRadius.circular(15.0),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => YouTubePlayerPage(
                        videoId: videos[index]['videoId']!,
                        videoTitle: videos[index]['title']!,
                      ),
                    ),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 10,
                            ),
                          ],
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.network(
                            'https://img.youtube.com/vi/${videos[index]['videoId']}/0.jpg',
                            width: 100,
                            height: 70,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(width: 15.0),
                      Expanded(
                        child: Text(
                          videos[index]['title']!,
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.w600,
                            color: Colors.black87,
                            letterSpacing: 0.5,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
