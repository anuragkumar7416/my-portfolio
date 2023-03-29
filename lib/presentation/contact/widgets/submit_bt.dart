import 'package:flutter/material.dart';

import '../../../app_constants.dart';

class SubmitBt extends StatefulWidget {
  const SubmitBt({Key? key}) : super(key: key);

  @override
  State<SubmitBt> createState() => _SubmitBtState();
}

class _SubmitBtState extends State<SubmitBt> {

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {},
        style: ButtonStyle(
          foregroundColor: MaterialStateProperty.resolveWith<Color?>(
              (Set<MaterialState> states) {
            if (states.contains(MaterialState.hovered)) {
              return CLR.orangeShade;
            }
            return Colors.white;
          }),
          backgroundColor: MaterialStateProperty.resolveWith<Color?>(
              (Set<MaterialState> states) {
            if (states.contains(MaterialState.hovered)) {
              return Colors.white;
            }
            return CLR.orangeShade;
          }),
          fixedSize: MaterialStateProperty.resolveWith<Size?>(
              (Set<MaterialState> states) {
            return const Size(214.03, 58);
          }),
          shape: MaterialStateProperty.resolveWith<OutlinedBorder?>(
              (Set<MaterialState> states) {
            return RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
                side: states.contains(MaterialState.hovered)
                    ? const BorderSide(
                        color: CLR.orangeShade, style: BorderStyle.solid)
                    : BorderSide.none);
          }),
        ),
        child: const Text('Send Message'));
  }
}
