import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:coffee_app/presentation/notification_screen/binding/notification_binding.dart';
import 'package:coffee_app/presentation/notification_screen/notification_screen.dart';
import 'package:coffee_app/presentation/order_success_screen/models/order.dart';
import 'package:coffee_app/presentation/search_filter_screen/search_filter_screen.dart';
import 'package:coffee_app/presentation/search_filter_screen/widgets/productcard_item_widget.dart';
import 'package:coffee_app/presentation/search_items_screen/binding/search_items_binding.dart';
import 'package:coffee_app/presentation/search_items_screen/search_items_screen.dart';
import 'package:coffee_app/presentation/sign_up_screen/models/sign_up_model.dart';
import 'package:coffee_app/presentation/sign_up_screen/models/sign_up_model.dart';
import 'package:coffee_app/presentation/sign_up_screen/services/auth.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_statusbarcolor_ns/flutter_statusbarcolor_ns.dart';

import '../sign_up_screen/models/sign_up_model.dart';
import 'models/off_item_model.dart';
import 'models/menu_item_model.dart';
import 'widgets/off_item_widget.dart';
import 'package:flutter/material.dart';
import 'models/widget_item_model.dart';
import 'widgets/menu_item_widget.dart';
import 'controller/home_controller.dart';
import 'models/dynamictext_item_model.dart';
import 'models/userprofile1_item_model.dart';
import 'widgets/dynamictext_item_widget.dart';
import 'widgets/userprofile1_item_widget.dart';
import 'models/claimcoupontext_item_model.dart';
import 'package:coffee_app/core/app_export.dart';
import 'widgets/claimcoupontext_item_widget.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:coffee_app/widgets/custom_bottom_bar.dart';
import 'package:coffee_app/widgets/app_bar/custom_app_bar.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:coffee_app/widgets/app_bar/appbar_subtitle_five.dart';
import 'package:coffee_app/widgets/app_bar/appbar_subtitle_seven.dart';
import 'package:coffee_app/widgets/app_bar/appbar_trailing_image.dart';
import 'package:coffee_app/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:coffee_app/presentation/cafe_following_page/cafe_following_page.dart';

import 'widgets/widget_item_widget.dart';

