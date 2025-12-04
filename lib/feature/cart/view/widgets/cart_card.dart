import 'package:eduway/core/theme/theme_colors.dart';
import 'package:eduway/feature/cart/view/widgets/card_image.dart';
import 'package:eduway/feature/cart/view/widgets/cart_card_body.dart';
import 'package:flutter/material.dart';

class CartCard extends StatelessWidget {
  const CartCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
        color: ThemeColors.backgroundLight,
        elevation: 0,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           CardImage(),
            Expanded(
              child: CartCardBody(),
            ),
          ],
        ),
      );
  }
}