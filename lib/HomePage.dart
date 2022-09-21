import 'dart:core';
import 'package:amazon/AllProducts.dart';
import 'package:amazon/CartScreen.dart';
import 'package:amazon/AdminPage.dart';
import 'package:amazon/Checkout.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int pageIndex = 0;

  final pages = [
    const HomeScreen(),
    const AllProducts(),
    const Checkout(),
    const AdminScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan.shade200,
      body: pages[pageIndex],
      bottomNavigationBar: buildMyNavBar(context),
    );
  }

  Container buildMyNavBar(BuildContext context) {
    return Container(
      height: 60,
      decoration: const BoxDecoration(
        color: Colors.white70,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 0;
              });
            },
            icon: pageIndex == 0
                ? const Icon(
              Icons.home_filled,
              color: Colors.black,
              size: 30,
            )
                : const Icon(
              Icons.home_outlined,
              color: Colors.black,
              size: 30,
            ),
          ),
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 1;
              });
            },
            icon: pageIndex == 1
                ? const Icon(
              Icons.list_alt_outlined,
              color: Colors.black,
              size: 30,
            )
                : const Icon(
              Icons.list_alt_rounded,
              color: Colors.black,
              size: 30,
            ),
          ),
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 2;
              });
            },
            icon: pageIndex == 2
                ? const Icon(
              Icons.shopping_cart,
              color: Colors.black,
              size: 30,
            )
                : const Icon(
              Icons.add_shopping_cart_outlined,
              color: Colors.black,
              size: 30,
            ),
          ),
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 3;
              });
            },
            icon: pageIndex == 3
                ? const Icon(
              Icons.menu,
              color: Colors.black,
              size: 30,
            )
                : const Icon(
              Icons.menu,
              color: Colors.black,
              size: 30,
            ),
          ),
        ],
      ),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _Page1State();
}

