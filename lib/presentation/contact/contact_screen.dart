import 'package:flutter/material.dart';
import 'package:portfolio/commonWidgets/page_header.dart';
import 'package:portfolio/presentation/contact/widgets/contact_form.dart';
import 'package:portfolio/presentation/contact/widgets/contact_row.dart';
import 'package:portfolio/presentation/contact/widgets/map_view.dart';

import '../footer/footer_screen.dart';



class ContactScreen extends StatefulWidget {
  const ContactScreen({Key? key}) : super(key: key);

  @override
  State<ContactScreen> createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(90.0),
            child: Column(
              children: [
                const PageHeader(heading: 'Contact Information'),
                const ContactRow(),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    MapView(),
                    ContactForm()
                  ],
                ),
              ],
            ),
          ),


          //Spacer(flex: 1,),
          const Footer(),


        ],
      ),
    );
  }
}

