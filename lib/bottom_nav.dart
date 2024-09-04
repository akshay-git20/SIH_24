import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sih_24/models/disease.dart';
import 'package:sih_24/screens/disease_page.dart';
import 'package:sih_24/screens/profile_screen.dart';
import 'package:sih_24/screens/upload_image.dart';
import 'package:sih_24/screens/youtube_videos.dart';

class UserBottomNav extends StatefulWidget {
  const UserBottomNav({super.key});

  @override
  State<UserBottomNav> createState() => _UserBottomNavState();
}

class _UserBottomNavState extends State<UserBottomNav> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    const UploadImage(),
    YouTubeListPage(),
    DiseaseListPage(),
    const UserProfile(),
  ];

  void onTappedBar(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  Future<bool> _onBackPressed() async {
    return showDialog(
      context: context,
      builder: (context) => AlertDialog(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
        ),
        title: const Text(
          'Do you want to exit..?',
          style: TextStyle(fontWeight: FontWeight.w300),
        ),
        actions: <Widget>[
          CloseButton(
            onPressed: () => Navigator.of(context).pop(false),
            color: Colors.red,
          ),
          const SizedBox(height: 16),
          IconButton(
            onPressed: () async {
              await SystemNavigator.pop();
            },
            icon: const Icon(
              Icons.check,
              color: Colors.green,
            ),
          ),
          const SizedBox(width: 16),
        ],
      ),
    ).then((value) =>
        value ?? false); // Ensure to return false if the dialog is dismissed
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // ScaffoldMessenger.of(context).hideCurrentSnackBar();
    WidgetsBinding.instance.addPostFrameCallback((_) {
    ScaffoldMessenger.of(context).hideCurrentSnackBar();
  });
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onBackPressed,
      child: Scaffold(
        body: _children[_currentIndex],
        bottomNavigationBar: AnimatedBottomNavigationBar.builder(
          backgroundColor: Colors.green[100],
          itemCount: 4,
          tabBuilder: (int index, bool isActive) {
            final color = isActive ? Colors.blue : Colors.grey;
            IconData iconData = Icons.quiz; // Default value
            String label = 'Quiz'; 

            switch (index) {
              case 0:
                iconData = Icons.upload;
                label = 'Upload';
                break;
              case 1:
                iconData = Icons.video_library;
                label = 'Videos';
                break;
              case 2:
                iconData = Icons.info;
                label = 'Disease List';
                break;
              case 3:
                iconData = Icons.person;
                label = 'Profile';
                break;
            }

            return Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  iconData,
                  color: color,
                ),
                Text(
                  label,
                  style: TextStyle(color: color),
                ),
              ],
            );
          },
          activeIndex: _currentIndex,
          splashColor: Colors.blue,
          gapLocation: GapLocation.none,
          notchSmoothness: NotchSmoothness.defaultEdge,
          onTap: onTappedBar,
        ),
      ),
    );
  }
}

