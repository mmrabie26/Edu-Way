import 'package:cached_network_image/cached_network_image.dart';
import 'package:eduway/core/constants/assets_data.dart';
import 'package:eduway/core/theme/theme_colors.dart';
import 'package:eduway/feature/cart/view/widgets/cart_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/svg.dart';

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
