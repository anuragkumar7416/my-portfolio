import 'package:flutter/material.dart';
import 'package:portfolio/presentation/contact/widgets/contact_textfield.dart';
import 'package:portfolio/presentation/contact/widgets/submit_bt.dart';

class ContactForm extends StatefulWidget {
  const ContactForm({Key? key}) : super(key: key);

  @override
  State<ContactForm> createState() => _ContactFormState();
}

class _ContactFormState extends State<ContactForm> {
  @override
  Widget build(BuildContext context) {

    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(left: 30,right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: const [
            ContactTextField(hintText: 'Your Name',maxLines: 1,),
            ContactTextField(hintText: 'Your Email',maxLines: 1),
            ContactTextField(hintText: 'Subject',maxLines: 1),
            ContactTextField(hintText: 'Your Message',maxLines: 7),
            SubmitBt(),
          ],

        ),
      ),
    );
  }
}
