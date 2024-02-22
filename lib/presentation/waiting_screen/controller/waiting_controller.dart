import 'package:coffee_app/core/app_export.dart';import 'package:coffee_app/presentation/waiting_screen/models/waiting_model.dart';/// A controller class for the WaitingScreen.
///
/// This class manages the state of the WaitingScreen, including the
/// current waitingModelObj
class WaitingController extends GetxController {Rx<WaitingModel> waitingModelObj = WaitingModel().obs;

 }
