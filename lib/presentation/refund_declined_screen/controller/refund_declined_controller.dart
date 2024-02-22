import 'package:coffee_app/core/app_export.dart';
import 'package:coffee_app/presentation/refund_declined_screen/models/refund_declined_model.dart';

/// A controller class for the RefundDeclinedScreen.
///
/// This class manages the state of the RefundDeclinedScreen, including the
/// current refundDeclinedModelObj
class RefundDeclinedController extends GetxController {
  Rx<RefundDeclinedModel> refundDeclinedModelObj = RefundDeclinedModel().obs;
}
