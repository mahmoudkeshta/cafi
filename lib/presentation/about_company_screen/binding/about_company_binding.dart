import '../controller/about_company_controller.dart';
import 'package:get/get.dart';

/// A binding class for the AboutCompanyScreen.
///
/// This class ensures that the AboutCompanyController is created when the
/// AboutCompanyScreen is first loaded.
class AboutCompanyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AboutCompanyController());
  }
}
