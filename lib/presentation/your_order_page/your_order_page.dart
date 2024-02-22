import 'package:flutter/material.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:coffee_app/core/app_export.dart';
import '../your_order_page/widgets/pendingorders_item_widget.dart';
import 'controller/your_order_controller.dart';
import 'models/pendingorders_item_model.dart';
import 'models/your_order_model.dart';

// ignore: must_be_immutable
class YourOrderPage extends StatelessWidget {
  YourOrderPage({Key? key})
      : super(
          key: key,
        );

  YourOrderController controller =
      Get.put(YourOrderController(YourOrderModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 22.v),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.h),
                  child: Column(
                    children: [
                      _buildPendingOrders(),
                      SizedBox(height: 20.v),
                      CustomImageView(
                        imagePath: ImageConstant.imgClosePrimary65x65,
                        height: 65.adaptSize,
                        width: 65.adaptSize,
                      ),
                      SizedBox(height: 2.v),
                      Text(
                        "lbl_loading".tr,
                        style: theme.textTheme.titleMedium,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildPendingOrders() {
    return Expanded(
      child: Obx(
        () => GroupedListView<PendingordersItemModel, String>(
          shrinkWrap: true,
          stickyHeaderBackgroundColor: Colors.transparent,
          elements:
              controller.yourOrderModelObj.value.pendingordersItemList.value,
          groupBy: (element) => element.groupBy!.value,
          sort: false,
          groupSeparatorBuilder: (String value) {
            return Padding(
              padding: EdgeInsets.only(
                top: 19.v,
                bottom: 10.v,
              ),
              child: Text(
                value,
                style: CustomTextStyles.headlineSmallBlack900Medium.copyWith(
                  color: appTheme.black900,
                ),
              ),
            );
          },
          itemBuilder: (context, model) {
            return PendingordersItemWidget(
              model,
            );
          },
          separator: SizedBox(
            height: 10.v,
          ),
        ),
      ),
    );
  }
}
