import 'package:eduway/feature/cart/view/widgets/cart_card.dart';
import 'package:flutter/material.dart';

class CartBody extends StatelessWidget {
  const CartBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) => CartCard(),
      separatorBuilder: (context, index) => const SizedBox(height: 5),
      itemCount: 5,
    );
  }
}
