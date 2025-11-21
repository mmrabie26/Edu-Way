import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:eduway/core/constants/assets_data.dart';

class AuthTitle extends StatelessWidget {
  const AuthTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.only(
        top: MediaQuery.of(context).size.height * 0.12,
        bottom: MediaQuery.of(context).size.height * 0.03,
      ),
      child: SvgPicture.asset(AssetsData.appLogo),
    );
  }
}
