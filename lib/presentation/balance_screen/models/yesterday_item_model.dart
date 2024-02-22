import '../../../core/app_export.dart';/// This class is used in the [yesterday_item_widget] screen.
class YesterdayItemModel {YesterdayItemModel({this.groupBy, this.id, }) { groupBy = groupBy  ?? Rx("");id = id  ?? Rx(""); }

Rx<String>? groupBy;

Rx<String>? id;

 }
