import 'package:flutter/material.dart';
import 'package:portfolio/presentation/resume/widgets/timeline_header.dart';
import 'package:timeline_tile/timeline_tile.dart';

import 'phase_name.dart';

class PhaseTimeline extends StatelessWidget {
  final String phase;
  final IconData icon;
  const PhaseTimeline({Key? key, required this.phase, required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Column(
      children: [
        TimelineTile(
          alignment: TimelineAlign.manual,
          lineXY: 0.2,
          indicatorStyle: IndicatorStyle(
            width: 40,
            height: 40,
            indicatorXY: 0,
            padding: const EdgeInsets.only(right: 15,left: 15),
            indicator: Container(

                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(20),

                ),
                child: Icon(icon,color: Colors.white,)),


          ),
          endChild: Container(
            constraints: const BoxConstraints(
              minHeight: 100,
            ),


            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                PhaseName(heading:phase)
              ],
            ),
          ),
          startChild: Container(


          ),

        )
      ],
    );
  }
}