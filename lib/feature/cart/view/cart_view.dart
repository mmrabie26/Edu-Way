import 'package:eduway/core/widgets/defualt_app_bar.dart';
import 'package:eduway/feature/cart/view/widgets/cart_body.dart';
import 'package:flutter/material.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefualtAppBar(title: "Cart",leadingWidgets: false,),
      body: CartBody(),
    );
  }
}