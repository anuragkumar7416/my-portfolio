import 'package:firebase_analytics/firebase_analytics.dart';

class AnalyticsService {
  static FirebaseAnalytics analytics = FirebaseAnalytics.instance;

  static Future<void> logEvent(String name) async {
    await analytics.logEvent(name: name, parameters: {
      "date":
          "${DateTime.now().day}-${DateTime.now().month}-${DateTime.now().year}",
      "time":
          "${DateTime.now().hour}-${DateTime.now().minute}-${DateTime.now().second}",
    });
  }
}
