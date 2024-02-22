import 'package:coffee_app/core/app_export.dart';import 'package:coffee_app/presentation/request_refund_action_screen/models/request_refund_action_model.dart';/// A controller class for the RequestRefundActionScreen.
///
/// This class manages the state of the RequestRefundActionScreen, including the
/// current requestRefundActionModelObj
class RequestRefundActionController extends GetxController {Rx<RequestRefundActionModel> requestRefundActionModelObj = RequestRefundActionModel().obs;

 }
