import 'package:bake_n_cake_admin_side/color/colors.dart';
import 'package:bake_n_cake_admin_side/firebase/product_controller.dart';
import 'package:bake_n_cake_admin_side/model/products.dart';

import 'package:bake_n_cake_admin_side/screens/adding_product.dart';
import 'package:bake_n_cake_admin_side/screens/font/styling.dart';
import 'package:bake_n_cake_admin_side/screens/product%20deails.dart';
import 'package:bake_n_cake_admin_side/screens/product_editing.dart';
import 'package:bake_n_cake_admin_side/screens/widgets/drawer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Products extends StatefulWidget {
  const Products({Key? key}) : super(key: key);

  @override
  State<Products> createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  final productController =
      ProdcutController(); // Initialize the controller here

  @override
  void initState() {
    super.initState();
    // Perform initialization tasks here, such as fetching data
    productController.getProducts();
  }

  @override
  Widget build(BuildContext context) {
    var sizeof = MediaQuery.of(context);

    return Scaffold(
      drawer: NavDrawer(),
      backgroundColor: maincolor,
      appBar: AppBar(
        leading: Builder(
          builder: (context) => IconButton(
            icon: const Icon(
              Icons.menu,
              color: Colors.black,
            ),
            onPressed: () => Scaffold.of(context).openDrawer(),
          ),
        ),
        backgroundColor: maincolor,
      centerTitle: true,
        title: Text(
          " Products",
        
          style: heading(20),
        ),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: GetBuilder<ProdcutController>(
          init: productController, // Use the initialized controller
          builder: (controller) {
            return Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: EdgeInsets.all(30),
                  child: TextField(
                    onChanged: (Value) {
                      controller.filterProducts(Value);
                    },
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
                    ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: controller.productslist.length,
                      itemBuilder: (context, index) {
                        ProductModel product = controller.productslist[index];

                        return Padding(
                          padding: const EdgeInsets.all(20),
                          child: GestureDetector(
                            onTap: () {
                              Get.to(ProductDetails(index: index));
                            },
                            child: ListTile(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                              leading: CircleAvatar(
                                backgroundImage: NetworkImage(
                                  controller.productslist[index].image
                                      .toString(),
                                ),
                              ),
                              tileColor: secondColor,
                              title: Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      controller.productslist[index].name,
                                      style: normalstyling(15),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Text(
                                    "₹${controller.productslist[index].price.toString()}",
                                  ),
                                  const SizedBox(
                                    width: 8,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      Get.to(ProductEditing(
                                        index: index,
                                      ));
                                    },
                                    child: const Icon(Icons.edit),
                                  ),
                                  GestureDetector(
                                    onTap: () async {
                                      try {
                                        showDialog(
                                            context: context,
                                            builder: ((context) {
                                              return AlertDialog(
                                                  title: Text(
                                                    "Are you sure ?",
                                                    style: heading(20),
                                                  ),
                                                  actions: [
                                                    TextButton(
                                                      onPressed: () {
                                                        Navigator.pop(context);
                                                      },
                                                      child: Text(
                                                        "NO",
                                                        style:
                                                            normalstyling(15),
                                                      ),
                                                    ),
                                                    TextButton(
                                                        onPressed: () async {
                                                          Navigator.pop(
                                                              context);
                                                          await controller
                                                              .deleteProduct(
                                                                  product.id);
                                                          await controller
                                                              .getProducts();
                                                        },
                                                        child: Text(
                                                          "YES",
                                                          style:
                                                              normalstyling(15),
                                                        ))
                                                  ]);
                                            }));
                                      } catch (error) {
                                        // Show a snackbar or any other error handling mechanism
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(SnackBar(
                                          content:
                                              Text("Failed to delete product"),
                                        ));
                                      }
                                    },
                                    child: Icon(
                                      Icons.delete,
                                      color: Colors.red,
                                    ),
                                  )
                                ],
                              ),
                              subtitle: Text(
                                "Prodcut ID #204282",
                                style: normalstyling(15),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
