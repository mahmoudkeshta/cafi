import 'package:coffee_app/core/app_export.dart';import 'package:coffee_app/presentation/tracking_orders_screen/models/tracking_orders_model.dart';/// A controller class for the TrackingOrdersScreen.
///
/// This class manages the state of the TrackingOrdersScreen, including the
/// current trackingOrdersModelObj
class TrackingOrdersController extends GetxController {Rx<TrackingOrdersModel> trackingOrdersModelObj = TrackingOrdersModel().obs;

 }
