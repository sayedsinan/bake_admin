import 'package:bake_n_cake_admin_side/controller/chat_controller.dart';
import 'package:bake_n_cake_admin_side/firebase/product_controller.dart';
import 'package:bake_n_cake_admin_side/firebase_options.dart';

import 'package:bake_n_cake_admin_side/screens/customers.dart';
import 'package:bake_n_cake_admin_side/screens/login_page.dart';
import 'package:bake_n_cake_admin_side/screens/order.dart';
import 'package:bake_n_cake_admin_side/screens/payment.dart';
import 'package:bake_n_cake_admin_side/screens/products.dart';
import 'package:bake_n_cake_admin_side/screens/wrapper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  Get.put(ChatController());
  Get.put(ProdcutController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: '/1',
      routes: {
        '/1': (context) => const Wrapper(),
        '/': (context) => LoginPage(),
        '/screen2': (context) => const Products(),
        '/customers': (context) => const Customers(),
        '/Orders': (context) => const Orders(),
        '/Payment': (context) => const Payment(),
        '/logout': (context) => LoginPage(),
      },

      debugShowCheckedModeBanner: false,
      //  home: ProductsAdding(),
    );
  }
}
