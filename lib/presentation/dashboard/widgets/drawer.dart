import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:portfolio/extensions/typography_extension.dart';
import 'package:portfolio/presentation/dashboard/cubit/dashboard_cubit.dart';
import 'package:portfolio/presentation/dashboard/widgets/copyright_widget.dart';
import 'package:portfolio/presentation/dashboard/widgets/social_accounts_widget.dart';

import '../../../app_constants.dart';
import 'navigation_item.dart';

class NavigationDrawerWidget extends StatefulWidget {
  final int currentIndex;

  const NavigationDrawerWidget({Key? key, required this.currentIndex})
      : super(key: key);

  @override
  State<NavigationDrawerWidget> createState() => _NavigationDrawerWidgetState();
}

class _NavigationDrawerWidgetState extends State<NavigationDrawerWidget> {
  final List<String> _listOfNavigationItem = [
    'Home',
    'Resume',
    'Projects',
    'Contact'
  ];

  @override
  Widget build(BuildContext context) {
    return Drawer(
        backgroundColor: CLR.drawerBackgroundColor,
        elevation: 0,
        width: 476.25,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 45, top: 45, right: 45),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 45),
                      child: RichText(
                        text: TextSpan(
                          text: 'anurag',
                          style: context.headlineLarge!
                              .copyWith(fontWeight: FontWeight.w900),
                          children: const <TextSpan>[
                            TextSpan(
                                text: '.',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: CLR.secondaryTextColor,
                                    fontSize: 60)),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: ListView.builder(
                          padding: const EdgeInsets.only(top: 23),
                          itemCount: _listOfNavigationItem.length,
                          itemBuilder: (context, index) {
                            return GestureDetector(
                              onTap: () {
                                _handleOnTapDrawerItem(index, context);
                              },
                              child: NavigationItemWidget(
                                title: _listOfNavigationItem[index],
                                index: index,
                                currentIndex: widget.currentIndex,
                              ),
                            );
                          }),
                    ),
                    const CopyrightWidget(
                      type: 1,
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    const SocialAccountsWidget()
                  ],
                ),
              ),
            ),
            const VerticalDivider(
              width: 2,
            ),
            const SizedBox(
              width: 9,
            ),
            const VerticalDivider(
              width: 2,
            ),
          ],
        ));
  }

  void _handleOnTapDrawerItem(int index, context) {
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
}
