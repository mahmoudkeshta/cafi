import 'package:coffee_app/core/app_export.dart';import 'package:coffee_app/presentation/about_screen/models/about_model.dart';/// A controller class for the AboutScreen.
///
/// This class manages the state of the AboutScreen, including the
/// current aboutModelObj
class AboutController extends GetxController {Rx<AboutModel> aboutModelObj = AboutModel().obs;

 }
