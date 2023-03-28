import 'package:flutter/material.dart';
import 'package:portfolio/presentation/contact/widgets/contact_textfield.dart';

class ContactForm extends StatefulWidget {
  const ContactForm({Key? key}) : super(key: key);

  @override
  State<ContactForm> createState() => _ContactFormState();
}

class _ContactFormState extends State<ContactForm> {
  @override
  Widget build(BuildContext context) {

    return Column(
      children: [
        ContactTextField(hintText: 'Your Name'),
      ],

    );
  }
}
