import '../../../core/app_export.dart';/// This class is used in the [searchshopfilter_item_widget] screen.
class SearchshopfilterItemModel {SearchshopfilterItemModel({this.image, this.circleImage, this.starbucks, this.ratingCounter, this.k, this.id, }) { image = image  ?? Rx(ImageConstant.imgRectangle192);circleImage = circleImage  ?? Rx(ImageConstant.imgImage1685x85);starbucks = starbucks  ?? Rx("Starbucks");ratingCounter = ratingCounter  ?? Rx("8.1 Rating");k = k  ?? Rx("10K");id = id  ?? Rx(""); }

Rx<String>? image;

Rx<String>? circleImage;

Rx<String>? starbucks;

Rx<String>? ratingCounter;

Rx<String>? k;

Rx<String>? id;

 }
