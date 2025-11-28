import 'package:eduway/core/constants/assets_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class NotDownloadCouses extends StatelessWidget {
  const NotDownloadCouses({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(child: SvgPicture.asset(AssetsData.courseNoItemDownlaod));
  }
}