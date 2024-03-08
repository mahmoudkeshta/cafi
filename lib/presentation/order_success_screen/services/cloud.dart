import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:coffee_app/presentation/order_success_screen/models/order_success_model.dart';
import 'package:uuid/uuid.dart';


class cloudMethods{

  CollectionReference order = FirebaseFirestore.instance.collection('order');

uploadOrder({
 //required String productId,
 // required String categoryId,
  required String productName,
  required String categoryName,
  required String salePrice,
  required String fullPrice,
  required List productImages,
  required String deliveryTime,
  required bool isSale,
  required String productDescription,
  required dynamic createdAt,
  required dynamic updatedAt,
  required String Discount,
   String? profilrpic,
})
{
String res = "some Error";
try{
  String productId= Uuid().v1();
  String categoryId= Uuid().v1();
           
ProductModel productModel=ProductModel(productId: productId,
 categoryId: categoryId,
  productName: productName, 
  categoryName: categoryName, 
  salePrice: salePrice,
   fullPrice: fullPrice,
    productImages: [],
    profilrpic:profilrpic ?? "",
     deliveryTime: deliveryTime,
      isSale: isSale, 
      productDescription: productDescription,
       createdAt: DateTime.now(),
        updatedAt: DateTime.now(), 
        Discount: Discount);
   order.doc(productId).set(productModel.toJson());
   res="Done";

}catch(e){
res=e.toString();
}
return res;
}

}