import 'package:coffee_app/core/app_export.dart';import 'package:coffee_app/presentation/write_review_screen/models/write_review_model.dart';import 'package:flutter/material.dart';/// A controller class for the WriteReviewScreen.
///
/// This class manages the state of the WriteReviewScreen, including the
/// current writeReviewModelObj
class WriteReviewController extends GetxController {TextEditingController descriptionController = TextEditingController();

Rx<WriteReviewModel> writeReviewModelObj = WriteReviewModel().obs;

@override void onClose() { super.onClose(); descriptionController.dispose(); } 
 }
