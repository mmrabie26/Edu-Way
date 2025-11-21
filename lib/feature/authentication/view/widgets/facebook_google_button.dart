import 'package:eduway/core/constants/assets_data.dart';
import 'package:eduway/core/widgets/default_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class FacebookGoogleButton extends StatelessWidget {
  const FacebookGoogleButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
          flex: 2,
          child: FilledButton.icon(
            onPressed: () {},
            style: FilledButton.styleFrom(
              backgroundColor: Colors.blue,
              foregroundColor: Colors.white,
            ),
            icon: Icon(Icons.facebook, size: 25),
            label: Text(
              "Sign in with facebook",
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ),
        Flexible(
          flex: 1,
          child: DefaultButton(
            buttonStyle: FilledButton.styleFrom(
              minimumSize: Size(70, 50),
              backgroundColor: Colors.white,
              shape: RoundedRectangleBorder().copyWith(
                borderRadius: BorderRadius.circular(15),
                side: BorderSide(color: Colors.grey, width: 1),
              ),
            ),
            child: SvgPicture.asset(AssetsData.google),
          ),
        ),
      ],
    );
  }
}
