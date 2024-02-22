import '../../../core/app_export.dart';/// This class is used in the [pendingorders_item_widget] screen.
class PendingordersItemModel {PendingordersItemModel({this.groupBy, this.id, }) { groupBy = groupBy  ?? Rx("");id = id  ?? Rx(""); }

Rx<String>? groupBy;

Rx<String>? id;

 }
