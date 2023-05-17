import 'package:flutter/material.dart';
import 'package:portfolio/presentation/home/widgets/about_widget.dart';

import 'package:portfolio/presentation/projects/widgets/projects_widget.dart';
import '../../services/analytics_service.dart';
import '../footer/footer_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    AnalyticsService.logEvent("openHomePage");
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          LayoutBuilder(
            builder: (context,dimens) {
              if(dimens.maxWidth>425){
                return SizedBox(
                    height:800,
                    width: MediaQuery.of(context).size.width,
                    child: AboutWidget());
              }else{
                return SizedBox(
                    height:600,
                    width: MediaQuery.of(context).size.width,
                    child: AboutWidget());
              }

            }
          ),
          ProjectsWidget(),
          const Footer(),
        ],
      ),
    );
  }
}
