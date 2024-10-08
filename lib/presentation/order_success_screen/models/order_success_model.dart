

import 'package:cloud_firestore/cloud_firestore.dart';

/// This class defines the variables used in the [order_success_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class OrderSuccessModel { }
class ProductModel {
  final String productId;
  final String uid;
  final String categoryId;
  final String productName;
  final String categoryName;
  final String salePrice;
  final String fullPrice;
  final String productImages;
  final String deliveryTime;
  final bool isSale;
  final String productDescription;
  final dynamic createdAt;
  final dynamic updatedAt;
  final String Discount;
  final String profilrpic;
    final List size;
    final List ice;
    final List sugar;
    

  ProductModel( {
    required this.profilrpic, 
    required this.uid,
    required this.productId,
    required this.categoryId,
    required this.productName,
    required this.categoryName,
    required this.salePrice,
    required this.fullPrice,
    required this.productImages,
    required this.deliveryTime,
    required this.isSale,
    required this.productDescription,
    required this.createdAt,
    required this.updatedAt,
    required this.Discount,
         required  this.size,  required  this.ice,  required  this.sugar,
  });

  Map<String, dynamic> toJson() {
    return {
      'productId': productId,
      'uid': uid,
      'categoryId': categoryId,
      'productName': productName,
      'categoryName': categoryName,
      'salePrice': salePrice,
      'fullPrice': fullPrice,
      'productImages': productImages,
      'deliveryTime': deliveryTime,
      'isSale': isSale,
      'productDescription': productDescription,
      'createdAt': createdAt,
      'updatedAt': updatedAt,
      'Discount': Discount,
      'profilrpic': profilrpic,
         'size': size,
      'ice': ice,
      'sugar': sugar,
      

    };
  }

  factory ProductModel.fromSnap(DocumentSnapshot snap){
    var snapshot = snap.data() as Map<String,dynamic>;

   
    return ProductModel(
      productId: snapshot['productId'],
      uid: snapshot['uid'],
      categoryId: snapshot['categoryId'],
      productName: snapshot['productName'],
      categoryName: snapshot['categoryName'],
      salePrice: snapshot['salePrice'],
      fullPrice: snapshot['fullPrice'],
      productImages: snapshot['productImages'],
      deliveryTime: snapshot['deliveryTime'],
      isSale: snapshot['isSale'],
      productDescription: snapshot['productDescription'],
      createdAt: snapshot['createdAt'],
      updatedAt: snapshot['updatedAt'],
      Discount: snapshot['Discount'], profilrpic: snapshot['profilrpic'],
        size :snapshot['size'], ice:snapshot ['ice'], sugar:snapshot ['sugar'],
    );
  }
}

