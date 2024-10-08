//import 'dart:js';

import 'dart:ffi';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:coffee_app/presentation/chat_screen/firebase/fire_database.dart';
import 'package:coffee_app/presentation/chat_screen/models/chat_model.dart';
import 'package:coffee_app/widgets/custom_elevated_button.dart';
import 'package:coffee_app/widgets/custom_text_form_field.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:coffee_app/core/app_export.dart';
import 'package:coffee_app/widgets/app_bar/appbar_title.dart';
import 'package:coffee_app/widgets/app_bar/appbar_trailing_image.dart';
import 'package:coffee_app/widgets/app_bar/custom_app_bar.dart';
import 'package:coffee_app/widgets/custom_floating_button.dart';
import 'controller/chat_controller.dart';
import 'models/userprofile_item_model.dart';
import 'models/viewhierarchy_item_model.dart';
import 'widgets/userprofile_item_widget.dart';
import 'widgets/viewhierarchy_item_widget.dart';

// ignore_for_file: must_be_immutable
class ChatScreen extends GetWidget<ChatController> {
  
  ChatScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
             _buildChat(),
             // SizedBox(height: 21.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 23.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 1.h),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgUser,
                                height: 16.v,
                                width: 18.h,
                                margin: EdgeInsets.only(
                                  top: 1.v,
                                  bottom: 6.v,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 10.h),
                                child: Text(
                                  "lbl_all_message".tr,
                                  style: CustomTextStyles.bodyLargeBlack900_3,
                                ),
                              ),
                            ],
                          ),
                        ),
                     //   SizedBox(height: 17.v),
                        Container(
                        //  height: 531.v,
                          width: 381.h,
                          margin: EdgeInsets.only(left: 1.h),
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                           //   _buildMorida(),
                              _buildUserProfile(),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: _buildFloatingActionButton( context),
      ),
    );
  }

  /// Section Widget
  Widget _buildChat() {
    return SizedBox(
      height: 362.v,
      width: double.maxFinite,
      child: Stack(
        
        alignment: Alignment.bottomCenter,
        children: [
          CustomAppBar(
            title: AppbarTitle(
              text: "lbl_chat".tr,
              margin: EdgeInsets.only(
                left: 24.h,
                top: 50.v,
                bottom: 10.v,
              ),
            ),
            actions: [
              AppbarTrailingImage(
                imagePath: ImageConstant.imgSearchOnprimary,
                margin: EdgeInsets.only(
                  left: 24.h,
                  top: 62.v,
                  right: 14.h,
                ),
              ),
              Container(
                height: 8.adaptSize,
                width: 8.adaptSize,
                margin: EdgeInsets.fromLTRB(20.h, 74.v, 14.h, 12.v),
                decoration: BoxDecoration(
                  color: theme.colorScheme.onPrimary.withOpacity(1),
                  borderRadius: BorderRadius.circular(
                    4.h,
                  ),
                ),
              ),
              Container(
                height: 8.adaptSize,
                width: 8.adaptSize,
                margin: EdgeInsets.fromLTRB(2.h, 74.v, 14.h, 12.v),
                decoration: BoxDecoration(
                  color: theme.colorScheme.onPrimary.withOpacity(1),
                  borderRadius: BorderRadius.circular(
                    4.h,
                  ),
                ),
              ),
              Container(
                height: 8.adaptSize,
                width: 8.adaptSize,
                margin: EdgeInsets.fromLTRB(2.h, 74.v, 38.h, 12.v),
                decoration: BoxDecoration(
                  color: theme.colorScheme.onPrimary.withOpacity(1),
                  borderRadius: BorderRadius.circular(
                    4.h,
                  ),
                ),
              ),
            ],
           styleType: Style.bgFill,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(top: 106.v),
              child: Obx(
                () => ListView.separated(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  separatorBuilder: (
                    context,
                    index,
                  ) {
                    return Padding(
                      padding: EdgeInsets.symmetric(vertical: 0.5.v),
                      child: SizedBox(
                        width: 380.h,
                        child: Divider(
                          height: 1.v,
                          thickness: 1.v,
                        color: appTheme.black900.withOpacity(0.1),
                        ),
                      ),
                    );
                  },
                  itemCount: controller
                      .chatModelObj.value.viewhierarchyItemList.value.length,
                  itemBuilder: (context, index) {
                    ViewhierarchyItemModel model = controller
                        .chatModelObj.value.viewhierarchyItemList.value[index];
                    return ViewhierarchyItemWidget(
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
  Widget _buildMorida() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: EdgeInsets.only(bottom: 21.v),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgEllipse56,
              height: 70.adaptSize,
              width: 70.adaptSize,
              radius: BorderRadius.circular(
                35.h,
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(
                  left: 20.h,
                  top: 3.v,
                  bottom: 4.v,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "lbl_morida".tr,
                          style: CustomTextStyles.headlineSmallBlack900_2,
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: 7.v,
                            bottom: 6.v,
                          ),
                          child: Text(
                            "lbl_10_12pm".tr,
                            style: CustomTextStyles.bodyLargeAmberA400,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      "msg_welcome_to_morida".tr,
                      style: CustomTextStyles.bodyLargeBlack900_3,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildUserProfile() {
  
    return Align(
      alignment: Alignment.center,
      child: //Obx(
       // () =>
         StreamBuilder(
           stream: FirebaseFirestore.instance.
           collection("rooms")
           .where('members',arrayContains:FirebaseAuth.instance.currentUser!.uid)
           //.orderBy('lastMessageTime',descending: true)
           .snapshots(),
           
           builder: (context,AsyncSnapshot<QuerySnapshot> snapshot) {
    
            if(snapshot.hasData){
List<chatRoom> items = (snapshot.data!.docs as List<dynamic>).map((e) =>
 chatRoom.fromJson(e.data() as Map<String, dynamic>)).toList()..sort((a,b)=>
  b.lastMessageTime!.compareTo(a.lastMessageTime!));

             return ListView.separated(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (
                context,
                index,
              ) {
                return Padding(
                  padding: EdgeInsets.symmetric(vertical: 10.0.v),
                  child: SizedBox(
                    width: 380.h,
                    child: Divider(
                      height: 1.v,
                      thickness: 1.v,
                      color: appTheme.black900.withOpacity(0.1),
                    ),
                  ),
                );
              },
              itemCount: items.length,
             //    controller.chatModelObj.value.userprofileItemList.value.length,
              itemBuilder: (context, index) {
/**
 *                 UserprofileItemModel model =
                    controller.chatModelObj.value.userprofileItemList.value[index];
 */
                return 
              /**
               *   ListTile(
                  title: Text(items[index].lastMessageTime.toString()),
                );
               */
                UserprofileItemWidget(items:items[index]);
              }
                     );
             
            } else{

              return Center(child: CircularProgressIndicator(),);
            }
          
           }
           
         ),
     // ),
    );
  }

  /// Section Widget
// Define the controller outside of the widget to maintain its state.
TextEditingController text = TextEditingController();


Widget _buildFloatingActionButton(BuildContext context) {
  FirebaseAuth _auth = FirebaseAuth.instance;

  return CustomFloatingButton(
    height: 80,
    width: 80,
    backgroundColor: theme.colorScheme.primary,
    child: CustomImageView(
      imagePath: ImageConstant.imgForward,
      onTap: () {
        // Show the bottom sheet using the proper context.
        showModalBottomSheet(
          context: context,
          builder: (BuildContext context) {
            // Calculate keyboard height
            double keyboardHeight = MediaQuery.of(context).viewInsets.bottom;

            return SingleChildScrollView(
              padding: EdgeInsets.only(
                bottom: keyboardHeight + MediaQuery.of(context).padding.bottom,
              ),
              child: Container(
                padding: EdgeInsets.all(20),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      children: [Text("Enter Email")],
                    ),
                    CustomTextFormField(
                      controller: text,
                      hintText: "Enter email",
                    ),
                    CustomElevatedButton(
                      text: "create chat",
                      onPressed: () {
                        // Perform actions when the button in the bottom sheet is pressed.
                        // For example, create a chat room here.
                        if(text.text.isNotEmpty){
                         FireData().creatRoom(text.text).then((value) {
                          setState(){
                            text.text="";
                          }
                          Navigator.pop(context);
                         });
                        }
                       
                      //  Navigator.pop(context); // Close the bottom sheet
                      },
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
      height: 40.0.v,
      width: 40.0.h,
    ),
  );
}


  }