class HomeScreen extends GetWidget<HomeController> {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    home_ControllerIme home_cont = Get.put(home_ControllerIme());
   
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: SizedBox(
                width: double.maxFinite,
                child: Column(
                    children: [SizedBox(height: 19.v), _buildScrollView()])),
            bottomNavigationBar: _buildBottomBar()));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {


     FirebaseAuth _auth=FirebaseAuth.instance;
     CollectionReference order = FirebaseFirestore.instance.collection('order');
     
    return CustomAppBar(
      
        height: 95.v,//112
        leadingWidth: 73.h,
        leading:
         AppbarLeadingIconbutton(
            imagePath: ImageConstant.imgClosePrimary,
            margin: EdgeInsets.only(left: 24.h, top: 52.v, bottom: 11.v),
            onTap: () {
              
              home_ControllerIme().goToProfile();
            }),
        title:
         Padding(
            padding: EdgeInsets.only(left: 21.h, top: 52.v, bottom: 14.v),
            child: Column(children: [
              AppbarSubtitleSeven(
                  text: "lbl_welcome".tr, margin: EdgeInsets.only(right: 51.h)
                  ),
              GestureDetector(
                child: AppbarSubtitleFive(
                 // text: "lbl_mr_yev_yev".tr),
                 text:_auth.currentUser!.email.toString())

                
               
              )
            ])),
        actions: [
          
            GestureDetector(
              child: AppbarTrailingImage(
                onTap: (){
                 home_ControllerIme().gotoSearch();
                },
                  imagePath: ImageConstant.imgSearchOnprimary,
                  margin: EdgeInsets.fromLTRB(17.h, 61.v, 14.h, 3.v)),
            ),
                
          
              
          Container(
              height: 36.160004.v,
              width: 35.h,
              margin: EdgeInsets.only(left: 30.h, top: 61.v, right: 31.h),
              child: Stack(alignment: Alignment.bottomRight, children: [
                CustomImageView(
                  onTap: () {
                    Get.to(NotificationScreen(),binding: NotificationBinding());
                  },
                    imagePath: ImageConstant.imgVector,
                    height: 32.v,
                    width: 28.h,
                    alignment: Alignment.topLeft,
                    margin: EdgeInsets.only(right: 7.h, bottom: 4.v)),
                    
                Align(
                    alignment: Alignment.bottomRight,
                    child: Padding(
                        padding:
                            EdgeInsets.only(left: 22.h, top: 16.v, right: 4.h),
                        child: Text("lbl_6".tr,
                            style: CustomTextStyles.labelLargeBlack900))),
                Align(
                    alignment: Alignment.bottomRight,
                    child: Container(
                        height: 16.adaptSize,
                        width: 16.adaptSize,
                        margin:
                            EdgeInsets.only(left: 19.h, top: 18.v, bottom: 2.v),
                        decoration: BoxDecoration(
                            color: appTheme.amberA400,
                            borderRadius: BorderRadius.circular(8.h))))
              ]))
        ],
        styleType: Style.bgShadow);
  }

  /// Section Widget
  Widget _buildWidget() {
    return Obx(() => CarouselSlider.builder(
        options: CarouselOptions(
            height: 150.v,
            initialPage: 0,
            autoPlay: true,
            viewportFraction: 2.2,
            enableInfiniteScroll: false,
            scrollDirection: Axis.horizontal,
            onPageChanged: (index, reason) {
              controller.sliderIndex.value = index;
            }),
        itemCount: controller.homeModelObj.value.widgetItemList.value.length,
        itemBuilder: (context, index, realIndex) {
          WidgetItemModel model =
              controller.homeModelObj.value.widgetItemList.value[index];
          return WidgetItemWidget(model);
        }));
  }

  /// Section Widget
  ///
  ///
  ///
  Widget _buildScrollView() {
    home_ControllerIme home_controllerIme = Get.put(home_ControllerIme());
    CollectionReference order = FirebaseFirestore.instance.collection('order');
    CollectionReference users = FirebaseFirestore.instance.collection('users');

    return Expanded(
        child: SingleChildScrollView(
            child: Column(children: [
      _buildWidget(),
      SizedBox(height: 10.v),
      Obx(() => SizedBox(
          height: 10.v,
          child: AnimatedSmoothIndicator(
              activeIndex: controller.sliderIndex.value,
              count: controller.homeModelObj.value.widgetItemList.value.length,
              axisDirection: Axis.horizontal,
              effect: ScrollingDotsEffect(
                  spacing: 10,
                  activeDotColor: appTheme.amberA400,
                  dotColor: appTheme.amberA400.withOpacity(0.49),
                  dotHeight: 10.v,
                  dotWidth: 10.h)))),
      SizedBox(height: 22.v),
      Align(
          alignment: Alignment.centerLeft,
          child: Padding(
              padding: EdgeInsets.only(left: 24.h),
              child: Text("lbl_categories".tr,
                  style: CustomTextStyles.headlineSmallBlack900_2))),
      SizedBox(
          height: 111.v,
          child: Obx(() => ListView.separated(
              padding: EdgeInsets.symmetric(horizontal: 24.h),
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, index) {
                return SizedBox(width: 20.h);
              },
              itemCount: controller
                  .homeModelObj.value.dynamictextItemList.value.length,
              itemBuilder: (context, index) {
                DynamictextItemModel model = controller
                    .homeModelObj.value.dynamictextItemList.value[index];
                return DynamictextItemWidget(model);
              }))),
      SizedBox(height: 12.v),
      Align(
          alignment: Alignment.centerLeft,
          child: Padding(
              padding: EdgeInsets.only(left: 24.h),
              child: Text("lbl_promotion".tr,
                  style: CustomTextStyles.headlineSmallBlack900_2))),
      SizedBox(height: 10.v),
      
            Align(
        alignment: Alignment.centerRight,
      
          child: SizedBox(
              height: 136.v,
              child: 
             // Obx(() => 
             StreamBuilder(
              stream:order.snapshots()  ,
                builder: (BuildContext context, AsyncSnapshot snapshot) {
                  dynamic data=snapshot.data!;
                      if (snapshot.hasError) {
          return Center(child: Text("Something went wrong"));
                              }

                   if(snapshot.connectionState == ConnectionState.waiting){
                 return Center(
                  child: CircularProgressIndicator(),
                 ) ;  };
                  return 
                     ListView.separated(
                        padding: EdgeInsets.only(left: 24.h),
                        scrollDirection: Axis.horizontal,
                        separatorBuilder: (context, index) {
                          return SizedBox(width: 10.h);
                        },
                        itemCount:snapshot.data.docs.length,
                            //controller.homeModelObj.value.offItemList.value.length,
                        itemBuilder: (context, index) {
                         /**
                          *  OffItemModel model =
                              controller.homeModelObj.value.offItemList.value[index];
                          */
                          dynamic item=data.docs[index];
                        
                          return OffItemWidget(item:item);
                        
                          
                        });
                       
                  
                }
              )
              //)
              ),
         
        
      ), 
       

    


      SizedBox(height: 21.v),
      Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.h),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            GestureDetector(
              child: Text(
                "lbl_shop".tr,
                style: CustomTextStyles.headlineSmallBlack900_2,
              ),
              onTap: () {
                home_ControllerIme().goToshop();
              },
            ),
            GestureDetector(
              child: Padding(
                  padding: EdgeInsets.only(top: 13.v),
                  child: Text("lbl_see_all".tr,
                      style: CustomTextStyles.bodyLargeIndigoA700)),
              onTap: () {
               // home_controllerIme.goToshop();
              Get.to(AddProductPage());
              },
            ),
          ])),
      SizedBox(height: 16.v),
      Align(
          alignment: Alignment.centerRight,
          child: Padding(
              padding: EdgeInsets.only(left: 10.h),
              child:
             //  Obx(() =>
               StreamBuilder(
                stream: users.snapshots(),
                 builder: (BuildContext context, AsyncSnapshot snapshot)  {
                   if (snapshot.hasError) {
          return Center(child: Text("Something went wrong"));
                              }

                   if(snapshot.connectionState == ConnectionState.waiting){
                       return Center(
                  child: CircularProgressIndicator(),
                 ) ; 

                   }
                    dynamic data = snapshot.data! as dynamic;
                   return GridView.builder(
                      shrinkWrap: true,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          mainAxisExtent: 125.v,
                          crossAxisCount: 2,
                          mainAxisSpacing: 25.h,
                          crossAxisSpacing: 5.h),
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: 4,
                      //controller .homeModelObj.value.userprofile1ItemList.value.length,
                      itemBuilder: (context, index) {
                        Userprofile1ItemModel model = controller
                            .homeModelObj.value.userprofile1ItemList.value[index];
                            dynamic item= data.docs[index];
                       return  item['isAdmin'] == true ? Userprofile1ItemWidget(item :item):Text("");
                      });
                 }
               )
               //)
               )),
      SizedBox(height: 20.v),
      Divider(
          color: appTheme.black900.withOpacity(0.25),
          indent: 25.h,
          endIndent: 24.h),
      SizedBox(height: 19.v),
      SizedBox(
          height: 80.v,
          child: Obx(() => ListView.separated(
              padding: EdgeInsets.symmetric(horizontal: 34.h),
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, index) {
                return SizedBox(
                    width: 160.0.h,
                    child: Divider(
                        height: 2.v,
                        thickness: 2.v,
                        color: theme.colorScheme.onPrimary.withOpacity(1),
                        indent: 10.0.h,
                        endIndent: 10.0.h));
              },
              itemCount: controller
                  .homeModelObj.value.claimcoupontextItemList.value.length,
              itemBuilder: (context, index) {
                ClaimcoupontextItemModel model = controller
                    .homeModelObj.value.claimcoupontextItemList.value[index];
                return ClaimcoupontextItemWidget(model);
              }))),
      SizedBox(height: 20.v),
      Divider(
          color: appTheme.black900.withOpacity(0.25),
          indent: 24.h,
          endIndent: 22.h),
      SizedBox(height: 18.v),
      Align(
          alignment: Alignment.centerLeft,
          child: Padding(
              padding: EdgeInsets.only(left: 24.h),
              child: Text("lbl_coffee".tr,
                  style: CustomTextStyles.headlineSmallBlack900_2))),
      SizedBox(height: 10.v),
      Padding(
          padding: EdgeInsets.symmetric(horizontal: 23.h),
          child: 
          //Obx(() =>
          StreamBuilder(
            stream:order.snapshots()  ,
             builder:  (BuildContext context, AsyncSnapshot snapshot)  {
              
            if (snapshot.hasError) {
          return Center(child: Text("Something went wrong"));
                              }

                   if(snapshot.connectionState == ConnectionState.waiting){
                       return Center(
                  child: CircularProgressIndicator(),
                 ) ; 

                   }
                    dynamic data = snapshot.data! as dynamic;


               return GridView.builder(
                
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisExtent: 249.v,
                      crossAxisCount: 2,
                      mainAxisSpacing: 20.h,
                      crossAxisSpacing: 20.h),
                  physics: NeverScrollableScrollPhysics(),
                  itemCount:data.docs.length,
                  itemBuilder: (context, index) {
                     dynamic item= data.docs[index];
                     // controller.homeModelObj.value.menuItemList.value.length,
                /**
                 *   itemBuilder: (context, index) {
                    MenuItemModel model =
                        controller.homeModelObj.value.menuItemList.value[index];
                    return MenuItemWidget(model);
                 */
                      
return MenuItemWidget(item:item);

                 
                  },
                  );
                  }
                 
             
           )),
              //),
      SizedBox(height: 40.v),
      CustomImageView(
          imagePath: ImageConstant.imgClosePrimary65x65,
          height: 65.adaptSize,
          width: 65.adaptSize),
      SizedBox(height: 2.v),
      Text("lbl_loading".tr, style: CustomTextStyles.titleMediumBlack900_1)
    ])));
  }

  /// Section Widget
  Widget _buildBottomBar() {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Get.toNamed(getCurrentRoute(type), id: 1);
    });
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return "/";
      case BottomBarEnum.Orders:
        return home_ControllerIme().goToYourOrder();
      case BottomBarEnum.Chat:
        return home_ControllerIme().goToChat();
      case BottomBarEnum.Cart:
        return home_ControllerIme().goToCart();
      case BottomBarEnum.Profile:
        return  home_ControllerIme().goToProfile();
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.cafeFollowingPage:
        return CafeFollowingPage();
      default:
        return DefaultWidget();
    }
  }

  /// Navigates to the previous screen.
  onTapClose() {
    Get.back();
  }
}
