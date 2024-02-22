import 'package:flutter/material.dart';import 'package:coffee_app/core/app_export.dart';import 'package:coffee_app/widgets/app_bar/appbar_leading_image.dart';import 'package:coffee_app/widgets/app_bar/appbar_subtitle_two.dart';import 'package:coffee_app/widgets/app_bar/custom_app_bar.dart';import 'package:coffee_app/widgets/custom_elevated_button.dart';import 'package:coffee_app/widgets/custom_radio_button.dart';import '../buy_gift_card_screen/widgets/widget6_item_widget.dart';import 'controller/buy_gift_card_controller.dart';import 'models/widget6_item_model.dart';class BuyGiftCardScreen extends GetWidget<BuyGiftCardController> {const BuyGiftCardScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 14.h, vertical: 17.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [SizedBox(height: 20.v), Padding(padding: EdgeInsets.only(left: 10.h), child: Text("lbl_cafi_gift_card".tr, style: CustomTextStyles.headlineLargeMedium)), SizedBox(height: 21.v), Padding(padding: EdgeInsets.only(left: 10.h), child: Text("lbl_amount".tr, style: theme.textTheme.bodyLarge)), SizedBox(height: 9.v), _buildWidget(), SizedBox(height: 40.v), Align(alignment: Alignment.center, child: Divider(indent: 10.h, endIndent: 10.h)), SizedBox(height: 21.v), Padding(padding: EdgeInsets.only(left: 10.h), child: Text("lbl_select_payment".tr, style: CustomTextStyles.headlineSmallBlack900Medium)), SizedBox(height: 7.v), _buildSelectPayment(), Spacer(), Align(alignment: Alignment.center, child: Text("msg_agree_return_and".tr, style: CustomTextStyles.titleLargeIndigoA700))])), bottomNavigationBar: _buildBuy())); } 
/// Section Widget
PreferredSizeWidget _buildAppBar() { return CustomAppBar(leadingWidth: 51.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowLeftOnprimary, margin: EdgeInsets.only(left: 24.h, top: 67.v, bottom: 19.v), onTap: () {onTapArrowLeft();}), centerTitle: true, title: AppbarSubtitleTwo(text: "lbl_buy_gift_card".tr, margin: EdgeInsets.only(top: 61.v, bottom: 8.v)), styleType: Style.bgShadow); } 
/// Section Widget
Widget _buildWidget() { return Padding(padding: EdgeInsets.only(left: 10.h), child: Obx(() => Wrap(runSpacing: 10.v, spacing: 10.h, children: List<Widget>.generate(controller.buyGiftCardModelObj.value.widget6ItemList.value.length, (index) {Widget6ItemModel model = controller.buyGiftCardModelObj.value.widget6ItemList.value[index]; return Widget6ItemWidget(model);})))); } 
/// Section Widget
Widget _buildSelectPayment() { return Align(alignment: Alignment.center, child: Padding(padding: EdgeInsets.symmetric(horizontal: 10.h), child: Obx(() => Column(children: [CustomRadioButton(text: "lbl_aba_bank".tr, value: controller.buyGiftCardModelObj.value.radioList.value[0], groupValue: controller.selectPayment.value, padding: EdgeInsets.symmetric(horizontal: 30.h, vertical: 10.v), onChange: (value) {controller.selectPayment.value = value;}), Padding(padding: EdgeInsets.only(top: 10.v), child: CustomRadioButton(text: "lbl_wing_bank".tr, value: controller.buyGiftCardModelObj.value.radioList.value[1], groupValue: controller.selectPayment.value, padding: EdgeInsets.symmetric(horizontal: 30.h, vertical: 10.v), onChange: (value) {controller.selectPayment.value = value;})), Padding(padding: EdgeInsets.only(top: 10.v), child: CustomRadioButton(text: "lbl_acleda_bank".tr, value: controller.buyGiftCardModelObj.value.radioList.value[2], groupValue: controller.selectPayment.value, padding: EdgeInsets.symmetric(horizontal: 30.h, vertical: 10.v), onChange: (value) {controller.selectPayment.value = value;}))])))); } 
/// Section Widget
Widget _buildBuy() { return CustomElevatedButton(text: "lbl_buy".tr, margin: EdgeInsets.only(left: 24.h, right: 23.h, bottom: 34.v)); } 

/// Navigates to the previous screen.
onTapArrowLeft() { Get.back(); } 
 }
