import 'package:bake_n_cake_admin_side/color/colors.dart';
import 'package:bake_n_cake_admin_side/controller/product_controller.dart';
import 'package:bake_n_cake_admin_side/firebase/product_services.dart';
import 'package:bake_n_cake_admin_side/screens/adding_product.dart';
import 'package:bake_n_cake_admin_side/screens/font/styling.dart';
import 'package:bake_n_cake_admin_side/screens/product%20deails.dart';
import 'package:bake_n_cake_admin_side/screens/product_editing.dart';
import 'package:bake_n_cake_admin_side/screens/widgets/drawer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Products extends StatelessWidget {
  const Products({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(ProdcutController());
    FireaBaseServices fireaBaseServices = FireaBaseServices();
    final controller = Get.find<ProdcutController>();

    var sizeof = MediaQuery.of(context);
    return Scaffold(
      drawer: NavDrawer(),
      backgroundColor: maincolor,
      appBar: AppBar(
        leading: Builder(
          builder: (context) => IconButton(
              icon: Icon(
                Icons.menu,
                color: Colors.black,
              ),
              onPressed: () => Scaffold.of(context).openDrawer()),
        ),
        backgroundColor: maincolor,
        title: Text(
          "               Products",
          style: heading(20),
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
                      color: secondColor,
                      height: sizeof.size.height * 0.05,
                      width: sizeof.size.width * 0.4,
                      child: Row(
                        children: [
                          const SizedBox(
                            width: 10,
                          ),
                          const Icon(Icons.calendar_today_outlined),
                          const SizedBox(
                            width: 10,
                          ),
                          Text("Selected Dates", style: heading(14))
                        ],
                      ),
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: GestureDetector(
                      onTap: () {
                        Get.to(const ProductsAdding());
                      },
                      child: Container(
                        color: secondColor,
                        height: sizeof.size.height * 0.05,
                        width: sizeof.size.width * 0.4,
                        child: Row(
                          children: [
                            const Icon(
                              Icons.add,
                              size: 40,
                              weight: .100,
                            ),
                            const SizedBox(width: 10),
                            Text("Add products", style: heading(14))
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
                child: GestureDetector(
                  onTap: () {
                    Get.to(ProductDetails());
                  },
                  child: ListTile(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    leading: const CircleAvatar(
                      backgroundImage: AssetImage('Assets/cake3.jpg'),
                    ),
                    tileColor: secondColor,
                    title: Row(
                      children: [
                        Text("Red Velvet Cake", style: normalstyling(15)),
                        const SizedBox(
                          width: 30,
                        ),
                        const Text("₹1,200"),
                        const SizedBox(
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
                      style: normalstyling(15),
                    ),
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
