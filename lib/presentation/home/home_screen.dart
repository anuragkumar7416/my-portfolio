import 'package:flutter/material.dart';
import 'package:portfolio/presentation/home/widgets/about_text.dart';
import 'package:portfolio/presentation/home/widgets/circular_photo.dart';
import 'package:portfolio/presentation/home/widgets/hello_text.dart';
import 'package:portfolio/presentation/home/widgets/more_widget.dart';
import 'package:portfolio/presentation/home/widgets/name_text.dart';

import '../footer/footer_screen.dart';
import '../projects/projects_screen.dart';



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
          Stack(
            children: [

              Image.network('https://themewagon.github.io/elen/images/bg_1.jpg'),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                  color:Colors.white60.withOpacity(0.7),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                  CircularPhoto(),
                  HelloText(),
                  NameText(),
                  AboutText(),
                  MoreWidget(),

                ],),
              )

            ],
          ),
          ProjectsScreen(),
          Footer(),
        ],
      ),
    );
  }
}

