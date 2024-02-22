import '../../../core/app_export.dart';/// This class is used in the [active_item_widget] screen.
class ActiveItemModel {ActiveItemModel({this.groupBy, this.id, }) { groupBy = groupBy  ?? Rx("");id = id  ?? Rx(""); }

Rx<String>? groupBy;

Rx<String>? id;

 }
