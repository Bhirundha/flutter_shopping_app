import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './model/Cart.dart';

class Checkout extends StatefulWidget {
  const Checkout({Key? key}) : super(key: key);

  @override
  State<Checkout> createState() => _CheckoutState();
}

class _CheckoutState extends State<Checkout>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan.shade100,
      appBar: AppBar(
        title: const Text("Checkout"),
      ),
      body: Consumer<Cart>(builder: (context, cart, child){
        return ListView.builder(itemCount: cart.basketitem.length,itemBuilder: (context, i)
        {
          return Card(
            child: ListTile(
              leading: Image.network("${cart.basketitem[i].images}",height: double.infinity,
                width: 70,
                fit: BoxFit.cover,),
              title: Text("${cart.basketitem[i].title}",style: const TextStyle(
                  fontWeight: FontWeight.w700, color: Colors.black,fontSize: 22),),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 5,),
                  Text("(${cart.basketitem[i].description})",style: TextStyle(
                      fontWeight: FontWeight.w700,color: Colors.grey.shade700,fontSize: 20),),
                  const SizedBox(height: 10,),
                  Text("Rs.${cart.basketitem[i].price}",style: const TextStyle(
                      fontWeight: FontWeight.w700, color: Colors.red,fontSize: 18),),
                ],
              ),
              trailing: IconButton(iconSize:25,
                  color: Colors.black,icon: const Icon(Icons.remove), onPressed: (){
                cart.remove(cart.basketitem[i]);
              }),
            ),
          );
         }
        );
      })
    );
  }
}
