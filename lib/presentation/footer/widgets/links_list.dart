import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:portfolio/extensions/typography_extension.dart';
import 'package:portfolio/presentation/footer/widgets/footer_title.dart';
import 'package:portfolio/presentation/footer/widgets/links_widget.dart';

import '../../../app_constants.dart';

class LinkList extends StatelessWidget {
  const LinkList({Key? key}) : super(key: key);

  void _handleOnTapLinkItem(int index, context) {
    if (index == 0) {
      GoRouter.of(context).go(RoutesName.home);
    } else if (index == 1) {
      GoRouter.of(context).go(RoutesName.resume);
    } else if (index == 2) {
      GoRouter.of(context).go(RoutesName.projects);
    } else if (index == 3) {
      GoRouter.of(context).go(RoutesName.contact);
    }
  }

  @override
  Widget build(BuildContext context) {
    final List<String> listOfNavigationItem = [
      'Home',
      'Resume',
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
              physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: ()=>_handleOnTapLinkItem(index, context),
                      child: LinkWidget(linkName: listOfNavigationItem[index]));
                },
                separatorBuilder: (context, index) {
                  return const Divider(
                    height: 25,

                    thickness: 0.4,

                    color: CLR.secondaryTextColor,
                  );
                },
                itemCount: listOfNavigationItem.length),
          ),
        ],
      ),
    );
  }
  
}
