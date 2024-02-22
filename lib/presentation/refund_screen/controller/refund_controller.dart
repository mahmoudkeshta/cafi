import 'package:coffee_app/core/app_export.dart';import 'package:coffee_app/presentation/refund_screen/models/refund_model.dart';/// A controller class for the RefundScreen.
///
/// This class manages the state of the RefundScreen, including the
/// current refundModelObj
class RefundController extends GetxController {Rx<RefundModel> refundModelObj = RefundModel().obs;

 }
