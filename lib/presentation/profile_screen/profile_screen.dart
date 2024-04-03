import 'package:coffee_app/presentation/sign_in_screen/binding/sign_in_binding.dart';
import 'package:coffee_app/presentation/sign_in_screen/sign_in_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'models/profile_item_model.dart';
import 'controller/profile_controller.dart';
import 'package:coffee_app/core/app_export.dart';
import 'package:coffee_app/widgets/custom_icon_button.dart';
import 'package:coffee_app/widgets/app_bar/custom_app_bar.dart';
import 'package:coffee_app/widgets/app_bar/appbar_subtitle_two.dart';

import 'widgets/profile_item_widget.dart';

// ignore_for_file: must_be_immutable
class ProfileScreen extends GetWidget<ProfileController> {
  const ProfileScreen({Key? key})
      : super(
          key: key,
        );
  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    Profile_ControllerIgm profile_controllerIgm =Get.put(Profile_ControllerIgm());
    
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildMyAccount(),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 5.v),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _buildView(),
                        Align(
                          alignment: Alignment.center,
                          child: Divider(
                            indent: 24.h,
                            endIndent: 24.h,
                          ),
                        ),
                        SizedBox(height: 11.v),
                        Padding(
                          padding: EdgeInsets.only(left: 24.h),
                          child: Row(
                            children: [
                              CustomIconButton(
                                height: 45.adaptSize,
                                width: 45.adaptSize,
                                padding: EdgeInsets.all(11.h),
                                child: CustomImageView(
                                  imagePath: ImageConstant.imgLockGray900,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 15.h,
                                  top: 9.v,
                                  bottom: 5.v,
                                ),
                                child: GestureDetector(
                                  child: Text(
                                    "lbl_my_information".tr,
                                    style: CustomTextStyles.titleLargeMedium,
                                  ),
                                    onTap: () {
                                  profile_controllerIgm.goToMyInformation();
                                },
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 13.v),
                        _buildLineTwentyNine(),
                        SizedBox(height: 11.v),
                        Padding(
                          padding: EdgeInsets.only(left: 24.h),
                          child: Row(
                            children: [
                              CustomIconButton(
                                height: 45.adaptSize,
                                width: 45.adaptSize,
                                padding: EdgeInsets.all(12.h),
                                child: CustomImageView(
                                  imagePath: ImageConstant.imgGroup32,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 15.h,
                                  top: 7.v,
                                  bottom: 7.v,
                                ),
                                child: GestureDetector(
                                  child: Text(
                                    "lbl_address".tr,
                                    style: CustomTextStyles.titleLargeMedium,
                                    
                                  ),
                                   onTap: () {
                                  profile_controllerIgm.goToAddress();
                                },
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 13.v),
                        _buildLineTwentyNine(),
                        SizedBox(height: 11.v),
                        Padding(
                          padding: EdgeInsets.only(left: 25.h),
                          child: Row(
                            children: [
                              CustomIconButton(
                                height: 45.adaptSize,
                                width: 45.adaptSize,
                                padding: EdgeInsets.all(12.h),
                                child: CustomImageView(
                                  imagePath: ImageConstant.imgThumbsUpBlack900,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 14.h,
                                  top: 10.v,
                                  bottom: 4.v,
                                ),
                                child: 
                                GestureDetector(
                                  child: Text(
                                    "lbl_payment".tr,
                                    style: CustomTextStyles.titleLargeMedium,
                                  ),
                                    onTap: () {
                                  profile_controllerIgm.goToPayment();
                                },
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 13.v),
                        _buildLineTwentyNine(),
                        SizedBox(height: 19.v),
                        Padding(
                          padding: EdgeInsets.only(left: 25.h),
                          child: Row(
                            children: [
                              CustomIconButton(
                                height: 45.adaptSize,
                                width: 45.adaptSize,
                                padding: EdgeInsets.all(11.h),
                                child: CustomImageView(
                                  imagePath: ImageConstant.imgFavoriteBlack900,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 14.h,
                                  top: 9.v,
                                  bottom: 5.v,
                                ),
                                child: 
                                GestureDetector(
                                  child: Text(
                                    "lbl_my_wistlist".tr,
                                    style: CustomTextStyles.titleLargeMedium,
                                  ),
                                    onTap: () {
                                  profile_controllerIgm.goToMyWistlist();
                                },
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 13.v),
                        _buildLineTwentyNine(),
                        SizedBox(height: 19.v),
                        Padding(
                          padding: EdgeInsets.only(left: 25.h),
                          child: Row(
                            children: [
                              CustomIconButton(
                                height: 45.adaptSize,
                                width: 45.adaptSize,
                                padding: EdgeInsets.all(11.h),
                                child:
                                CustomImageView(
                                  imagePath:
                                      ImageConstant.imgThumbsUpBlack90045x45,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 14.h,
                                  top: 10.v,
                                  bottom: 5.v,
                                ),
                                child: 
                                GestureDetector(
                                  child: Text(
                                    "lbl_cafe_following".tr,
                                    style: CustomTextStyles.titleLargeMedium,
                                  ),
                                    onTap: () {
                                  profile_controllerIgm.goToCafeFollowing();
                                },
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 13.v),
                        _buildLineTwentyNine(),
                        SizedBox(height: 11.v),
                        Padding(
                          padding: EdgeInsets.only(left: 25.h),
                          child: Row(
                            children: [
                              CustomIconButton(
                                height: 45.adaptSize,
                                width: 45.adaptSize,
                                padding: EdgeInsets.all(11.h),
                                child:

                         CustomImageView(
                                  imagePath:
                                      ImageConstant.imgCallBlack900,
                                ),

                                
                        
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 14.h,
                                  top: 7.v,
                                  bottom: 7.v,
                                ),
                                child: 
                                GestureDetector(
                                  child: Text(
                                    "lbl_refund".tr,
                                    style: CustomTextStyles.titleLargeMedium,
                                  
                                  ),
                                      onTap: () {
                                  profile_controllerIgm.goToRefund();
                                },
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 13.v),
                        _buildLineTwentyNine(),
                        SizedBox(height: 11.v),
                        Padding(
                          padding: EdgeInsets.only(left: 24.h),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomIconButton(
                                height: 45.adaptSize,
                                width: 45.adaptSize,
                                padding: EdgeInsets.all(12.h),
                                child: CustomImageView(
                                  imagePath: ImageConstant.imgGroup584,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 15.h,
                                  top: 6.v,
                                  bottom: 8.v,
                                ),
                                child: 
                                GestureDetector(
                                  child: Text(
                                    "lbl_password".tr,
                                    style: CustomTextStyles.titleLargeMedium,
                                  ),
                                    onTap: () {
                                  profile_controllerIgm.goToAboutPassword();
                                },
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 13.v),
                        Align(
                          alignment: Alignment.center,
                          child: Divider(
                            indent: 25.h,
                            endIndent: 23.h,
                          ),
                        ),
                        SizedBox(height: 11.v),
                        Padding(
                          padding: EdgeInsets.only(left: 25.h),
                          child: Row(
                            children: [
                              CustomIconButton(
                                height: 45.adaptSize,
                                width: 45.adaptSize,
                                padding: EdgeInsets.all(12.h),
                                child: CustomImageView(
                                  imagePath: ImageConstant.imgSearch,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 15.h,
                                  top: 10.v,
                                  bottom: 4.v,
                                ),
                                child: 
                                GestureDetector(
                                  child: Text(
                                    "lbl_setting".tr,
                                    style: CustomTextStyles.titleLargeMedium,
                                  ),
                                    onTap: () {
                                  //profile_controllerIgm.got();
                                },
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 13.v),
                        _buildLineTwentyNine(),
                        SizedBox(height: 11.v),
                        Padding(
                          padding: EdgeInsets.only(left: 25.h),
                          child: Row(
                            children: [
                              CustomIconButton(
                                height: 45.adaptSize,
                                width: 45.adaptSize,
                                padding: EdgeInsets.all(10.h),
                                child: CustomImageView(
                                  imagePath: ImageConstant.imgInbox,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 15.h,
                                  top: 10.v,
                                  bottom: 4.v,
                                ),
                                child: 
                                GestureDetector(
                                  child: Text(
                                    "lbl_about_company".tr,
                                    style: CustomTextStyles.titleLargeMedium,
                                  ),
                                      onTap: () {
                                  profile_controllerIgm.goToAboutCompany();
                                },
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 13.v),
                        _buildLineTwentyNine(),
                        SizedBox(height: 11.v),
                        _buildThumbsUp(),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildMyAccount() {
    FirebaseAuth _auth=FirebaseAuth.instance;
    return Container(
      padding: EdgeInsets.symmetric(vertical: 7.v),
      decoration: AppDecoration.pink,
      child: Column(
        children: [
          SizedBox(height: 54.v),
          CustomAppBar(
            height: 41.v,
            centerTitle: true,
            title: AppbarSubtitleTwo(
              text: "lbl_my_account".tr,
            ),
            actions: [
              Container(
                height: 35.adaptSize,
                width: 35.adaptSize,
                margin: EdgeInsets.only(
                  left: 17.h,
                  top: 5.v,
                  right: 17.h,
                ),
                child: Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgVector,
                      height: 35.v,
                      width: 28.h,
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.only(right: 7.h),
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(22.h, 9.v, 4.h, 6.v),
                        child: Text(
                          "lbl_6".tr,
                          style: theme.textTheme.labelLarge,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Container(
                        height: 16.adaptSize,
                        width: 16.adaptSize,
                        margin: EdgeInsets.only(
                          left: 19.h,
                          top: 10.v,
                          bottom: 8.v,
                        ),
                        decoration: BoxDecoration(
                          color: appTheme.amberA400,
                          borderRadius: BorderRadius.circular(
                            8.h,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 13.v),
          SizedBox(
            height: 187.v,
            width: 154.h,//154.h
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                Align(
                  alignment: Alignment.bottomCenter,
                  
                  child: Text(
                   
                    //"lbl_yev_yev".tr,
                    _auth.currentUser!.email.toString(),
                    style: CustomTextStyles.displaySmallOnPrimary,
                     textScaleFactor: 0.50,
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgImage41,
                  height: 128.adaptSize,
                  width: 128.adaptSize,
                  radius: BorderRadius.circular(
                    64.h,
                  ),
                  alignment: Alignment.topCenter,
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgEdit,
                  height: 21.adaptSize,
                  width: 21.adaptSize,
                  alignment: Alignment.bottomRight,
                  margin: EdgeInsets.only(
                    right: 8.h,
                    bottom: 57.v,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildView() {
    return SizedBox(
      height: 126.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              height: 126.v,
              width: double.maxFinite,
              decoration: BoxDecoration(
                color: theme.colorScheme.onPrimary.withOpacity(1),
                boxShadow: [
                  BoxShadow(
                    color: appTheme.black900.withOpacity(0.1),
                    spreadRadius: 2.h,
                    blurRadius: 2.h,
                    offset: Offset(
                      0,
                      2,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: SizedBox(
              height: 125.v,
              child: Obx(
                () => ListView.separated(
                  padding: EdgeInsets.fromLTRB(45.h, 24.v, 45.h, 19.v),
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (
                    context,
                    index,
                  ) {
                    return SizedBox(
                      width: 26.h,
                    );
                  },
                  itemCount: controller
                      .profileModelObj.value.profileItemList.value.length,
                  itemBuilder: (context, index) {
                    ProfileItemModel model = controller
                        .profileModelObj.value.profileItemList.value[index];

                    return ProfileItemWidget(
                      model,
                    );
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildThumbsUp() {
    return Padding(
      padding: EdgeInsets.only(
        left: 25.h,
        right: 43.h,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          CustomIconButton(
            height: 45.adaptSize,
            width: 45.adaptSize,
            padding: EdgeInsets.all(10.h),
            child: CustomImageView(
              imagePath: ImageConstant.imgThumbsUp45x45,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 14.h,
              top: 10.v,
              bottom: 4.v,
            ),
            child:
            GestureDetector(
              child: Text(
                "lbl_sign_out".tr,

                style: CustomTextStyles.titleLargeMedium

              ),
              onTap:() async{
                await FirebaseAuth.instance.signOut();
                Get.offAll(SignInScreen(),binding:SignInBinding());
              } ,
            ),


          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(
              top: 13.v,
              bottom: 7.v,
            ),
            child:
             GestureDetector(
               child:
               Text(
                "lbl_2022_cafi".tr,
                style: CustomTextStyles.bodyLargeBlack900_1,
                         ),
                         onTap:(){
                          Profile_ControllerIgm().goToGiftCard();
                         } ,
             ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildLineTwentyNine() {
    return SizedBox(
      height: 1.v,
      width: 380.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.center,
            child: SizedBox(
              width: 380.h,
              child: Divider(),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: SizedBox(
              width: 380.h,
              child: Divider(),
            ),
          ),
        ],
      ),
    );
  }
}
