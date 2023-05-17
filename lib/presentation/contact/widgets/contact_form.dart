import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/models/PostMessage.dart';
import 'package:portfolio/presentation/contact/widgets/contact_textfield.dart';
import 'package:portfolio/presentation/contact/widgets/submit_bt.dart';

class ContactForm extends StatefulWidget {
  const ContactForm({Key? key}) : super(key: key);

  @override
  State<ContactForm> createState() => _ContactFormState();
}

class _ContactFormState extends State<ContactForm> {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final subjectController = TextEditingController();
  final messageController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    double maxWidth = MediaQuery.of(context).size.width;

    if (maxWidth > 850) {
      return Expanded(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: _buildForm(),
        ),
      );
    } else {
      return _buildForm();
    }
  }

  Widget _buildForm() {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ContactTextField(
            hintText: 'Your Name',
            maxLines: 1,
            validator: (value) => emptyFieldValidation(value),
            controller: nameController,
          ),
          ContactTextField(
            hintText: 'Your Email',
            maxLines: 1,
            validator: (value) => emailValidation(value),
            controller: emailController,
          ),
          ContactTextField(
            hintText: 'Subject',
            maxLines: 1,
            validator: (value) => emptyFieldValidation(value),
            controller: subjectController,
          ),
          ContactTextField(
            hintText: 'Your Message',
            maxLines: 7,
            validator: (value) => emptyFieldValidation(value),
            controller: messageController,
          ),
          SubmitBt(
            formKey: _formKey,
            onPress: ()=> onSubmitClick(context),
          ),
        ],
      ),
    );
  }

  void onSubmitClick(context) async {
    if (_formKey.currentState!.validate()) {
      PostMessage message = PostMessage(
          name: nameController.text,
          email: emailController.text,
          subject: subjectController.text,
          message: messageController.text);
      var  response = await postMessage(message);
      const snackBar = SnackBar(
        content: Text("Submitted Form"),
        backgroundColor: Colors.green,
      );


      if (response == "Success") {
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
        nameController.clear();
        emailController.clear();
        subjectController.clear();
        messageController.clear();
      }
    }
  }

  String? emptyFieldValidation(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter some text';
    }
    return null;
  }

  String? emailValidation(String? value) {
    RegExp regExp = RegExp(
      r'^[a-zA-Z0-9-._]+@[a-z]+\.[a-z]{2,3}$',
    );
    if (value == null || value.isEmpty) {
      return 'Please enter some text';
    } else if (!regExp.hasMatch(value)) {
      return 'Please enter a valid email';
    }
    return null;
  }

  Future<String> postMessage(PostMessage message) async {
    final dio = Dio();

    final response = await dio.get(
      'https://script.google.com/macros/s/AKfycbwPjAq--vGhbuv1mkKsqxEIyLF3YEptExmq0p0BF7zqIFV2g4XcXISx4OcpizKVtPhaWA/exec',
      queryParameters: message.toJson(),
    );

    if (response.statusCode == 200) {
      return response.data;
    } else {
      throw Exception('Failed to post Message');
    }
  }
}
