import 'package:flutter/material.dart';

import '../../../app_constants.dart';

class ContactTextField extends StatelessWidget {
  final String hintText;
  const ContactTextField({Key? key, required this.hintText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: hintText,
        border:OutlineInputBorder(
          borderSide:BorderSide(color: CLR.secondaryTextColor),

        )


      ),

    );
  }
}
