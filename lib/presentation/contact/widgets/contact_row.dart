import 'package:flutter/material.dart';
import 'package:portfolio/presentation/contact/widgets/info_widget.dart';

class ContactRow extends StatelessWidget {
  const ContactRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<List<String>> list = [
      ['Address','198 West 21th Street,\n Suite 721 New York NY 10016'],
      ['Phone','91+9354994778'],
      ['Email' ,'anuragkumar7416@gmail.com'],
      ['Website','yoursite@domain.com'],
    ];

    return Padding(
      padding: const EdgeInsets.only(top: 24,bottom: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          for(final i in list)
            InfoWidget(keyText: i[0],value:i[1]),
        ],
      ),
    );
  }
}
