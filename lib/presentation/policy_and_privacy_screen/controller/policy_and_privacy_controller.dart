import 'package:coffee_app/core/app_export.dart';import 'package:coffee_app/presentation/policy_and_privacy_screen/models/policy_and_privacy_model.dart';/// A controller class for the PolicyAndPrivacyScreen.
///
/// This class manages the state of the PolicyAndPrivacyScreen, including the
/// current policyAndPrivacyModelObj
class PolicyAndPrivacyController extends GetxController {Rx<PolicyAndPrivacyModel> policyAndPrivacyModelObj = PolicyAndPrivacyModel().obs;

 }
