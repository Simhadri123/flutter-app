import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_analytics/observer.dart';
import 'package:flutter/material.dart';

abstract class FirebaseAnalyticsAbs {
  void init() {}
  List<NavigatorObserver> getMNavigatorObservers() {
    return const <NavigatorObserver>[];
  }
}

class FirebaseAnalyticsService extends FirebaseAnalyticsAbs {
  late FirebaseAnalytics analytics;

  @override
  void init() {
    analytics = FirebaseAnalytics.instance;

    return super.init();
  }

  @override
  List<NavigatorObserver> getMNavigatorObservers() {
    return [
      FirebaseAnalyticsObserver(analytics: analytics),
    ];
  }
}
