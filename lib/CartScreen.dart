import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './model/Cart.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> with TickerProviderStateMixin{
  @override
  Widget build(BuildContext context) {
    TabController tabController =
    TabController(length: 2, vsync: this);
    return Scaffold(
        backgroundColor: Colors.cyan.shade200,
        body: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Container(
              width: 300,
              height: 55,
              margin: const EdgeInsets.only(left: 10,right: 10),
              padding: const EdgeInsets.all(5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: 380,
                    height: 50,
                    decoration:BoxDecoration(
                      color: Colors.white,
                      borderRadius:BorderRadius.circular(10),),
                    child:Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const SizedBox(
                          width: 50,
                          height: 50,
                          child: Icon(Icons.search,size: 32,),
                        ),
                        Container(
                          width: 220,
                          height: 50,
                          padding: const EdgeInsets.only(top:5),
                          child: const TextField(
                            decoration: InputDecoration(
                              hintText: 'Search Amazon.in',
                              labelStyle: TextStyle(fontSize: 20),
                            ),
                          ),
                        ),
                        IconButton(
                          iconSize:30,
                          color: Colors.black,
                          onPressed: () {},
                          icon: const Icon(
                            Icons.qr_code,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 200,
              height: 40,
                margin: const EdgeInsets.only(left: 10),
                child:  Align(
                  alignment: Alignment.centerLeft,
                  child: TabBar(
                    controller: tabController,
                    isScrollable: true,
                    labelColor: Colors.black,
                    labelStyle: const TextStyle(fontSize: 15,fontWeight: FontWeight.w600),
                    unselectedLabelColor: Colors.black,
                    unselectedLabelStyle: const TextStyle(fontSize: 13,fontWeight: FontWeight.w500),
                    indicatorColor: Colors.black,
                    indicatorWeight: 3,
                    indicatorPadding: const EdgeInsets.only(left:15,right:15,top: 5),
                    tabs: const [
                      Tab(text:"Cart"),
                      Tab(text:"Buy again"),
                    ],
                  ),
                )
            ),
            SizedBox(
                width: double.maxFinite,
                height: 40,
                child:  TabBarView(
                  controller: tabController,
                  children: <Widget>[
                    Container(
                      width: 300,
                      height: 40,
                      color: Colors.cyan.shade100,
                      padding: const EdgeInsets.only(left: 7),
                      child: Row(
                        children: [
                          GestureDetector(
                            onTap: () {},
                            child :Container(
                              width: 40,
                              height: 40,
                              padding: const EdgeInsets.only(right: 5),
                              child: IconButton(
                                iconSize:28,
                                color: Colors.black,
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.location_on_outlined,
                                ),
                              ),
                            ),
                          ),
                          GestureDetector(
                              onTap: () {},
                              child:Container(
                                width: 350,
                                height: 40,
                                padding: const EdgeInsets.only(top: 10),
                                child: const Text("Select a location to see product availability",
                                  style: TextStyle(fontSize: 16,color: Colors.black87,fontWeight: FontWeight.w500),
                                ),
                              )
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: 300,
                      height: 40,
                      color: Colors.cyan.shade100,
                      padding: const EdgeInsets.only(left: 7),
                      child: Row(
                        children: [
                          GestureDetector(
                            onTap: () {},
                            child :Container(
                              width: 40,
                              height: 40,
                              padding: const EdgeInsets.only(right: 5),
                              child: IconButton(
                                iconSize:28,
                                color: Colors.black,
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.location_on_outlined,
                                ),
                              ),
                            ),
                          ),
                          GestureDetector(
                              onTap: () {},
                              child:Container(
                                width: 350,
                                height: 40,
                                padding: const EdgeInsets.only(top: 10),
                                child: const Text("Select a location to see product availability",
                                  style: TextStyle(fontSize: 16,color: Colors.black87,fontWeight: FontWeight.w500),
                                ),
                              )
                          )
                        ],
                      ),
                    ),
                  ],
                )
            ),
            Container(
              width: 420,
              height: 150,
              color: Colors.white,
              padding: const EdgeInsets.only(left: 10,top: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 200,
                    height: 30,
                    padding: const EdgeInsets.only(left: 12),
                    child: Row(
                      children: const [
                        Text("Subtotal",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                        Text("  \$57,078",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w900),),
                      ],
                    ),
                  ),
                  Container(
                    width: 170,
                    height: 25,
                    padding: const EdgeInsets.only(bottom: 5,left: 3),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        Text("EMI Available",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),),
                        Text("Details",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: Colors.blue),),
                      ],
                    ),
                  ),
                  Container(
                    width: 400,
                    height: 35,
                    margin: const EdgeInsets.only(right: 15,left: 7),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        onPrimary: Colors.black,
                        primary: Colors.yellow.shade700,
                        minimumSize: const Size(120, 35),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),),
                      onPressed: () {},
                      child: const Text("Proceed to buy (2 items)",
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600,),),
                    ),
                  ),
                  SizedBox(
                    width: 370,
                    height: 35,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 50,
                          height: 50,
                          child: IconButton(
                            iconSize:35,
                            color: Colors.black,
                            onPressed: () {},
                            icon: const Icon(
                              Icons.check_box_outline_blank,
                            ),
                          )
                        ),
                        Container(
                          width: 320,
                          height: 50,
                          padding: const EdgeInsets.only(top: 17),
                          child: const Text("Send as a gift. Include custom message",
                            style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            const CartItems(),
          ],
        )
    );
  }
}

class CartItems extends StatefulWidget {
  const CartItems({Key? key}) : super(key: key);

  @override
  State<CartItems> createState() => _CartItemsState();
}

class _CartItemsState extends State<CartItems> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<Cart>(builder : (context, cart, child)
    {
      return ListView.builder(
          itemCount: cart.basketitem.length,
          itemBuilder: (context, i) {
            return Card(
                child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      border: Border.all(color: Colors.black26, width: 1),
                      color: Colors.grey.shade300,
                    ),
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: const BorderRadius.only(topLeft: Radius
                              .circular(16.0), topRight: Radius.circular(
                              16.0),),
                          child: Image.network("${cart.basketitem[i].images}",
                            height: 140,
                            width: double.infinity,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Text("${cart.basketitem[i].title}",
                                  style: Theme
                                      .of(context)
                                      .textTheme
                                      .subtitle1!
                                      .merge(const TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 22),),),
                                const SizedBox(height: 2.0,),
                                Text("${cart.basketitem[i].description}",
                                  style: Theme
                                      .of(context)
                                      .textTheme
                                      .subtitle2!
                                      .merge(const TextStyle(
                                      fontWeight: FontWeight.w700),),),
                                const SizedBox(height: 2.0,),
                                Text("${cart.basketitem[i].price}",
                                  style: Theme
                                      .of(context)
                                      .textTheme
                                      .subtitle2!
                                      .merge(const TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 20),),),
                                IconButton(
                                    onPressed: () {
                                      cart.remove(cart.basketitem[i]);
                                    },
                                    icon: Icon(Icons.remove))
                              ],
                            )
                        )
                      ],
                    ),
                  )
                );
          }
      );
    }));
  }
}


