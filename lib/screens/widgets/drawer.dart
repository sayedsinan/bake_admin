import 'package:bake_n_cake_admin_side/color/colors.dart';
import 'package:bake_n_cake_admin_side/controller/login&signout.dart';
import 'package:bake_n_cake_admin_side/screens/customers.dart';
import 'package:bake_n_cake_admin_side/screens/home_page.dart';
import 'package:bake_n_cake_admin_side/screens/order.dart';
import 'package:bake_n_cake_admin_side/screens/payment.dart';
import 'package:bake_n_cake_admin_side/screens/products.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
                color: maincolor,
                image: const DecorationImage(
                    fit: BoxFit.fill, image: AssetImage(''))),
            child: Text(
              "Bake 'n Cake ",
              style: GoogleFonts.aBeeZee(color: Colors.black, fontSize: 25),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.move_up_rounded),
            title: const Text('Dash Board'),
            onTap: () => {Get.to(HomePage())},
          ),
          ListTile(
            leading: const Icon(Icons.shopping_bag_rounded),
            title: const Text('Product'),
            onTap: () => {
              Navigator.pushNamed(context, '/screen2'),
              Get.to(Products()),
              Navigator.of(context).pop()
            },
          ),
          ListTile(
            leading: Icon(Icons.account_circle_rounded),
            title: Text('Customers'),
            onTap: () => {
              Get.to(Customers()),
              Navigator.pushNamed(context, '/Customers'),
              Navigator.of(context).pop()
            },
          ),
          ListTile(
            leading: const Icon(Icons.shopping_cart),
            title: Text('Orders'),
            onTap: () => {
              Get.to(Orders()),
              Navigator.pushNamed(context, '/Orders'),
              Navigator.of(context).pop()
            },
          ),
          GestureDetector(
            onTap: () {
              Get.to(Orders());
            },
            child: ListTile(
              leading: Icon(Icons.money),
              title: Text('Payment'),
              onTap: () => {
                Get.to(Payment()),
                Navigator.pushNamed(context, '/Payment'),
                Navigator.of(context).pop()
              },
            ),
          ),
          GestureDetector(
           
            child: ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text('Logout'),
              onTap: () async=> {
                await signout(),
                Navigator.of(context).pop(),
               },
            ),
          ),
        ],
      ),
    );
  }
}
