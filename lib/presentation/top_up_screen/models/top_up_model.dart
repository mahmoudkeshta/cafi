import 'widget2_item_model.dart';import '../../../core/app_export.dart';/// This class defines the variables used in the [top_up_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class TopUpModel {Rx<List<Widget2ItemModel>> widget2ItemList = Rx(List.generate(5,(index) =>Widget2ItemModel()));

Rx<List<String>> radioList = Rx(["lbl_aba_bank","lbl_wing_bank","lbl_acleda_bank"]);

 }
