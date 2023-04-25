import 'package:flutter/material.dart';

import '../../../app_constants.dart';

class ContactTextField extends StatelessWidget {
  final String hintText;
  final int maxLines;
  final TextEditingController controller;
  final String? Function(String? val) validator;

  const ContactTextField(
      {Key? key,
      required this.hintText,
      required this.maxLines,
      required this.validator,
      required this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: TextFormField(
        controller: controller,
        cursorColor: Colors.black,
        maxLines: maxLines,
        validator: validator,
        decoration: InputDecoration(
          hintText: hintText,
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black, width: 1.0),
            borderRadius: BorderRadius.zero,
          ),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: CLR.secondaryTextColor, width: 1.0),
            borderRadius: BorderRadius.zero,
          ),
          errorBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.red, width: 1.0),
            borderRadius: BorderRadius.zero,
          ),
          focusedErrorBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.red, width: 1.0),
            borderRadius: BorderRadius.zero,
          ),
          fillColor: Colors.white,
          filled: true,
        ),
      ),
    );
  }
}
