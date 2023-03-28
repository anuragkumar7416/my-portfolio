import 'package:flutter/material.dart';
import 'package:portfolio/extensions/typography_extension.dart';
import 'package:portfolio/presentation/footer/widgets/footer_title.dart';
import 'package:portfolio/presentation/footer/widgets/links_widget.dart';

import '../../../app_constants.dart';

class LinkList extends StatelessWidget {
  const LinkList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> _listOfNavigationItem = [
      'Home',
      'About',
      'Projects',
      'Contact'
    ];

    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const FooterTitle(text: 'Links'),
          const SizedBox(height: 20,),
          Expanded(
            child: ListView.separated(
                itemBuilder: (context, index) {
                  return LinkWidget(linkName: _listOfNavigationItem[index]);
                },
                separatorBuilder: (context, index) {
                  return const Divider(
                    height: 25,

                    thickness: 0.4,

                    color: CLR.secondaryTextColor,
                  );
                },
                itemCount: _listOfNavigationItem.length),
          ),
        ],
      ),
    );
  }
}
