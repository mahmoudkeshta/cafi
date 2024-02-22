import 'package:coffee_app/core/app_export.dart';import 'package:coffee_app/presentation/refund_status_screen/models/refund_status_model.dart';/// A controller class for the RefundStatusScreen.
///
/// This class manages the state of the RefundStatusScreen, including the
/// current refundStatusModelObj
class RefundStatusController extends GetxController {Rx<RefundStatusModel> refundStatusModelObj = RefundStatusModel().obs;

 }
