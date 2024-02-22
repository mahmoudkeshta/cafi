import '../../../core/app_export.dart';/// This class is used in the [jokiboy_item_widget] screen.
class JokiboyItemModel {JokiboyItemModel({this.jokiboy, this.jokiBoy, this.ratingCounter, this.yummmy, this.id, }) { jokiboy = jokiboy  ?? Rx(ImageConstant.imgEllipse31);jokiBoy = jokiBoy  ?? Rx("Joki boy");ratingCounter = ratingCounter  ?? Rx("8.1 Rating");yummmy = yummmy  ?? Rx("Yummmy...");id = id  ?? Rx(""); }

Rx<String>? jokiboy;

Rx<String>? jokiBoy;

Rx<String>? ratingCounter;

Rx<String>? yummmy;

Rx<String>? id;

 }
