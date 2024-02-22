import 'package:coffee_app/core/app_export.dart';import 'package:coffee_app/presentation/write_review_one_screen/models/write_review_one_model.dart';import 'package:flutter/material.dart';/// A controller class for the WriteReviewOneScreen.
///
/// This class manages the state of the WriteReviewOneScreen, including the
/// current writeReviewOneModelObj
class WriteReviewOneController extends GetxController {TextEditingController group122Controller = TextEditingController();

Rx<WriteReviewOneModel> writeReviewOneModelObj = WriteReviewOneModel().obs;

@override void onClose() { super.onClose(); group122Controller.dispose(); } 
 }
