import 'package:coffee_app/presentation/active_chat_screen/active_chat_screen.dart';
import 'package:coffee_app/presentation/active_chat_screen/binding/active_chat_binding.dart';
import 'package:coffee_app/presentation/chat_screen/models/chat_model.dart';
import 'package:flutter/material.dart';
import 'package:coffee_app/core/app_export.dart';
import '../controller/chat_controller.dart';
import '../models/userprofile_item_model.dart';

// ignore: must_be_immutable
class UserprofileItemWidget extends StatelessWidget {
  final  chatRoom items;
  UserprofileItemWidget(
   // this.userprofileItemModelObj,
     {
      required this.items,
    Key? key,
  }) : super(
       //   key: key,
        );

  //UserprofileItemModel userprofileItemModelObj;

  var controller = Get.find<ChatController>();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      
      child: Align(
        
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          
          children: [
            
            Container(
              height: 70.adaptSize,
              width: 70.adaptSize,
              decoration: AppDecoration.fillPrimaryContainer.copyWith(
                borderRadius: BorderRadiusStyle.circleBorder35,
              ),
              child:
               //Obx(
               // () =>
                 CustomImageView(
               //   imagePath: userprofileItemModelObj.userImage!.value,
                  height: 70.adaptSize,
                  width: 70.adaptSize,
                  radius: BorderRadius.circular(
                    35.h,
                  ),
                  alignment: Alignment.center,
                ),
             // ),
            ),
            Container(
              height: 63.v,
              width: 151.h,
              margin: EdgeInsets.only(
                left: 16.h,
                top: 4.v,
                bottom: 2.v,
              ),
              child: Stack(
                alignment: Alignment.bottomRight,
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 4.h),
                      child: 
                      //Obx(
                     //   () => 
                        Text(
                          " Amazon",
                         // items.id.toString(),
                          //userprofileItemModelObj.companyName!.value,
                          style: CustomTextStyles.headlineSmallBlack900_2,
                        ),
                   //   ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: 
                    //Obx(
                   //   () => 
                      Text(
                         items.lastMessage.toString(),
                        //userprofileItemModelObj.voiceMessage!.value,
                        style: theme.textTheme.titleMedium,
                      ),
                   // ),
                  ),
                 // Obx(
                 //   () =>
                     CustomImageView(
                     // imagePath: userprofileItemModelObj.companyLogo!.value,
                      height: 27.adaptSize,
                      width: 27.adaptSize,
                      alignment: Alignment.bottomLeft,
                      margin: EdgeInsets.only(bottom: 2.v),
                    ),
               //   ),
                ],
              ),
            ),
            Spacer(),
            Padding(
              padding: EdgeInsets.only(
                top: 5.v,
                bottom: 34.v,
              ),
              child:
               //Obx( () =>
                Text(
                     items.lastMessageTime.toString(),
                 // userprofileItemModelObj.time!.value,
                  style: CustomTextStyles.bodyLargeAmberA400,
                ),
              ),
         //   ),
         
          ],
        
        ),
      ),
      onTap: (){

      //  Get.toNamed(AppRoutes.activeChatScreen, arguments: items);
        Get.to(ActiveChatScreen(roomId: items.id!,));
      },
    );
  }
}
