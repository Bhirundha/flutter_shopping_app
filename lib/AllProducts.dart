import 'package:amazon/Checkout.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './model/Cart.dart';
import './model/Item.dart';

class AllProducts extends StatelessWidget {
  const AllProducts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.cyan.shade200,
        body: SafeArea(
          child: SingleChildScrollView (
            child: Column(
              children: [
                Container(
                  width: 400,
                  height: 50,
                  margin: const EdgeInsets.only(left: 10,right: 10,top: 5,bottom: 1),
                  padding: const EdgeInsets.all(5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const SizedBox(
                        width: 30,
                        height: 40,
                        child: Icon(Icons.arrow_back,size: 28,),
                      ),
                      Container(
                        width: 280,
                        height: 40,
                        margin: const EdgeInsets.only(left: 15),
                        decoration:BoxDecoration(
                          color: Colors.white,
                          borderRadius:BorderRadius.circular(10),),
                        child:Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            const SizedBox(
                              width: 40,
                              height: 40,
                              child: Icon(Icons.search,size: 28,),
                            ),
                            Container(
                              width: 200,
                              height: 40,
                              padding: const EdgeInsets.only(top:5),
                              child: const TextField(
                                decoration: InputDecoration(
                                  hintText: 'Search Amazon.in',
                                  labelStyle: TextStyle(fontSize: 20),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 40,
                              height: 40,
                              child: IconButton(
                                iconSize:28,
                                color: Colors.black,
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.qr_code,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 30,
                        height: 40,
                        margin: const EdgeInsets.only(left: 5,bottom: 3),
                        child: IconButton(
                          iconSize:25,
                          color: Colors.black,
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(builder: (context){
                              return const Checkout();
                            }));
                          },
                          icon: const Icon(
                            Icons.add_shopping_cart,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  width: 420,
                  height: 75,
                  color: Colors.white,
                  child: Column(
                    children: [
                      Container(
                        width: 420,
                        height: 30,
                        padding: const EdgeInsets.only(left: 12,top: 5),
                        child: const Text("FILTER BY PRICE",style: TextStyle(fontSize: 19,color: Colors.black,fontWeight: FontWeight.w700),),
                      ),
                      Container(
                          height: 45,
                          padding: const EdgeInsets.only(left: 5,right: 5,top: 3, bottom:7),
                          child:ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              Container(
                                width: 120,
                                height: 50,
                                padding: const EdgeInsets.only(top: 10,left: 7),
                                margin: const EdgeInsets.only(left: 5),
                                decoration: BoxDecoration(
                                    color: Colors.grey.shade400,
                                    borderRadius: BorderRadius.circular(13)
                                ),
                                child: const Text("Under Rs.2,000",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
                              ),
                              Container(
                                width: 150,
                                height: 50,
                                padding: const EdgeInsets.only(top: 10,left: 7),
                                margin: const EdgeInsets.only(left: 5),
                                decoration: BoxDecoration(
                                    color: Colors.grey.shade400,
                                    borderRadius: BorderRadius.circular(13)
                                ),
                                child: const Text("Rs.2,000 - Rs.5,000",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
                              ),
                              Container(
                                width: 160,
                                height: 50,
                                padding: const EdgeInsets.only(top: 10,left: 7),
                                margin: const EdgeInsets.only(left: 5),
                                decoration: BoxDecoration(
                                    color: Colors.grey.shade400,
                                    borderRadius: BorderRadius.circular(13)
                                ),
                                child: const Text("Rs.5,000 - Rs.10,000",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
                              ),
                              Container(
                                width: 170,
                                height: 50,
                                padding: const EdgeInsets.only(top: 10,left: 7),
                                margin: const EdgeInsets.only(left: 5),
                                decoration: BoxDecoration(
                                    color: Colors.grey.shade400,
                                    borderRadius: BorderRadius.circular(13)
                                ),
                                child: const Text("Rs.10,000 - Rs.20,000",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
                              ),
                              Container(
                                width: 130,
                                height: 50,
                                padding: const EdgeInsets.only(top: 10,left: 7),
                                margin: const EdgeInsets.only(left: 5),
                                decoration: BoxDecoration(
                                    color: Colors.grey.shade400,
                                    borderRadius: BorderRadius.circular(13)
                                ),
                                child: const Text("Over Rs.20,000",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
                              ),
                            ],
                          )
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 420,
                  height: 30,
                  color: Colors.white,
                  padding: const EdgeInsets.only(left: 12,top: 6),
                  child: const Text("RESULTS",style: TextStyle(fontSize: 19,color: Colors.black,fontWeight: FontWeight.w700),),
                ),
                const Grid(),
              ],
            ),
          )
        )
    );
  }
}


class Grid extends StatefulWidget {
  const Grid({Key? key}) : super(key: key);

  @override
  State<Grid> createState() => _GridState();
}

class _GridState extends State<Grid> {
  final List<Item> items = [
    Item(title: "Timex", description:"Stylish Men's Watch", price:1300, images:"https://th.bing.com/th/id/OIP.UcLXJksgAZ2qaWWlkjLMtAHaHa?pid=ImgDet&rs=1"),
    Item(title: "iPhone", description:"Apple iPhone 5 Phone",price:49999,images:"https://directcell.ca/wp-content/uploads/2018/10/image-494.jpeg"),
    Item(title: "Dress", description:"High waisted skirt", price:599, images:"https://i.pinimg.com/736x/d2/58/02/d25802c60e8e9f5b55512011fb2ef48e.jpg"),
    Item(title: "Sheos", description:"Lotto Mens Shoes", price:880,images:"https://th.bing.com/th/id/OIP.-ORc1AsjX5uyG1DzF-iJ4QHaHa?pid=ImgDet&rs=1"),
    Item(title: "Handbag", description:"Hidesign Tote Bag", price:460, images:"https://images.indulgexpress.com/uploads/user/imagelibrary/2020/12/14/original/LDAX9114F.jpg"),
    Item(title: "Foundation", description:"For 24Hr Coverage", price:799,images:"https://cdn.shopify.com/s/files/1/0906/2558/products/sugar-cosmetics-rage-for-coverage-24hr-foundation-07-vanilla-latte-fair-golden-undertone-28390674890835.jpg?v=1623073417"),
    Item(title: "Cookies", description:"Chocolate Cookies",price:30,images:"https://th.bing.com/th/id/OIP.s4zGpmJhR-sFgKWffXeR7QHaHa?pid=ImgDet&rs=1"),
    Item(title: "Trimmer", description:"Waterproof trimmer", price:3999, images:"https://i5.walmartimages.com/asr/e3b407b9-5f54-4aea-934e-a8c40d2ab035.be9c2913348118922e5947f2421c1abb.jpeg"),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.only(top: 10, left: 20,right: 20,bottom: 20),
      child: GridView.builder(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10.0,
              mainAxisSpacing: 10.0,
              mainAxisExtent: 250,
          ),
          itemCount: items.length,
          itemBuilder: (context, i){
            return Card(
              child: Consumer<Cart>(builder:(context, cart, child)
            {
              return Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  border: Border.all(color: Colors.black26, width: 1),
                  color: Colors.grey.shade300,
                ),
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(16.0),
                        topRight: Radius.circular(16.0),),
                      child: Image.network("${items[i].images}",
                        height: 130,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Column(
                          children: [
                            Text("${items[i].title}",
                              style: Theme
                                  .of(context)
                                  .textTheme
                                  .subtitle1!
                                  .merge(const TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 17),),),
                            Text("${items[i].description}",
                              style: Theme
                                  .of(context)
                                  .textTheme
                                  .subtitle2!
                                  .merge(const TextStyle(fontSize: 13,
                                  fontWeight: FontWeight.w700),),),
                            Text("Rs.${items[i].price}",
                              style: Theme
                                  .of(context)
                                  .textTheme
                                  .subtitle2!
                                  .merge(const TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 20),),),
                            IconButton(
                              iconSize:25,
                              color: Colors.red,
                              onPressed: () {
                                cart.add(items[i]);
                              },
                              icon: const Icon(
                                Icons.add,
                              ),
                            ),
                          ],
                        )
                    )
                  ],
                ),
              );
              }
              )
            );
          }
      )
    );
  }
}


