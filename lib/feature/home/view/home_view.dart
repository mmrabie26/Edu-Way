import 'package:eduway/feature/home/view/widgets/custom_nav_bar.dart';
import 'package:eduway/feature/home/view/widgets/home_app_bar.dart';
import 'package:eduway/feature/home/view/widgets/home_body.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeAppBar(userName: "John Doe",onTap: (){},),
      body: HomeBody(),
      bottomNavigationBar: CustomNavBar(),
    );
  }
}

