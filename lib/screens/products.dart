import 'package:bake_n_cake_admin_side/screens/adding_product.dart';
import 'package:bake_n_cake_admin_side/screens/product_editing.dart';
import 'package:bake_n_cake_admin_side/screens/widgets/drawer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class Products extends StatelessWidget {
  const Products({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      backgroundColor: const Color(0xFFB5DBCE),
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
        backgroundColor: const Color(0xFFB5DBCE),
        title: const Text(
          "               Products",
          style: TextStyle(color: Colors.black),
        ),
        elevation: 0,
      ),
      body: ListView(
        children: [
          const SizedBox(
            height: 10,
          ),
          const Padding(
            padding: EdgeInsets.all(30),
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Search',
                hintText: 'Enter search term',
                suffixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                ),
              ),
            ),
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      color: Colors.white,
                      height: 40,
                      width: 150,
                      child: Row(
                        children: [
                          const Icon(Icons.calendar_today_outlined),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Selected Dates",
                            style: GoogleFonts.aBeeZee(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: GestureDetector(
                      onTap: () {
                        Get.to(ProductsAdding());
                      },
                      child: Container(
                        color: Colors.white,
                        height: 40,
                        width: 150,
                        child: Row(
                          children: [
                            const Icon(
                              Icons.add,
                              size: 40,
                              weight: .100,
                            ),
                            const SizedBox(width: 10),
                            Text(
                              "Add products",
                              style: GoogleFonts.aBeeZee(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: ListTile(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  leading: CircleAvatar(),
                  tileColor: Colors.white,
                  title: Row(
                    children: [
                      Text(
                        "Red Velvet Cake",
                        style: GoogleFonts.aBeeZee(color: Colors.black),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Text("₹1,200"),
             SizedBox(
                        width: 10,
                      ),
                      GestureDetector(
                          onTap: () {
                            Get.to(ProductEdititng());
                          },
                          child: Icon(Icons.edit)),
                      Icon(
                        Icons.delete,
                        color: Colors.red,
                      )
                    ],
                  ),
                  subtitle: Text(
                    "Order ID #204282",
                    style: GoogleFonts.aBeeZee(color: Colors.black),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
