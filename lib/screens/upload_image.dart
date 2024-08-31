import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'package:dotted_border/dotted_border.dart';
import 'dart:math' as math;

import 'package:sih_24/screens/result.dart';
import 'package:sih_24/theme.dart';

class UploadImage extends StatefulWidget {
  const UploadImage({super.key});

  @override
  State<UploadImage> createState() => _UploadImageState();
}

class _UploadImageState extends State<UploadImage> {
  File? _image;
  double _rotationAngle = 0.0;
  bool _isUploaded = false;

  Future<void> _pickImage() async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      setState(() {
        _image = File(pickedFile.path);
        _rotationAngle = 0.0; // Reset rotation when a new image is picked
      });
    }
  }

  void _rotateImage() {
    setState(() {
      _rotationAngle += math.pi / 2; // Rotate 90 degrees
    });
  }

  void _deleteImage() {
    setState(() {
      _image = null;
      _rotationAngle = 0.0;
      _isUploaded = false;
    });
  }

  void _submitImage(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Image uploaded successfully!'),
      ),
    );
    setState(() {
      _isUploaded = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    final double sideLength = MediaQuery.of(context).size.width / 2;

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: const Text('Upload Image',style: TextStyle(color: Colors.white),),
        backgroundColor: CustomTheme.loginGradientStart,
        leading: null,
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/img/background.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Stack(children: [
                  GestureDetector(
                    onTap: _pickImage,
                    child: DottedBorder(
                      color: const Color.fromARGB(255, 72, 72, 72),
                      borderType: BorderType.RRect,
                      strokeWidth: 2,
                      dashPattern: const [4, 4],
                      child: SizedBox(
                        width: sideLength,
                        height: sideLength,
                        child: _image == null
                            ? Container(
                              color: Colors.white,
                              child: const Column(
                                  
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                      Icon(Icons.add_photo_alternate,
                                          size: 50.0, color: Colors.grey),
                                      Text('Click to Upload Image')
                                    ]),
                            )
                            : Transform.rotate(
                                angle: _rotationAngle,
                                child: ClipRRect(
                                  child: Image.file(
                                    _image!,
                                    fit: BoxFit.cover,
                                    width: sideLength,
                                    height: sideLength,
                                  ),
                                ),
                              ),
                      ),
                    ),
                  ),
                  if (_image != null)
                    Positioned(
                      top: 0,
                      right: 0,
                      child: Row(
                        children: [
                          FloatingActionButton(
                            heroTag: 'btn1',
                            mini: true,
                            backgroundColor: Colors.white,
                            onPressed: _rotateImage,
                            child: const Icon(Icons.rotate_right,
                                color: Colors.black),
                          ),
                          const SizedBox(width: 4),
                          FloatingActionButton(
                            heroTag: 'btn2',
                            mini: true,
                            backgroundColor: Colors.white,
                            onPressed: _deleteImage,
                            child: const Icon(Icons.delete, color: Colors.red),
                          ),
                        ],
                      ),
                    ),
                ]),
                const SizedBox(height: 20),
                if(_isUploaded == false)
                ElevatedButton(
                  style:ButtonStyle(backgroundColor: WidgetStateProperty.all<Color>(CustomTheme.loginGradientStart,
                  ),foregroundColor: WidgetStateProperty.all<Color>(Colors.white),),
                  
                  onPressed:
                      _image != null ? () => {_submitImage(context)} : null,
                  child: const Text('Upload'),
                ),
                if (_isUploaded)
                  ElevatedButton(
                    style:ButtonStyle(backgroundColor: WidgetStateProperty.all<Color>(CustomTheme.loginGradientStart,
                  ),foregroundColor: WidgetStateProperty.all<Color>(Colors.white),),
                  onPressed:
                      _image != null ? () => {Navigator.push(context, MaterialPageRoute(builder: (context) => const DetectionResult()))} : null,
                  child: const Text('Analyze'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
