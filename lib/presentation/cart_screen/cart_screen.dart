import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:coffee_app/presentation/cart_screen/models/cartItems.dart';
import 'package:coffee_app/presentation/cart_screen/models/firestoreservice.dart';
import 'package:coffee_app/presentation/home_screen/controller/home_controller.dart';
import 'package:coffee_app/presentation/order_success_screen/services/c1.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:coffee_app/core/app_export.dart';
import 'package:coffee_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:coffee_app/widgets/app_bar/appbar_subtitle_three.dart';
import 'package:coffee_app/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:coffee_app/widgets/app_bar/custom_app_bar.dart';
import 'package:coffee_app/widgets/custom_elevated_button.dart';
import 'controller/cart_controller.dart';
import 'models/userprofile4_item_model.dart';
import 'widgets/userprofile4_item_widget.dart';

class CartScreen extends GetWidget<CartController> {
           final CartController controller = Get.find();
  final item = Get.arguments;
   dynamic item1;
   FirebaseAuth _auth=FirebaseAuth.instance;
   CartScreen({Key? key}) : super(key: key);
   final FirestoreService _firestoreService = FirestoreService();
  cart_controller cart_con=Get.put(cart_controller(),permanent: true);
     home_ControllerIme home_cont = Get.put(home_ControllerIme(),permanent: true);
 final CartController1 cartController = Get.put<CartController1>(cart_controller());
     
