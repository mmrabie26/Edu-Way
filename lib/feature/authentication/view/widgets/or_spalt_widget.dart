import 'package:flutter/material.dart';
import 'package:eduway/generated/l10n.dart';

class OrSpaltWidget extends StatelessWidget {
  const OrSpaltWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Flexible(
                      child: Divider(
                        color: Color.fromRGBO(158, 158, 158, 1),
                        height: 1,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text(S.of(context).auth_or, style: TextStyle(fontSize: 20)),
                    ),
                    Flexible(child: Divider(color: Colors.grey, height: 1)),
                  ],
                );
  }
}