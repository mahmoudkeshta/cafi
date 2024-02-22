import 'widget4_item_model.dart';import '../../../core/app_export.dart';/// This class defines the variables used in the [top_up_action_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class TopUpActionModel {Rx<List<Widget4ItemModel>> widget4ItemList = Rx(List.generate(5,(index) =>Widget4ItemModel()));

Rx<List<String>> radioList = Rx(["lbl_aba_bank","lbl_wing_bank","lbl_acleda_bank"]);

 }
