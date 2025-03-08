import 'package:ecommerce_app/presentation/auth/pages/forgot_password_screen.dart';
import 'package:ecommerce_app/presentation/auth/pages/sign_in_screen.dart';
import 'package:ecommerce_app/presentation/auth/pages/sign_up_screen.dart';
import 'package:ecommerce_app/presentation/home/pages/home/home_page.dart';
import 'package:ecommerce_app/presentation/home/pages/shop/product_listing/product_listing_page.dart';
import 'package:ecommerce_app/presentation/home/pages/shop/shop_page.dart';
import 'package:ecommerce_app/presentation/navigation/pages/navigation_page.dart';
import 'package:ecommerce_app/presentation/provider/cloth_new_data/cloth_new_data.dart';
import 'package:ecommerce_app/presentation/provider/cloth_on_sale_data/cloth_on_sale_data.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'core/configs/Theme/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (BuildContext context) => ClothSaleData()),
        ChangeNotifierProvider(create: (BuildContext context) => ClothNewData()),
      ],
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: AppTheme.defaultTheme,
          // initialRoute: SignInScreen.id,
        initialRoute: SignUpScreen.id,
        routes: {
            SignUpScreen.id:(context)=>SignUpScreen(),
            SignInScreen.id:(context)=>SignInScreen(),
            ForgotPasswordScreen.id:(context)=>ForgotPasswordScreen(),
            HomePage.id:(context)=>HomePage(),
            ShopPage.id:(context)=>ShopPage(),
            NavigationScreen.id:(context)=>NavigationScreen(),
            ProductListingPage.id:(context)=>ProductListingPage()
          },
      ),
    );
  }
}


