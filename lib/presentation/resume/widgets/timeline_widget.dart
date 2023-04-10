
import 'package:flutter/material.dart';
import 'package:portfolio/presentation/resume/widgets/organisation_text.dart';
import 'package:portfolio/presentation/resume/widgets/timeline_desc.dart';
import 'package:portfolio/presentation/resume/widgets/timeline_header.dart';
import 'package:timeline_tile/timeline_tile.dart';

import '../../../classes/timeline_data.dart';

class TimelineWidget extends StatelessWidget {
  final TimelineData timelineData;
  const TimelineWidget({Key? key, required this.timelineData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  TimelineTile(
      alignment: TimelineAlign.manual,
      lineXY: 0.2,
      indicatorStyle: const IndicatorStyle(
        color: Colors.black,
        width: 20,
        height: 20,
        padding: EdgeInsets.only(right: 15,left: 15),
        indicatorXY: 0.0

      ),
      endChild: Container(
        constraints: const BoxConstraints(
          minHeight: 100,
        ),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
           TimelineHeader(heading: timelineData.designation),
            OrganisationName(orgName: timelineData.organisation),
            TimelineDesc(desc: timelineData.desc,),
          ],
        ),
      ),
      startChild: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          TimelineHeader(heading: timelineData.period),
        ],
      ),
    );
  }
}
