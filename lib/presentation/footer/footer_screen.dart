import 'package:flutter/material.dart';
import 'package:portfolio/extensions/breakpoints_extension.dart';
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
    return LayoutBuilder(
      builder: (context,dimens) {
        return Container(
          height: dimens.isTablet? 439:870,
          width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.all(84),
            color: CLR.footerColor,
            child: Column(
              children: [
                dimens.isTablet?Expanded(
                  child: Row(
                    children: const [
                      LinkList(),
                      Spacer(flex: 1,),
                      QuestionsWidget(),
                    ],
                  ),
                ):Expanded(
                  child: Column(children: const [
                    LinkList(),
                    SizedBox(height:50,),
                    QuestionsWidget(),
                    Spacer(flex: 1,)

                  ],),
                ),
                const CopyrightWidget(type: 2,),
              ],

        ),
        );
      }
    );
  }
}

