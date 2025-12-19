import 'dart:developer';

import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerController extends GetxController {
  final ImagePicker picker = ImagePicker();

  Future<String> pickImage() async {
    final XFile? image = await picker.pickImage(source: ImageSource.gallery);
    if (image != null) {
      log(image!.path.toString());
    } else {
      log("Image not picked");
    }

    return "";
  }
}
