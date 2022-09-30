import 'package:amazon/model/Item.dart';
import 'package:amazon/model/Product.dart';
import 'package:flutter/material.dart';

class AddProduct extends StatefulWidget {

  final Function(Product) addProduct;
  const AddProduct(this.addProduct);

  @override
  State<AddProduct> createState() => _AddProductState();
}

class _AddProductState extends State<AddProduct> {

  @override
  Widget build(BuildContext context) {
    Widget buildTextfield(String hint, TextEditingController controller){
      return Container(
        margin: const EdgeInsets.all(4),
        child: TextField(
          decoration: InputDecoration(
            labelText: hint,
            labelStyle: const TextStyle(color: Colors.blueGrey, fontWeight: FontWeight.w400, fontSize: 15),
            border: const OutlineInputBorder(
              borderSide: BorderSide(
                  color: Colors.black38
              ),
            ),
          ),
          controller: controller,
        ),
      );
    }

    var titleController = TextEditingController();
    var descriptionController = TextEditingController();
    var priceController = TextEditingController();
    var imagesController = TextEditingController();

    return Container(
      padding: const EdgeInsets.all(8),
      height: 400,
      width: 400,
      child: SingleChildScrollView(
        child: Column(
          children: [
            const Text("Enter the product details",
              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.blue),),
            const SizedBox(height: 15,),
            buildTextfield('Title', titleController),
            buildTextfield('Description', descriptionController),
            buildTextfield('Price', priceController),
            buildTextfield('Image url', imagesController),
            ElevatedButton(
                onPressed: () {
                  final product = Product(titleController.text,descriptionController.text,priceController.text,imagesController.text, images: '',description: '',title: '',price: 0,);
                  widget.addProduct(product);
                  Navigator.of(context).pop();
                },
                child: const Text("Add product"),
            )
          ],
        ),
      ),
    );
  }
}