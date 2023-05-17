import 'package:flutter/material.dart';
import 'package:portfolio/commonWidgets/page_header.dart';
import 'package:portfolio/presentation/contact/widgets/contact_form.dart';
import 'package:portfolio/presentation/contact/widgets/contact_row.dart';
import 'package:portfolio/presentation/contact/widgets/map_view.dart';

import '../../services/analytics_service.dart';
import '../footer/footer_screen.dart';

class ContactScreen extends StatefulWidget {
  const ContactScreen({Key? key}) : super(key: key);

  @override
  State<ContactScreen> createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {


  @override
  void initState() {
    AnalyticsService.logEvent("openContactPage");
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    double maxWidth = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(top: 90),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Align(
                alignment: Alignment.center,
                child: PageHeader(heading: 'Contact Information')),
            Padding(
              padding: maxWidth>850? const EdgeInsets.fromLTRB(90, 0, 90, 90):  const EdgeInsets.fromLTRB(30, 0, 30, 90),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const ContactRow(),
                  maxWidth > 850
                      ? Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            MapView(),
                            ContactForm(),
                          ],
                        )
                      : Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            SizedBox(
                                height: 600, child: ContactForm()),
                            MapView(),
                          ],
                        ),
                ],
              ),
            ),
            const Footer(),
          ],
        ),
      ),
    );
  }
}
