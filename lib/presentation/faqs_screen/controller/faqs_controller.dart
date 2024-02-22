import 'package:coffee_app/core/app_export.dart';import 'package:coffee_app/presentation/faqs_screen/models/faqs_model.dart';/// A controller class for the FaqsScreen.
///
/// This class manages the state of the FaqsScreen, including the
/// current faqsModelObj
class FaqsController extends GetxController {Rx<FaqsModel> faqsModelObj = FaqsModel().obs;

 }
