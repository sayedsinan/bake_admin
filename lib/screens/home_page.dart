import 'package:bake_n_cake_admin_side/color/colors.dart';
import 'package:bake_n_cake_admin_side/screens/customers.dart';
import 'package:bake_n_cake_admin_side/screens/font/styling.dart';
import 'package:bake_n_cake_admin_side/screens/messeage_list.dart';
import 'package:bake_n_cake_admin_side/screens/order.dart';
import 'package:bake_n_cake_admin_side/screens/product%20deails.dart';
import 'package:bake_n_cake_admin_side/screens/widgets/drawer.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class HomePage extends StatelessWidget {
  HomePage({super.key});
  var user = FirebaseAuth.instance.currentUser;
  @override
  Widget build(BuildContext context) {
    var sizeof = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: maincolor,
      drawer: NavDrawer(),
      appBar: AppBar(
        leading: Builder(
          builder: (context) => // Ensure Scaffold is in context
              IconButton(
                  icon: const Icon(
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
          style: heading(20),
        ),
      ),
      body: Column(
        children: [
          const SizedBox(
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
                        Get.to(() => const Orders());
                      },
                      child: Container(
                        height: sizeof.size.height * 0.18,
                        width: sizeof.size.width * 0.4,
                        color: secondColor,
                        child: Column(
                          children: [
                            const SizedBox(height: 20),
                            Row(
                              children: [
                                const SizedBox(
                                  width: 20,
                                ),
                                const Icon(
                                  Icons.shopping_cart,
                                  color: Colors.green,
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "Total sales",
                                  style: GoogleFonts.aBeeZee(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 40,
                            ),
                            const Text("₹31,00")
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
                      height: sizeof.size.height * 0.18,
                      width: sizeof.size.width * 0.4,
                      color: Colors.white,
                      child: Column(
                        children: [
                          const SizedBox(height: 20),
                          Row(
                            children: [
                              const SizedBox(
                                width: 10,
                              ),
                              const Icon(
                                Icons.qr_code_rounded,
                                color: Colors.red,
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Text("Selled Product", style: heading(15))
                            ],
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          const Text("2324")
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
                    child: InkWell(
                      onTap: () {
                        Get.to(() => const Customers());
                      },
                      child: Container(
                        height: sizeof.size.height * 0.18,
                        width: sizeof.size.width * 0.4,
                        color: secondColor,
                        child: Column(
                          children: [
                            const SizedBox(height: 20),
                            Row(
                              children: [
                                const SizedBox(
                                  width: 10,
                                ),
                                const Icon(
                                  Icons.wallet,
                                  color: Colors.yellow,
                                ),
                                const SizedBox(
                                  width: 2,
                                ),
                                Text("Customers Count", style: heading(14))
                              ],
                            ),
                            const SizedBox(
                              height: 40,
                            ),
                            const Text("2324")
                          ],
                        ),
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
                          style: normalstyling(15),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: GestureDetector(
                      onTap: () => Get.to(() => ProductDetails(
                            index: 1,
                          )),
                      child: ListTile(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        leading: const CircleAvatar(
                          backgroundImage: AssetImage('Assets/cake2.jpg'),
                        ),
                        title: const Text("Red velvet Cake"),
                        subtitle: Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            // SizedBox(height: 10,),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(5),
                              child: Container(
                                height: sizeof.size.height * 0.03,
                                width: sizeof.size.width * 0.1,
                                color: Colors.grey.shade300,
                                child: const Center(
                                  child: Text('1.0 kg'),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            Text(
                              "₹ 1,200 ",
                              style: heading(15),
                            )
                          ],
                        ),
                        focusColor: secondColor,
                        tileColor: secondColor,
                      ),
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
