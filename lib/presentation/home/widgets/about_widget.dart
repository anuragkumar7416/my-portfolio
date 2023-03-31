import 'package:flutter/material.dart';

import '../../../app_constants.dart';
import 'about_text.dart';
import 'circular_photo.dart';
import 'hello_text.dart';
import 'more_widget.dart';
import 'name_text.dart';
import 'parallex_effect.dart';

class AboutWidget extends StatelessWidget {
  final GlobalKey _backgroundImageKey = GlobalKey();

  AboutWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 16 / 9,
      child: Stack(
        children: [
          _buildParallaxBackground(context),
          //_buildGradient(),
          _buildBg(context)






        ],
      ),
    );
  }

  Widget _buildGradient() {
    return Positioned.fill(
      child: DecoratedBox(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.transparent, Colors.black.withOpacity(0.7)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: const [0.6, 0.95],
          ),
        ),
      ),
    );
  }

  Widget _buildBg(BuildContext context){
    return  Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        //color: Colors.white60.withOpacity(0.7),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          CircularPhoto(),
          HelloText(),
          NameText(),
          AboutText(),
          MoreWidget(),
        ],
      ),
    );
  }



  Widget _buildParallaxBackground(BuildContext context) {
    return Flow(
      delegate: ParallaxFlowDelegate(
        scrollable: Scrollable.of(context),
        listItemContext: context,
        backgroundImageKey: _backgroundImageKey,
      ),
      children: [
        Image.asset(
          key: _backgroundImageKey,
          ImagePaths.aboutBackground,
          fit: BoxFit.cover,
        ),
      ],
    );
  }
}