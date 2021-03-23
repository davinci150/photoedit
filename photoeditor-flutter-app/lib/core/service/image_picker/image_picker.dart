import 'dart:io';

import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerService implements ImagePickerServiceI {
  final ImagePicker _imagePicker = ImagePicker();
  @override
  Future<File> pickImage() async {
    try {
      final PickedFile pickedFile =
          await _imagePicker.getImage(source: ImageSource.gallery);

      if (pickedFile != null) {
        return File(pickedFile.path);
      } else {
        return null;
      }
    } on PlatformException {
      return null;
    }
  }
}

// ignore: one_member_abstracts
abstract class ImagePickerServiceI {
  Future<File> pickImage();
}
