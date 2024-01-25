import 'package:bake_n_cake_admin_side/screens/messeage_list.dart';
import 'package:bake_n_cake_admin_side/screens/products.dart';
import 'package:bake_n_cake_admin_side/screens/widgets/drawer.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  var user = FirebaseAuth.instance.currentUser;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFB5DBCE),
      drawer: NavDrawer(),
      appBar: AppBar(
        leading: Builder(
          builder: (context) => // Ensure Scaffold is in context
              IconButton(
                  icon: Icon(
                    Icons.menu,
                    color: Colors.black,
                  ),
                  onPressed: () => Scaffold.of(context).openDrawer()),
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.chat, color: Colors.black),
            onPressed: () {
              Get.to(const Messeage());
            },
          ),
        ],
        elevation: 0,
        backgroundColor: const Color(0xFFB5DBCE),
        title: Text(
          "         Bake'n Cake",
          style: GoogleFonts.aBeeZee(
            color: Colors.black,
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: GestureDetector(
                      onTap: () {
                        Get.to(Products());
                      },
                      child: Container(
                        height: 150,
                        width: 150,
                        color: Colors.white,
                        child: Column(
                          children: [
                            SizedBox(height: 20),
                            Row(
                              children: [
                                SizedBox(
                                  width: 20,
                                ),
                                Icon(
                                  Icons.shopping_cart,
                                  color: Colors.green,
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Text(
                                  "Total sales",
                                  style: GoogleFonts.aBeeZee(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 40,
                            ),
                            Text("₹31,00")
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      height: 150,
                      width: 150,
                      color: Colors.white,
                      child: Column(
                        children: [
                          SizedBox(height: 20),
                          Row(
                            children: [
                              SizedBox(
                                width: 10,
                              ),
                              Icon(
                                Icons.qr_code_rounded,
                                color: Colors.red,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text("Selled Product",
                                  style: GoogleFonts.aBeeZee(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold))
                            ],
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          Text("2324")
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      height: 150,
                      width: 150,
                      color: Colors.white,
                      child: Column(
                        children: [
                          SizedBox(height: 20),
                          Row(
                            children: [
                              SizedBox(
                                width: 10,
                              ),
                              Icon(
                                Icons.wallet,
                                color: Colors.yellow,
                              ),
                              SizedBox(
                                width: 2,
                              ),
                              Text(
                                "Customers Count",
                                style: GoogleFonts.aBeeZee(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          Text("2324")
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Top Selling Products',
                          style: GoogleFonts.aBeeZee(color: Colors.black),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: ListTile(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      leading: CircleAvatar(),
                      title: Text("Red velvet Cake"),
                      subtitle: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // SizedBox(height: 10,),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(5),
                            child: Container(
                              height: 20,
                              width: 50,
                              color: Colors.grey.shade300,
                              child: const Center(
                                child: Text('1.0 kg'),
                              ),
                            ),
                          ),
                          // SizedBox(width: 10,),
                          Text(
                            "₹ 1,200 ",
                            style: GoogleFonts.aBeeZee(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      focusColor: Colors.white,
                      tileColor: Colors.white,
                    ),
                  )
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
