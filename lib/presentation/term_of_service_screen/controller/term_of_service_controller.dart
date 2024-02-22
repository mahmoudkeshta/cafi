import 'package:coffee_app/core/app_export.dart';import 'package:coffee_app/presentation/term_of_service_screen/models/term_of_service_model.dart';/// A controller class for the TermOfServiceScreen.
///
/// This class manages the state of the TermOfServiceScreen, including the
/// current termOfServiceModelObj
class TermOfServiceController extends GetxController {Rx<TermOfServiceModel> termOfServiceModelObj = TermOfServiceModel().obs;

 }
