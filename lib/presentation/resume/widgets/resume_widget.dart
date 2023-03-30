import 'package:flutter/material.dart';
import 'package:portfolio/presentation/resume/widgets/phase_timeline.dart';

import '../../../classes/timeline_data.dart';
import 'timeline_widget.dart';

class ResumeWidget extends StatelessWidget {
  const ResumeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(50),
      child: Column(
        children: [
          PhaseTimeline(
            phase: 'Work Experience',
            icon: Icons.work_outline_sharp,
          ),
          TimelineWidget(
              timelineData: TimelineData('2022-2024', 'SDE-I', 'Mobcoder',
                  'I have delivered two projects fedora MBanking & MobHRM which has 100+ user base.\nWorked on flutter web  ')),
          TimelineWidget(
              timelineData: TimelineData(
                  '2021-2022',
                  'Software Trainee',
                  'Mobcoder',
                  'Designed, Implemented, and tested Flutter and Dart code\nusing bloc pattern, stream and Cubit architecture and also\nImplemented firebase (Firebase login, Firebase real-time Database, Firestore, Analytics, push notification ).\nDesigned, Implemented, and tested Flutter and Dart code for Android, IOS and Web platforms .')),
          const PhaseTimeline(
            phase: 'Education',
            icon: Icons.school_outlined,
          ),
          TimelineWidget(
              timelineData: TimelineData(
                  '2018-2022',
                  'Bachelor of Technology in Computer Science',
                  'MGM College of Engineering & Technology',
                  'Completed my graduation in computer science & technology.\nSecured 75% in it ')),
          TimelineWidget(
              timelineData:
              TimelineData('2018-2016', 'PCM', 'Modern School', 'I have completed my schooling with pcm stream.\nSecured 75% in class 12 ')),
        ],
      ),
    );
  }
}
