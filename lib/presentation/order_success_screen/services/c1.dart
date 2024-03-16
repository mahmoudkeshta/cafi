import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:coffee_app/presentation/cart_screen/models/cartItems.dart';
import 'package:coffee_app/presentation/cart_screen/models/cartItems.dart';
import 'package:uuid/uuid.dart';


class c1 {
  CollectionReference Cart = FirebaseFirestore.instance.collection('Cart');
uploadOrder({
  required String productId,
 String ?categoryId,
  required  String productName,
   String? categoryName,
  required String salePrice,
   required String fullPrice,
   required String productImages,
  String ?deliveryTime,
   bool ?isSale,
   String ?productDescription,
   required dynamic createdAt,
   required dynamic updatedAt,
  required double productTotalPrice,
    required String  uid,
     

  }) async {
    String res = "some Error";
    try {
     String productId = Uuid().v1();
     
 CartItem cartItem = 
  await CartItem(
    productId: productId,
   productName: productName,
   categoryId:"",
   categoryName:"",
   productImages: productImages,
   deliveryTime:"",
   isSale:false,
    salePrice: salePrice, 
    fullPrice: fullPrice,
     createdAt: DateTime.now(),
      updatedAt:DateTime.now(), 
      productTotalPrice:productTotalPrice,
       uid: uid,
        );
            Cart.doc(productId).set(cartItem.toMap());
      res = "Done";
    } catch (e) {
      res = e.toString();
    }
    return res;
  }
}