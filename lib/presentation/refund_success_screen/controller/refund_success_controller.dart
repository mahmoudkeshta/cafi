import 'package:coffee_app/core/app_export.dart';
import 'package:coffee_app/presentation/refund_success_screen/models/refund_success_model.dart';

/// A controller class for the RefundSuccessScreen.
///
/// This class manages the state of the RefundSuccessScreen, including the
/// current refundSuccessModelObj
class RefundSuccessController extends GetxController {
  Rx<RefundSuccessModel> refundSuccessModelObj = RefundSuccessModel().obs;
}
