import 'package:firebase_analytics/firebase_analytics.dart';

class AnalyticsService {
  final _firebaseAnalytics = FirebaseAnalytics.instance;

  FirebaseAnalyticsObserver getAnalyticsObserver() =>
      FirebaseAnalyticsObserver(analytics: _firebaseAnalytics);

}
