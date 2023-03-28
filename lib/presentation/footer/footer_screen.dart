import 'package:flutter/material.dart';
import 'package:portfolio/presentation/dashboard/widgets/copyright_widget.dart';
import 'package:portfolio/presentation/footer/widgets/links_list.dart';
import 'package:portfolio/presentation/footer/widgets/questions_widget.dart';

import '../../app_constants.dart';



class Footer extends StatefulWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  State<Footer> createState() => _FooterState();
}

class _FooterState extends State<Footer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 439,
      width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.all(84),
        color: CLR.footerColor,
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  LinkList(),
                  Spacer(flex: 1,),
                  QuestionsWidget(),
                ],
              ),
            ),
            CopyrightWidget(type: 2,),
          ],

    ),
    );
  }
}