  @override
  Widget build(BuildContext context) {

    
    return   //  item['uid'].toString()==_auth.currentUser!.uid.toString()?
     SafeArea(
         
        child: 
    Scaffold(
            appBar: _buildAppBar(),
            body:   SingleChildScrollView(
              child:  Container(
                  width: double.maxFinite,
                  padding: EdgeInsets.symmetric(horizontal: 23.h, vertical: 9.v),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        _buildUserProfile(),
                        SizedBox(height: 22.v),
                        
                         Padding(
                            padding: EdgeInsets.only(left: 1.h),
                            child: Text("lbl_order_summary".tr,
                                style: CustomTextStyles.headlineSmallBlack900_2)),
                        SizedBox(height: 6.v),
                        Padding(
                            padding: EdgeInsets.symmetric(horizontal: 1.h),
                            child:
                             _buildVat(
                                vatText: "lbl_sub_total".tr,
                                priceText:
                                "lbl_7_20".tr
                              
                                )
                                ),
                        SizedBox(height: 10.v),
                        Padding(
                            padding: EdgeInsets.symmetric(horizontal: 1.h),
                            child: _buildVat(
                                vatText: "lbl_vat".tr, priceText: "lbl_0_50".tr)),
                        SizedBox(height: 19.v),
                        _buildThirtyTwo(),
                        SizedBox(height: 29.v),
                        _buildTotal(),
                        SizedBox(height: 1.v)
                      ]
                      
                      
                    ),
                 
                    
                      ),
                      
                      
            ),
            bottomNavigationBar: _buildPlaceOrder()
            )
            );
            ;//:Container();
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    
    return CustomAppBar(
        leadingWidth: 52.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeftOnprimary,
            margin: EdgeInsets.only(left: 25.h, top: 66.v, bottom: 20.v),
            onTap: () {
              onTapArrowLeft();
            }),
        centerTitle: true,
        title: AppbarSubtitleTwo(
            text: "lbl_my_cart".tr,
            margin: EdgeInsets.only(top: 62.v, bottom: 7.v)),
        actions: [
          AppbarSubtitleThree(
              text: "lbl_edit".tr,
              margin: EdgeInsets.fromLTRB(24.h, 64.v, 24.h, 13.v))
        ],
        styleType: Style.bgShadow);
  }

  /// Section Widget
  Widget _buildUserProfile() {

    CollectionReference Cart = FirebaseFirestore.instance.collection('Cart');
    return 
   // Obx(() =>

    // GetBuilder<cart_controller>(
      
    //   builder: (context) 
      // {
        // return
          StreamBuilder(
          stream:Cart.snapshots()  ,
            builder: (BuildContext context, AsyncSnapshot snapshot) {
               dynamic data=snapshot.data!;
                              if (snapshot.hasError) {
          return Center(child: Text("Something went wrong"));
                              }

                   if(snapshot.connectionState == ConnectionState.waiting){
                 return Center(
                  child: CircularProgressIndicator(),
                 ) ;  };
              return ListView.separated(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                separatorBuilder: (BuildContext context,  int index) {
             
                  return 
                 item1['isSale'] == false && item1['uid'] == _auth.currentUser!.uid.toString()?  
                  Padding(
                      padding: EdgeInsets.symmetric(vertical: 5.0.v),
                      child: SizedBox(
                          width: 381.h,
                          child: Divider(
                              height: 1.v,
                              thickness: 1.v,
                              color: appTheme.black900.withOpacity(0.25)))
                              )
                              :Container();
                              
                },
                itemCount://controller.products.length,
                snapshot.data.docs.length,
                //controller.cartModelObj.value.userprofile4ItemList.value.length,
                   // controller.cartModelObj.value.userprofile4ItemList.value.length,
                itemBuilder: ( context, index) {
                 //  dynamic 
                  item1=data.docs[index];
// item1=controller.products[index];
               
                 // Userprofile4ItemModel model =controller.cartModelObj.value.userprofile4ItemList.value[index];
                 //CartItem cartItem = controller.cartModelObj.value.userprofile4ItemList.value[index];
                  return item1['isSale'] == false && item1['uid'] == _auth.currentUser!.uid.toString()? 
                   Userprofile4ItemWidget(item:item1,
                /**
                 *   controller: controller,
                product: controller.products.keys.toList()[index],
                quantity: controller.products.values.toList()[index],
                index: index, 
                 */
                   )
                   :Container();
                  
                 // cart_controller.UserWidge();
                }
                //)
                
                );
            }
         // )
          );
    //   }
    // );
  }

  /// Section Widget
  Widget _buildThirtyTwo() {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 1.h),
        padding: EdgeInsets.symmetric(horizontal: 8.h, vertical: 13.v),
        decoration: AppDecoration.outlineBlack9001
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Padding(
              padding: EdgeInsets.only(left: 22.h, top: 7.v, bottom: 2.v),
              child: Text("lbl_coupon_here".tr,
                  style: CustomTextStyles.titleLargeBlack900)),
          CustomElevatedButton(
              height: 40.v,
              width: 108.h,
              text: "lbl_apply".tr,
              buttonStyle: CustomButtonStyles.fillPrimaryTL20,
              buttonTextStyle: CustomTextStyles.titleMediumOnPrimary)
        ]));
  }

  /// Section Widget
  Widget _buildTotal() {
    return 
    Padding(
        padding: EdgeInsets.only(right: 1.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text("lbl_total".tr, style: theme.textTheme.headlineLarge),
          Text("lbl_7_70".tr, style: theme.textTheme.headlineLarge)
        ]));
  }

  /// Section Widget
  Widget _buildPlaceOrder() {
     FirebaseAuth _auth=FirebaseAuth.instance;
    String re=_auth.currentUser!.email.toString();
    return 


    
    
      CustomElevatedButton(
          text: "lbl_place_order".tr,
     margin: EdgeInsets.only(left: 24.0, right: 23.0, bottom: 34.0),
        onPressed: () async {
        //  Get.toNamed(AppRoutes.checkoutOneTabContainerScreen);
                 
  try {
    String res = await c1().uploadOrder(
      productId: item['productId'], 
    productName: item['productName'].toString(),
     salePrice: item['salePrice'].toString(),
      fullPrice: item['fullPrice'].toString(), 
      createdAt: '',
       updatedAt: '',
       categoryName:item['categoryName'].toString(), 
       deliveryTime:item['deliveryTime'].toString(),
       productTotalPrice:5, 
       productImages:item['productImages'].toString(), 
       uid:_auth.currentUser!.uid.toString(),
       isSale:true, size: [], ice: [], sugar: [],
      // item1['uId'].toString(),
       
       );
       Get.toNamed(AppRoutes.checkoutOneTabContainerScreen);
    // Handle success response if needed
  } catch (e) {
    // Handle any errors or exceptions that occur during upload
    print("Error uploading data: $e");
  }

       
      
        },
      /**
       *     async {
  try {
    String res = await c1().uploadOrder(productId: item['productName'], 
    productName: item['productName'].toString(),
     salePrice: item['salePrice:'].toString(),
      fullPrice: item['fullPrice'].toString(), 
      createdAt: '',
       updatedAt: '', productTotalPrice: 5.5,
       
       );
    // Handle success response if needed
  } catch (e) {
    // Handle any errors or exceptions that occur during upload
    print("Error uploading data: $e");
  }

       
      
        }, 
       */
        
        
          );
  
        
  }

  /// Common widget
  Widget _buildVat({
    required String vatText,
    required String priceText,
  }) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Text(vatText,
          style:
              theme.textTheme.titleLarge!.copyWith(color: appTheme.black900)),
      Text(priceText,
          style: theme.textTheme.titleLarge!.copyWith(color: appTheme.black900))
    ]);
    
  }

    Future<void> _saveCartItemsToFirestore() async {
    try {
      // Convert your CartItem object to a map
      Map<String, dynamic> cartItemData = {
        'productId': item.productId,
        'productName': item.productName,
        // Add other properties as needed
      };
      await _firestoreService.addCartItem(cartItemData);
      // Optionally, you can clear the cart or show a success message here
    } catch (e) {
      // Handle errors here
      print('Error saving cart items: $e');
      // Show an error message to the user
    }
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
      cart_controller().gotoback();
  }

  
}
