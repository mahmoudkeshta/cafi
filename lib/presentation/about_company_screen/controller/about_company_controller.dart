import 'package:coffee_app/core/app_export.dart';import 'package:coffee_app/presentation/about_company_screen/models/about_company_model.dart';/// A controller class for the AboutCompanyScreen.
///
/// This class manages the state of the AboutCompanyScreen, including the
/// current aboutCompanyModelObj
class AboutCompanyController extends GetxController {Rx<AboutCompanyModel> aboutCompanyModelObj = AboutCompanyModel().obs;

 }
