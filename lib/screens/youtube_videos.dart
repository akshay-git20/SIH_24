import 'package:flutter/material.dart';
import 'package:sih_24/theme.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class YouTubePlayerPage extends StatefulWidget {
  final String videoId;

  YouTubePlayerPage({required this.videoId});

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
          'YouTube Player',
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
      body: Column(
        children: [
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/img/background.png"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Center(
                child: YoutubePlayer(
                  controller: _controller,
                  showVideoProgressIndicator: true,
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


class YouTubeListPage extends StatelessWidget {
  final List<Map<String, String>> videos = [
    {
      'title': 'Crop Disease and their control',
      'videoId': YoutubePlayer.convertUrlToId("https://youtu.be/OtiqxEaNY2o?si=qJdqh1ooeQRU18MU")!
    },
    {
      'title': 'All Crop solutions',
      'videoId': YoutubePlayer.convertUrlToId("https://youtu.be/Saip4YcQLOQ?si=nKVW0O-dnlCj7tFQ")!
    },
    {
      'title': 'Crop Protection',
      'videoId': YoutubePlayer.convertUrlToId("https://youtu.be/nDYTA-eqGOQ?si=kAC5f7tn_YLkVFLk")! 
    },
    {
      'title': 'State Management in Flutter',
      'videoId': YoutubePlayer.convertUrlToId("https://youtu.be/nDYTA-eqGOQ?si=kAC5f7tn_YLkVFLk")! 
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        backgroundColor: CustomTheme.loginGradientStart, 
        title: Text('YouTube Player List',style: TextStyle(color: Colors.white),),
      ),
      body: Container(
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
              margin: EdgeInsets.all(10.0),
              elevation: 5.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => YouTubePlayerPage(
                        videoId: videos[index]['videoId']!,
                      ),
                    ),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.play_circle_fill,
                        color: Colors.red,
                        size: 40.0,
                      ),
                      SizedBox(width: 15.0),
                      Expanded(
                        child: Text(
                          videos[index]['title']!,
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.w600,
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