class _Page1State extends State<HomeScreen> {
  int activeIndex = 0;
  final urlImages=[
    'https://th.bing.com/th/id/OIP.3cUiT-DASImVFsY-x6-7vgHaC9?pid=ImgDet&rs=1',
    'https://th.bing.com/th/id/OIP.hDYTgBpt3TqNe0fJ1Z8T0AHaC9?pid=ImgDet&rs=1',
    'https://th.bing.com/th/id/OIP.elAP-e3_jYv_VWdq89ojjgHaC9?pid=ImgDet&rs=1',
    'https://th.bing.com/th/id/OIP.fETGrSxYZPDuw7CabDKMPAHaC9?pid=ImgDet&rs=1',
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 55,
            margin: const EdgeInsets.only(left: 10,right: 10),
            padding: const EdgeInsets.all(5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: 320,
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
                        width: 200,
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
                        iconSize:25,
                        color: Colors.black,
                        onPressed: () {},
                        icon: const Icon(
                          Icons.qr_code,
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  width: 30,
                  height: 50,
                  padding: const EdgeInsets.only(left: 5,top: 2,bottom: 10),
                  child: IconButton(
                    iconSize:30,
                    color: Colors.black,
                    onPressed: () {},
                    icon: const Icon(
                      Icons.mic,
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 42,
            color: Colors.cyan.shade100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () {},
                  child :Container(
                    width: 40,
                    height: 50,
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
                      height: 50,
                      padding: const EdgeInsets.only(top: 10),
                      child: const Text("Select delivery location",
                        style: TextStyle(fontSize: 18,color: Colors.black87,fontWeight: FontWeight.w400),
                      ),
                    )
                )
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 110,
            color: Colors.white,
            margin: const EdgeInsets.only(bottom:5),
            padding: const EdgeInsets.only(left: 10,right: 10),
            child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Row (
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:<Widget>[
                        GestureDetector(
                          onTap: () {},
                          child:SizedBox(
                              width: 80,
                              height: 110,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    width: 80,
                                    height: 75,
                                    decoration:const BoxDecoration(
                                      image: DecorationImage(
                                        alignment: Alignment.topCenter,
                                        image: AssetImage('assets/images/prime.png'),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Container(
                                      width: 80,
                                      height: 30,
                                      padding: const EdgeInsets.only(bottom: 10),
                                      child: const Align(
                                        alignment: Alignment.center,
                                        child: Text('Prime', style: TextStyle(color:Colors.black87, fontSize: 17,),),
                                      )
                                  )
                                ],
                              )
                          ),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child:SizedBox(
                              width: 80,
                              height: 110,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    width: 80,
                                    height: 75,
                                    decoration:const BoxDecoration(
                                      image: DecorationImage(
                                        alignment: Alignment.topCenter,
                                        image: AssetImage('assets/images/home.png'),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Container(
                                      width: 80,
                                      height: 30,
                                      padding: const EdgeInsets.only(bottom: 10),
                                      child: const Align(
                                        alignment: Alignment.center,
                                        child: Text('Home', style: TextStyle(color:Colors.black87, fontSize: 17,),),
                                      )
                                  )
                                ],
                              )
                          ),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child:Container(
                              width: 80,
                              height: 110,
                              padding: const EdgeInsets.only(top: 5),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    width: 80,
                                    height: 75,
                                    decoration:const BoxDecoration(
                                      image: DecorationImage(
                                        alignment: Alignment.topCenter,
                                        image: AssetImage('assets/images/fashion.png'),
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                  ),
                                  Container(
                                      width: 80,
                                      height: 30,
                                      padding: const EdgeInsets.only(bottom: 10),
                                      child: const Align(
                                        alignment: Alignment.center,
                                        child: Text('Fashion', style: TextStyle(color:Colors.black87, fontSize: 17,),),
                                      )
                                  )
                                ],
                              )
                          ),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child:Container(
                              width: 80,
                              height: 110,
                              padding: const EdgeInsets.only(top: 5),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    width: 80,
                                    height: 75,
                                    decoration:const BoxDecoration(
                                      image: DecorationImage(
                                        alignment: Alignment.topCenter,
                                        image: AssetImage('assets/images/mobiles.png'),
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                  ),
                                  Container(
                                      width: 80,
                                      height: 30,
                                      padding: const EdgeInsets.only(bottom: 10),
                                      child: const Align(
                                        alignment: Alignment.center,
                                        child: Text('Mobiles', style: TextStyle(color:Colors.black87, fontSize: 17,),),
                                      )
                                  )
                                ],
                              )
                          ),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child:Container(
                              width: 80,
                              height: 110,
                              padding: const EdgeInsets.only(top: 5),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    width: 80,
                                    height: 75,
                                    decoration:const BoxDecoration(
                                      image: DecorationImage(
                                        alignment: Alignment.topCenter,
                                        image: AssetImage('assets/images/electronics.png'),
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                  ),
                                  Container(
                                      width: 80,
                                      height: 30,
                                      padding: const EdgeInsets.only(bottom: 10),
                                      child: const Align(
                                        alignment: Alignment.center,
                                        child: Text('Electronics', style: TextStyle(color:Colors.black87, fontSize: 17,),),
                                      )
                                  )
                                ],
                              )
                          ),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child:Container(
                              width: 80,
                              height: 110,
                              padding: const EdgeInsets.only(top: 5),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    width: 80,
                                    height: 75,
                                    decoration:const BoxDecoration(
                                      image: DecorationImage(
                                        alignment: Alignment.topCenter,
                                        image: AssetImage('assets/images/furniture.png'),
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                  ),
                                  Container(
                                      width: 80,
                                      height: 30,
                                      padding: const EdgeInsets.only(bottom: 10),
                                      child: const Align(
                                        alignment: Alignment.center,
                                        child: Text('Furnitures', style: TextStyle(color:Colors.black87, fontSize: 17,),),
                                      )
                                  )
                                ],
                              )
                          ),
                        ),
                      ]
                  )
                ]
            ),
          ),
          Container(
              width: MediaQuery.of(context).size.width,
              height: 410,
              color: Colors.pinkAccent.shade100,
              margin: const EdgeInsets.only(bottom: 10),
              child :Stack(
                children: <Widget>[
                  Positioned(
                      left: 5,
                      child:SizedBox(
                        height:200,
                        width:400,
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children :[
                              CarouselSlider.builder(
                                options: CarouselOptions(
                                  height:175,
                                  autoPlay: true,
                                  enlargeCenterPage: true,
                                  autoPlayInterval: const Duration(seconds:3),
                                  onPageChanged: (index,reason) =>
                                      setState(()=> activeIndex=index),
                                ),
                                itemCount: urlImages.length,
                                itemBuilder: (context, index, realIndex) {
                                  final urlImage = urlImages[index];
                                  return buildImage (urlImage,index);
                                },
                              ),
                              buildIndicator(),
                            ]
                        ),
                      )
                  ),
                  Positioned(
                      top: 200,
                      child:Container(
                          width: 400,
                          height:200,
                          margin: const EdgeInsets.only(left: 10,right: 20,bottom: 10),
                          child :ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Container(
                                      width:200,
                                      height: 200,
                                      margin: const EdgeInsets.only(right: 10),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      child:Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          SizedBox(
                                            width: 200,
                                            height: 100,
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                              children: [
                                                SizedBox(
                                                  width: 100,
                                                  height: 100,
                                                  child: GestureDetector(
                                                    onTap: () {},
                                                    child:Container(
                                                        width: 100,
                                                        height: 100,
                                                        padding: const EdgeInsets.only(top: 5),
                                                        child: Column(
                                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                          children: [
                                                            Container(
                                                              width: 100,
                                                              height: 70,
                                                              decoration:const BoxDecoration(
                                                                image: DecorationImage(
                                                                  alignment: Alignment.topCenter,
                                                                  image: AssetImage('assets/images/amazon_pay.png'),
                                                                  fit: BoxFit.fitHeight,
                                                                ),
                                                              ),
                                                            ),
                                                            Container(
                                                                width: 100,
                                                                height: 25,
                                                                padding: const EdgeInsets.only(bottom: 10),
                                                                child: const Align(
                                                                  alignment: Alignment.center,
                                                                  child: Text('Prime', style: TextStyle(color:Colors.black87, fontSize: 17,),),
                                                                )
                                                            )
                                                          ],
                                                        )
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 100,
                                                  height: 100,
                                                  child: GestureDetector(
                                                    onTap: () {},
                                                    child:Container(
                                                        width: 100,
                                                        height: 100,
                                                        padding: const EdgeInsets.only(top: 5),
                                                        child: Column(
                                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                          children: [
                                                            Container(
                                                              width: 100,
                                                              height: 70,
                                                              decoration:const BoxDecoration(
                                                                image: DecorationImage(
                                                                  alignment: Alignment.topCenter,
                                                                  image: AssetImage('assets/images/mobile_recharge.png'),
                                                                  fit: BoxFit.fitHeight,
                                                                ),
                                                              ),
                                                            ),
                                                            Container(
                                                                width: 100,
                                                                height: 25,
                                                                padding: const EdgeInsets.only(bottom:4),
                                                                child: const Align(
                                                                  alignment: Alignment.center,
                                                                  child: Text('Recharge', style: TextStyle(color:Colors.black87, fontSize: 17,),),
                                                                )
                                                            )
                                                          ],
                                                        )
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                          SizedBox(
                                            width: 200,
                                            height: 100,
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                              children: [
                                                SizedBox(
                                                  width: 100,
                                                  height: 100,
                                                  child: GestureDetector(
                                                    onTap: () {},
                                                    child:Container(
                                                        width: 100,
                                                        height: 100,
                                                        padding: const EdgeInsets.only(top: 5),
                                                        child: Column(
                                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                          children: [
                                                            Container(
                                                              width: 100,
                                                              height: 70,
                                                              decoration:const BoxDecoration(
                                                                image: DecorationImage(
                                                                  alignment: Alignment.topCenter,
                                                                  image: AssetImage('assets/images/bill-pay.png'),
                                                                  fit: BoxFit.fitHeight,
                                                                ),
                                                              ),
                                                            ),
                                                            Container(
                                                                width: 100,
                                                                height: 25,
                                                                padding: const EdgeInsets.only(bottom: 5),
                                                                child: const Align(
                                                                  alignment: Alignment.center,
                                                                  child: Text('Pay Bills', style: TextStyle(color:Colors.black87, fontSize: 17,),),
                                                                )
                                                            )
                                                          ],
                                                        )
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 100,
                                                  height: 100,
                                                  child: GestureDetector(
                                                    onTap: () {},
                                                    child:Container(
                                                        width: 100,
                                                        height: 100,
                                                        padding: const EdgeInsets.only(top: 5),
                                                        child: Column(
                                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                          children: [
                                                            Container(
                                                              width: 100,
                                                              height: 70,
                                                              decoration:const BoxDecoration(
                                                                image: DecorationImage(
                                                                  alignment: Alignment.topCenter,
                                                                  image: AssetImage('assets/images/qr-code-icon.png'),
                                                                  fit: BoxFit.fitHeight,
                                                                ),
                                                              ),
                                                            ),
                                                            Container(
                                                                width: 100,
                                                                height: 25,
                                                                padding: const EdgeInsets.only(bottom: 5),
                                                                child: const Align(
                                                                  alignment: Alignment.center,
                                                                  child: Text('Scan QR', style: TextStyle(color:Colors.black87, fontSize: 17,),),
                                                                )
                                                            )
                                                          ],
                                                        )
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                          )
                                        ],
                                      )
                                  ),
                                  GestureDetector(
                                    onTap: () {},
                                    child: Container(
                                      width:170,
                                      height: 200,
                                      margin: const EdgeInsets.only(right: 10),
                                      padding: const EdgeInsets.all(5),
                                      decoration: BoxDecoration(
                                        color: Colors.blue,
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            width:170,
                                            height: 45,
                                            padding: const EdgeInsets.only(left:5),
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: const [
                                                Text("Enjoy all of Prime",style: TextStyle(fontSize: 17,color: Colors.white),),
                                                Text("30 Days free",style: TextStyle(fontSize: 19,fontWeight: FontWeight.w700,color: Colors.white),)
                                              ],
                                            ),
                                          ),
                                          Container(
                                            width:170,
                                            height: 105,
                                            decoration:const BoxDecoration(
                                              image: DecorationImage(
                                                alignment: Alignment.topCenter,
                                                image: AssetImage('assets/images/shopping.png'),
                                                fit: BoxFit.scaleDown,
                                              ),
                                            ),
                                          ),
                                          Container(
                                            width:170,
                                            height: 40,
                                            decoration:const BoxDecoration(
                                              image: DecorationImage(
                                                alignment: Alignment.topCenter,
                                                image: AssetImage('assets/images/Amazon_Prime_logo.png'),
                                                fit: BoxFit.contain,
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {},
                                    child: Container(
                                      width:170,
                                      height: 200,
                                      margin: const EdgeInsets.only(right: 10),
                                      padding: const EdgeInsets.all(5),
                                      decoration: BoxDecoration(
                                        color: Colors.orange,
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            width:170,
                                            height: 60,
                                            padding: const EdgeInsets.only(left:5,top: 10),
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: const [
                                                Text("Special offers for you",style: TextStyle(fontSize: 16,color: Colors.black),),
                                                Text("on first purchase",style: TextStyle(fontSize: 19,color: Colors.black),)
                                              ],
                                            ),
                                          ),
                                          Container(
                                            width:170,
                                            height: 120,
                                            decoration:const BoxDecoration(
                                              image: DecorationImage(
                                                alignment: Alignment.topCenter,
                                                image: AssetImage('assets/images/offer.png'),
                                                fit: BoxFit.scaleDown,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {},
                                    child: Container(
                                      width:170,
                                      height: 200,
                                      margin: const EdgeInsets.only(right: 10),
                                      padding: const EdgeInsets.all(5),
                                      decoration: BoxDecoration(
                                        color: Colors.purple,
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            width:170,
                                            height: 60,
                                            padding: const EdgeInsets.only(left:5,top: 10),
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: const [
                                                Text("Minimum 25% off",style: TextStyle(fontSize: 17,color: Colors.white),),
                                                Text("Washing machines",style: TextStyle(fontSize: 18,color: Colors.white),)
                                              ],
                                            ),
                                          ),
                                          Container(
                                            width:170,
                                            height: 120,
                                            decoration:const BoxDecoration(
                                              image: DecorationImage(
                                                alignment: Alignment.topCenter,
                                                image: AssetImage('assets/images/washing_machine.png'),
                                                fit: BoxFit.scaleDown,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {},
                                    child: Container(
                                      width:170,
                                      height: 200,
                                      margin: const EdgeInsets.only(right: 10),
                                      padding: const EdgeInsets.all(5),
                                      decoration: BoxDecoration(
                                        color: Colors.green,
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            width:170,
                                            height: 60,
                                            padding: const EdgeInsets.only(left:5,top: 10),
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: const [
                                                Text("Get up to",style: TextStyle(fontSize: 19,color: Colors.white),),
                                                Text("Rs.500 cashback",style: TextStyle(fontSize: 19,color: Colors.white),)
                                              ],
                                            ),
                                          ),
                                          Container(
                                            width:170,
                                            height: 120,
                                            decoration:const BoxDecoration(
                                              image: DecorationImage(
                                                alignment: Alignment.topCenter,
                                                image: AssetImage('assets/images/cashback.png'),
                                                fit: BoxFit.scaleDown,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          )
                      )
                  )
                ],
              )
          ),
          Container(
              width: MediaQuery.of(context).size.width,
              height: 55,
              margin: const EdgeInsets.only(bottom: 5),
              color: Colors.white70,
              child:Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                      width: 110,
                      height: 55,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                              width: 40,
                              height: 55,
                              child: Image.asset("assets/images/delivery.png")
                          ),
                          Container(
                              width: 70,
                              height: 55,
                              padding: const EdgeInsets.only(top:8,left: 5),
                              child:Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text("Pay on",style: TextStyle(fontSize: 16,color: Colors.black,fontWeight: FontWeight.w600),),
                                  Text("Delivery",style: TextStyle(fontSize: 16,color: Colors.black,fontWeight: FontWeight.w600),)
                                ],
                              )
                          )
                        ],
                      )
                  ),
                  SizedBox(
                      width: 110,
                      height: 55,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                              width: 40,
                              height: 55,
                              child: Image.asset("assets/images/return.png")
                          ),
                          Container(
                              width: 70,
                              height: 55,
                              padding: const EdgeInsets.only(top:8,left: 5),
                              child:Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text("Easy",style: TextStyle(fontSize: 16,color: Colors.black,fontWeight: FontWeight.w600),),
                                  Text("Returns",style: TextStyle(fontSize: 16,color: Colors.black,fontWeight: FontWeight.w600),)
                                ],
                              )
                          )
                        ],
                      )
                  ),
                  SizedBox(
                      width: 160,
                      height: 55,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                              width: 40,
                              height: 55,
                              child: Image.asset("assets/images/shipping.png")
                          ),
                          Container(
                              width: 120,
                              height: 55,
                              padding: const EdgeInsets.only(top:8, left: 5),
                              child:Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text("Free delivery",style: TextStyle(fontSize: 16,color: Colors.black,fontWeight: FontWeight.w600),),
                                  Text("on first order",style: TextStyle(fontSize: 16,color: Colors.black,fontWeight: FontWeight.w600),)
                                ],
                              )
                          )
                        ],
                      )
                  )
                ],
              )
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 430,
            color:Colors.white,
            padding: const EdgeInsets.all(17),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 400,
                  height: 30,
                  margin: const EdgeInsets.only(bottom: 10),
                  child: const Text("Pocket friendly stores",style: TextStyle(fontSize: 25,color: Colors.black,fontWeight: FontWeight.w500),),
                ),
                SizedBox(
                  width: 400,
                  height: 350,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        width : 400,
                        height: 170,
                        margin: const EdgeInsets.only(bottom: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            GestureDetector(
                              onTap: () {},
                              child: Container(
                                  width: 175,
                                  height: 170,
                                  color: Colors.blue.shade900,
                                  padding: const EdgeInsets.only(top: 40),
                                  child: Column(
                                    children: const [
                                      Align(
                                        alignment: Alignment.center,
                                        child: Text("--- Under ---",style: TextStyle(fontSize: 30,color: Colors.white),),
                                      ),
                                      Align(
                                        alignment: Alignment.center,
                                        child: Text("Rs.199",style: TextStyle(fontSize: 40,color: Colors.white,fontWeight: FontWeight.w900),),
                                      )
                                    ],
                                  )
                              ),
                            ),
                            GestureDetector(
                              onTap: () {},
                              child: Container(
                                  width: 175,
                                  height: 170,
                                  color: Colors.green.shade800,
                                  padding: const EdgeInsets.only(top: 40),
                                  child: Column(
                                    children: const [
                                      Align(
                                        alignment: Alignment.center,
                                        child: Text("--- Under ---",style: TextStyle(fontSize: 30,color: Colors.white),),
                                      ),
                                      Align(
                                        alignment: Alignment.center,
                                        child: Text("Rs.299",style: TextStyle(fontSize: 40,color: Colors.white,fontWeight: FontWeight.w900),),
                                      )
                                    ],
                                  )
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width : 400,
                        height: 170,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            GestureDetector(
                              onTap: () {},
                              child: Container(
                                  width: 175,
                                  height: 170,
                                  color: Colors.brown.shade800,
                                  padding: const EdgeInsets.only(top: 40),
                                  child: Column(
                                    children: const [
                                      Align(
                                        alignment: Alignment.center,
                                        child: Text("--- Under ---",style: TextStyle(fontSize: 30,color: Colors.white),),
                                      ),
                                      Align(
                                        alignment: Alignment.center,
                                        child: Text("Rs.399",style: TextStyle(fontSize: 40,color: Colors.white,fontWeight: FontWeight.w900),),
                                      )
                                    ],
                                  )
                              ),
                            ),
                            GestureDetector(
                              onTap: () {},
                              child: Container(
                                  width: 175,
                                  height: 170,
                                  color: Colors.teal.shade800,
                                  padding: const EdgeInsets.only(top: 40),
                                  child: Column(
                                    children: const [
                                      Align(
                                        alignment: Alignment.center,
                                        child: Text("--- Under ---",style: TextStyle(fontSize: 30,color: Colors.white),),
                                      ),
                                      Align(
                                        alignment: Alignment.center,
                                        child: Text("Rs.499",style: TextStyle(fontSize: 40,color: Colors.white,fontWeight: FontWeight.w900),),
                                      )
                                    ],
                                  )
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
  Widget buildImage(String urlImage, int index) =>
      Container(
        margin: const EdgeInsets.symmetric(horizontal: 0,vertical: 3),
        color: Colors.pinkAccent,
        child: Image.network(
          urlImage,
          fit: BoxFit.fill,
        ),
      );

  Widget buildIndicator() => AnimatedSmoothIndicator(
    activeIndex: activeIndex,
    count: urlImages.length,
    effect: const JumpingDotEffect(
      dotWidth: 7,
      dotHeight: 7,
    ),
  );
}


