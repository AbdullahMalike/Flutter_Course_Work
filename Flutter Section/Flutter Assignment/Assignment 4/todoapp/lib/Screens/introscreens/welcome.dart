import 'package:flutter/material.dart';
import 'package:todoapp/Screens/introscreens/Bscreen3.dart';
import 'package:todoapp/Screens/introscreens/onboarding1.dart';

import 'Bscreen2.dart';

/// Flutter code sample for [TabBar].

void main() => runApp(const WelcomeView());

class WelcomeView extends StatelessWidget {
  const WelcomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      home: const TabBarExample(),
    );
  }
}

class TabBarExample extends StatefulWidget {
  const TabBarExample({super.key});

  @override
  State<TabBarExample> createState() => _TabBarExampleState();
}

/// [AnimationController]s can be created with `vsync: this` because of
/// [TickerProviderStateMixin].
class _TabBarExampleState extends State<TabBarExample>
    with TickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: TabBarView(
        controller: _tabController,
        children: const <Widget>[
          Center(
            child: OnboardingView(),
          ),
          Center(
            child: Bording2View(),
          ),
          Center(
            child: B3View(),
          ),
        ],
      ),
    );
  }
}
