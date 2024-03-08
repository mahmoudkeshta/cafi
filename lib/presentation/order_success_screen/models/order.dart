
import 'dart:typed_data';

import 'package:coffee_app/core/utils/image_constant.dart';
import 'package:coffee_app/presentation/order_success_screen/utils/picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
/**class AddProductPage extends StatefulWidget {
  @override
  _AddProductPageState createState() => _AddProductPageState();
}

class _AddProductPageState extends State<AddProductPage> {
  final TextEditingController _productNameController = TextEditingController();
  final TextEditingController _salePriceController = TextEditingController();
  final TextEditingController _fullPriceController = TextEditingController();
  final TextEditingController _deliveryTimeController = TextEditingController();
  final TextEditingController _productDescriptionController = TextEditingController();



  @override
  Widget build(BuildContext context) {
      Uint8List? file;
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
              controller: _productNameController,
              decoration: InputDecoration(labelText: 'Product Name'),
            ),
          /**  SizedBox(height: 10.0),
            TextField(
              controller: _salePriceController,
              decoration: InputDecoration(labelText: 'Sale Price'),
            ),
            SizedBox(height: 10.0),
            TextField(
              controller: _fullPriceController,
              decoration: InputDecoration(labelText: 'Full Price'),
            ),
            SizedBox(height: 10.0),
            TextField(
              controller: _deliveryTimeController,
              decoration: InputDecoration(labelText: 'Delivery Time'),
            ),
            SizedBox(height: 10.0),
            TextField(
              controller: _productDescriptionController,
              decoration: InputDecoration(labelText: 'Product Description'),
              maxLines: null,
            ), */
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () async{
                Uint8List myfile=await PickImage();
                setState(() {
                  file = myfile;
                });
              },
              child: Text(
                'Add Image',
                style: TextStyle(color: Colors.black),
              ),
            ),
            SizedBox(height: 5.1),
            file == null
                ?
                 Container(
             
                  )

                :
                 Container(
                  
               decoration: BoxDecoration(
    
                      borderRadius: BorderRadius.circular(12),
                      
                      image: DecorationImage(
                      image: MemoryImage(file!),
                       
                      //  imagePath: ImageConstant.imgLockGray900,
                    //image: AssetImage('assets/images/img_ellipse_20_85x85.png'),
                      ),
                      
                    ),
 
                    

                ),
             
           /**
            *  SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                // Handle logic to add the product
                String productName = _productNameController.text;
                String salePrice = _salePriceController.text;
                String fullPrice = _fullPriceController.text;
                String deliveryTime = _deliveryTimeController.text;
                String productDescription = _productDescriptionController.text;

                // Implement logic to add the product using the provided data
              },
              child: Text(
                'Add Product',
                style: TextStyle(color: Colors.black),
              ),
            ),
            */
            
          ],
        ),
      ),
    );
  }
}
 */

class AddProductPage extends StatefulWidget {
  @override
  _AddProductPageState createState() => _AddProductPageState();
  
}

class _AddProductPageState extends State<AddProductPage> {
  final TextEditingController _productNameController = TextEditingController();
  
  final TextEditingController _salePriceController = TextEditingController();
  final TextEditingController _fullPriceController = TextEditingController();
  final TextEditingController _deliveryTimeController = TextEditingController();
  final TextEditingController _productDescriptionController = TextEditingController();
  // Other controllers...

  Uint8List? file;

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
              controller: _productNameController,
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
              controller: _salePriceController,
              decoration: InputDecoration(labelText: 'Sale Price'),
            ),
            SizedBox(height: 10.0),
            TextField(
              controller: _fullPriceController,
              decoration: InputDecoration(labelText: 'Full Price'),
            ),
            SizedBox(height: 10.0),
            TextField(
              controller: _deliveryTimeController,
              decoration: InputDecoration(labelText: 'Delivery Time'),
            ),
            SizedBox(height: 10.0),
            TextField(
              controller: _productDescriptionController,
              decoration: InputDecoration(labelText: 'Product Description'),
              maxLines: null,
            ), 
            
                       
           
              SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                // Handle logic to add the product
                String productName = _productNameController.text;
                String salePrice = _salePriceController.text;
                String fullPrice = _fullPriceController.text;
                String deliveryTime = _deliveryTimeController.text;
                String productDescription = _productDescriptionController.text;

                // Implement logic to add the product using the provided data
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
