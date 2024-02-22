import 'package:coffee_app/core/app_export.dart';import 'package:coffee_app/presentation/request_refund_screen/models/request_refund_model.dart';import 'package:flutter/material.dart';/// A controller class for the RequestRefundScreen.
///
/// This class manages the state of the RequestRefundScreen, including the
/// current requestRefundModelObj
class RequestRefundController extends GetxController {TextEditingController group329Controller = TextEditingController();

Rx<RequestRefundModel> requestRefundModelObj = RequestRefundModel().obs;

@override void onClose() { super.onClose(); group329Controller.dispose(); } 
 }
