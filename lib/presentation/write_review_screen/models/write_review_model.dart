import '../../../core/app_export.dart';import 'writereview_item_model.dart';/// This class defines the variables used in the [write_review_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class WriteReviewModel {Rx<List<WritereviewItemModel>> writereviewItemList = Rx([WritereviewItemModel(rectangle:ImageConstant.imgRectangle92.obs),WritereviewItemModel(rectangle:ImageConstant.imgRectangle87.obs),WritereviewItemModel(rectangle:ImageConstant.imgRectangle88.obs)]);

 }
