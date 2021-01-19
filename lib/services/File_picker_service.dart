import 'dart:convert';
import 'dart:typed_data';

import 'package:biolege/app/locator.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:stacked_services/stacked_services.dart';

class FilePickerHelperService {
  Future<PickedFile> pickImage(ImageSource imageSource) async {
    final SnackbarService _snackBarService = locator<SnackbarService>();

    //Start file picking process
    final picker = ImagePicker();

    final pickedImage = await picker.getImage(
      source: imageSource,
      imageQuality: 70,
    );
    if (pickedImage != null) return pickedImage;
    // if no file picked error message displays
    _snackBarService.showSnackbar(message: "No file was selected");
    return null;
  }

  Image imageFromBase64String(String base64String) {
    return Image.memory(
      base64Decode(base64String),
      fit: BoxFit.fill,
    );
  }

  Uint8List dataFromBase64String(String base64String) {
    return base64Decode(base64String);
  }

  String base64String(Uint8List data) {
    return base64Encode(data);
  }
}
