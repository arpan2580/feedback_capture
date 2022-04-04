// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:feedback_capture/controllers/image_controller.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class CustomOpenImage extends StatelessWidget {
  const CustomOpenImage({
    Key? key,
    required this.context,
    required ImageController controller,
  })  : _controller = controller,
        super(key: key);

  final BuildContext context;
  final _controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 20,
      ),
      child: Column(
        children: [
          const Text(
            "Choose Image Source",
            style: TextStyle(
              fontSize: 16.0,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  IconButton(
                    icon: const Icon(Icons.camera_alt_rounded),
                    onPressed: () {
                      Navigator.of(context).pop();
                      _controller.getImage(ImageSource.camera);
                    },
                  ),
                  const Text("Camera"),
                ],
              ),
              Column(
                children: [
                  IconButton(
                    icon: const Icon(Icons.image_rounded),
                    onPressed: () {
                      Navigator.of(context).pop();
                      _controller.getImage(ImageSource.gallery);
                    },
                  ),
                  const Text("Gallery"),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
