import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/classes/timeline_data.dart';
import 'package:portfolio/commonWidgets/page_header.dart';
import 'package:portfolio/presentation/resume/widgets/phase_timeline.dart';
import 'package:portfolio/presentation/resume/widgets/resume_widget.dart';
import 'package:portfolio/presentation/resume/widgets/timeline_widget.dart';
import 'package:portfolio/services/analytics_service.dart';
import 'package:timeline_tile/timeline_tile.dart';

import '../footer/footer_screen.dart';

class ResumeScreen extends StatefulWidget {
  const ResumeScreen({Key? key}) : super(key: key);

  @override
  State<ResumeScreen> createState() => _ResumeScreenState();
}

class _ResumeScreenState extends State<ResumeScreen> {





  @override
  void initState() {
     AnalyticsService.logEvent("openResumePage");

    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: const [
          Padding(
            padding: EdgeInsets.only(top: 50),
            child: PageHeader(heading: 'Resume'),
          ),
          ResumeWidget(),

          Footer(),
        ],
      ),
    );
  }
}
