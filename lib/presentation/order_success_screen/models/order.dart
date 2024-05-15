
import 'dart:typed_data';

import 'package:coffee_app/core/utils/image_constant.dart';
import 'package:coffee_app/presentation/order_success_screen/services/cloud.dart';
import 'package:coffee_app/presentation/order_success_screen/utils/picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class AddProductPage extends StatefulWidget {
  @override
  _AddProductPageState createState() => _AddProductPageState();
  
}

class _AddProductPageState extends State<AddProductPage> {
  final TextEditingController productNameController = TextEditingController();
  
  final TextEditingController salePriceController = TextEditingController();
  final TextEditingController fullPriceController = TextEditingController();
  final TextEditingController deliveryTimeController = TextEditingController();
  final TextEditingController productDescriptionController = TextEditingController();
    final TextEditingController categoryNameController = TextEditingController();
    final TextEditingController DiscountController = TextEditingController();
        final TextEditingController lbl_small = TextEditingController();
        final TextEditingController lbl_meduim = TextEditingController();
        final TextEditingController lbl_large = TextEditingController();

  // Other controllers...

  Uint8List? file;
/**  uploadPost()async{
    try{
    String res = await cloudMethods().uploadOrder(
      productName: productNameController.text,
       categoryName: categoryNameController.text, 
       salePrice: salePriceController.text,
        
         deliveryTime:deliveryTimeController.text,
          productDescription: productDescriptionController.text,
           Discount: DiscountController.text,
            file: file!,
             uid: 'gXEj5n8wY9NrCcWCqfmw8xtVaEB3');
    }catch(e){}
  } */
    void _showSecondPage(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (ctx) => Scaffold(
          appBar: AppBar(title: Text('second page')),
          body: Center(
            child: Hero(
              tag: 'my-hero-animation-tag',
              child: Image.asset('assets/images/img_ellipse_20_85x85.png'),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Product'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: productNameController,
              decoration: InputDecoration(labelText: 'Product Name'),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () async {
                Uint8List? myfile = await PickImage();
                if (myfile != null) {
                  setState(() {
                    file = myfile;
                  });
                }
              },
              child: Text(
                'Add Image',
                style: TextStyle(color: Colors.black),
              ),
            ),
            SizedBox(height: 20.0),
            if (file != null)
              Container(
                height: 200, // Adjust height as needed
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(
                    image: MemoryImage(file!),
                    fit: BoxFit.cover, // Adjust image fit as needed
                  ),
                ),
              ),
            // Additional UI elements...
            SizedBox(height: 10.0),
            TextField(
              controller:categoryNameController,
              decoration: InputDecoration(labelText: 'categoryName'),
            ),
            Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const SizedBox(
            height: 20.0,
          ),
          ListTile(
            leading: GestureDetector(
              onTap: () => _showSecondPage(context),
              child: const Hero(
                tag: 'my-hero-animation-tag',
                child: CircleAvatar(
                  backgroundImage:
                      AssetImage('assets/images/img_ellipse_20_85x85.png'),
                ),
              ),
            ),
            title: const Text(
              'Tap on the photo to view the animation transition.',
            ),
          ),
        ],
      ),
            ),
              SizedBox(height: 10.0),
            TextField(
              controller: salePriceController,
              decoration: InputDecoration(labelText: 'Sale Price'),
            ),
            SizedBox(height: 10.0),
            TextField(
              controller: fullPriceController,
              decoration: InputDecoration(labelText: 'Full Price'),
            ),
            SizedBox(height: 10.0),
            TextField(
              controller: deliveryTimeController,
              decoration: InputDecoration(labelText: 'Delivery Time'),
            ),
            SizedBox(height: 10.0),
            TextField(
              onTap: () => _showSecondPage(context),
              controller: productDescriptionController,
              decoration: InputDecoration(labelText: 'Product Description'),
              maxLines: null,
            ), 
            SizedBox(height: 10.0),
            TextField(
              controller: DiscountController,
              decoration: InputDecoration(labelText: 'Discount'),
              maxLines: null,
            ), 
             SizedBox(height: 10.0),
        Row(
  children: [
    Expanded(
      child: TextField(
        controller: lbl_small,
        decoration: InputDecoration(labelText: "lbl_small"),
        maxLines: null,
      ),
    ),
    SizedBox(width: 2.0),
    Expanded(
      child: TextField(
        controller: lbl_meduim,
        decoration: InputDecoration(labelText: 'lbl_meduim'),
        maxLines: null,
      ),
    ),
    SizedBox(width: 2.0),
    Expanded(
      child: TextField(
        controller: lbl_large,
        decoration: InputDecoration(labelText: 'lbl_large'),
        maxLines: null,
      ),
    ),
  ],
),

                       
           
              SizedBox(height: 20.0),
            ElevatedButton(
            onPressed: () async {
  try {
    String res = await cloudMethods().uploadOrder(
      productName: productNameController.text,
      categoryName: categoryNameController.text, 
      salePrice: salePriceController.text,
      deliveryTime: deliveryTimeController.text,
      productDescription: productDescriptionController.text,
      Discount: DiscountController.text,
      file: file!,
      uid: 'KZxUE5YjefhKRngTvy5wcGp2XKy2', size: [lbl_small.text,lbl_meduim.text,lbl_large.text], ice: [], sugar: []
      
    );
    // Handle success response if needed
  } catch (e) {
    // Handle any errors or exceptions that occur during upload
    print("Error uploading data: $e");
  }
},

              child: Text(
                'Add Product',
                style: TextStyle(color: Colors.black),
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}
