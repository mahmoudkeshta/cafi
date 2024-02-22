import 'package:coffee_app/localization/en_us/ar_translations.dart';
import 'package:get/get.dart';
import 'en_us/en_us_translations.dart';

class AppLocalization extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {'en_US': enUs,'ar_AR': arAr};

}
