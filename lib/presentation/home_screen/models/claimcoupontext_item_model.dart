import '../../../core/app_export.dart';/// This class is used in the [claimcoupontext_item_widget] screen.
class ClaimcoupontextItemModel
{ClaimcoupontextItemModel({this.claimCouponText, this.freeAmountText, this.id, })
{ claimCouponText = claimCouponText  ?? Rx("Claim Coupon");freeAmountText = freeAmountText  ?? Rx("10 20 30 Free");id = id  ?? Rx(""); }

Rx<String>? claimCouponText;

Rx<String>? freeAmountText;

Rx<String>? id;

 }
