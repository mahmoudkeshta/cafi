import '../controller/tracking_orders_controller.dart';
import 'package:get/get.dart';

/// A binding class for the TrackingOrdersScreen.
///
/// This class ensures that the TrackingOrdersController is created when the
/// TrackingOrdersScreen is first loaded.
class TrackingOrdersBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TrackingOrdersController());
  }
}
