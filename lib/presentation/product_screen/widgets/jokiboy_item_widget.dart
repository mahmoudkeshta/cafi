import 'package:flutter/material.dart';
import 'package:coffee_app/core/app_export.dart';
import 'package:coffee_app/widgets/custom_rating_bar.dart';
import '../controller/product_controller.dart';
import '../models/jokiboy_item_model.dart';

// ignore: must_be_immutable
class JokiboyItemWidget extends StatelessWidget {
  JokiboyItemWidget(
    this.jokiboyItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  JokiboyItemModel jokiboyItemModelObj;

  var controller = Get.find<ProductController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 28.h,
        vertical: 17.v,
      ),
      decoration: AppDecoration.fillBlack9002.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Obx(
            () => CustomImageView(
              imagePath: jokiboyItemModelObj.jokiboy!.value,
              height: 60.adaptSize,
              width: 60.adaptSize,
              radius: BorderRadius.circular(
                30.h,
              ),
              margin: EdgeInsets.only(
                top: 2.v,
                bottom: 38.v,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 20.h,
              top: 2.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Obx(
                  () => Text(
                    jokiboyItemModelObj.jokiBoy!.value,
                    style: theme.textTheme.titleLarge,
                  ),
                ),
                SizedBox(height: 6.v),
                SizedBox(
                  width: 193.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          top: 1.v,
                          bottom: 6.v,
                        ),
                        child: CustomRatingBar(
                          ignoreGestures: true,
                          initialRating: 0,
                          itemSize: 16,
                        ),
                      ),
                      Obx(
                        () => Text(
                          jokiboyItemModelObj.ratingCounter!.value,
                          style: CustomTextStyles.bodyLargeAmberA400,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 6.v),
                Obx(
                  () => Text(
                    jokiboyItemModelObj.yummmy!.value,
                    style: theme.textTheme.titleLarge,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
