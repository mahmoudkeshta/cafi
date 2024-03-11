import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:coffee_app/presentation/order_success_screen/utils/storage.dart';
import 'package:coffee_app/presentation/order_success_screen/models/order_success_model.dart';

import 'dart:typed_data';

import 'package:uuid/uuid.dart';

class cloudMethods {
  CollectionReference order = FirebaseFirestore.instance.collection('order');

  uploadOrder({
    //required String productId,
    // required String categoryId,
    required String productName,
    required String categoryName,
    required String uid,
    required String salePrice,
    String? fullPrice,
    String? productImages,
    required String deliveryTime,
    bool? isSale,
    required String productDescription,
    dynamic? createdAt,
    dynamic? updatedAt,
    required String Discount,
    String? profilrpic,
    required Uint8List file,
  }) async {
    String res = "some Error";
//String productImages=await StorageMethods().uploadImageToStorage(file);
    try {
      String productId = Uuid().v1();
      String categoryId = Uuid().v1();
      String productImages = await StorageMethods().uploadImageToStorage(file);
      ProductModel productModel = await ProductModel(
          productId: productId,
          categoryId: categoryId,
          productName: productName,
          categoryName: categoryName,
          salePrice: salePrice,
          fullPrice: "",
          productImages: productImages,
          profilrpic: profilrpic ?? "",
          deliveryTime: deliveryTime,
          isSale: false,
          productDescription: productDescription,
          createdAt: DateTime.now(),
          updatedAt: DateTime.now(),
          Discount: Discount,
          uid: uid);
      order.doc(productId).set(productModel.toJson());
      res = "Done";
    } catch (e) {
      res = e.toString();
    }
    return res;
  }
}
