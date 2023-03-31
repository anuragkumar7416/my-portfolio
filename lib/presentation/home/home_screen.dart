import 'package:flutter/material.dart';
import 'package:portfolio/presentation/home/widgets/about_widget.dart';

import 'package:portfolio/presentation/projects/widgets/projects_widget.dart';
import '../footer/footer_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          AboutWidget(),
          ProjectsWidget(),
          const Footer(),
        ],
      ),
    );
  }
}
