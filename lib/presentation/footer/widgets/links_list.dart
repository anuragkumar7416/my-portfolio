import 'package:flutter/material.dart';
import 'package:portfolio/extensions/typography_extension.dart';
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
      child: Padding(
        padding: const EdgeInsets.only(top:84,bottom: 84),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Links',style: context.titleLarge!.copyWith(color: Colors.white,fontWeight: FontWeight.w700),),
            const SizedBox(height: 40,),
            Expanded(
              child: ListView.separated(
                  itemBuilder: (context, index) {
                    return LinkWidget(linkName: _listOfNavigationItem[index]);
                  },
                  separatorBuilder: (context, index) {
                    return const Divider(

                      color: CLR.secondaryTextColor,
                    );
                  },
                  itemCount: _listOfNavigationItem.length),
            ),
          ],
        ),
      ),
    );
  }
}
