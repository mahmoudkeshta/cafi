import 'package:flutter/material.dart';
import 'package:coffee_app/core/app_export.dart';
import '../controller/reward_controller.dart';
import '../models/reward_item_model.dart';

// ignore: must_be_immutable
class RewardItemWidget extends StatelessWidget {
  RewardItemWidget(
    this.rewardItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  RewardItemModel rewardItemModelObj;

  var controller = Get.find<RewardController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Obx(
                () => CustomImageView(
                  imagePath: rewardItemModelObj.referFirstFriend!.value,
                  height: 60.adaptSize,
                  width: 60.adaptSize,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 20.h,
                  top: 5.v,
                  bottom: 5.v,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Obx(
                      () => Text(
                        rewardItemModelObj.referFirstFriend1!.value,
                        style: theme.textTheme.bodyLarge,
                      ),
                    ),
                    SizedBox(height: 4.v),
                    Obx(
                      () => Text(
                        rewardItemModelObj.inviteYourFirst!.value,
                        style: CustomTextStyles.bodyMediumBlack900_1,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
          width: 46.h,
          margin: EdgeInsets.only(
            left: 49.h,
            top: 3.v,
            bottom: 27.v,
          ),
          padding: EdgeInsets.symmetric(
            horizontal: 7.h,
            vertical: 2.v,
          ),
          decoration: AppDecoration.yellow.copyWith(
            borderRadius: BorderRadiusStyle.circleBorder7,
          ),
          child: Obx(
            () => Text(
              rewardItemModelObj.widget!.value,
              style: theme.textTheme.bodyLarge,
            ),
          ),
        ),
      ],
    );
  }
}
