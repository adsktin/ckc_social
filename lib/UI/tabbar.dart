import 'package:flutter/material.dart';
import 'package:social_android/UI/Friends/friend_screen.dart';
import 'package:social_android/UI/Notifications/notification_screen.dart';
import 'package:social_android/UI/Settings/setting_screen.dart';
import 'Home/home_screen.dart';

class Tabbar extends StatefulWidget {
  const Tabbar({super.key});

  @override
  State<Tabbar> createState() => _TabbarState();
}

/// [AnimationController]s can be created with `vsync: this` because of
/// [TickerProviderStateMixin].
class _TabbarState extends State<Tabbar> with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('C K C S'),
        // actions: [
        //   Padding(
        //     padding: const EdgeInsets.symmetric(horizontal: 15),
        //     child: Row(
        //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //       children: [
        //         const Icon(Icons.add_circle_outline),
        //         const SizedBox(width: 5),
        //         const Icon(Icons.search),
        //       ],
        //     ),
        //   )
        // ],
        bottom: TabBar(
          controller: _tabController,
          tabs: const <Widget>[
            Tab(
              icon: Icon(Icons.home),
            ),
            Tab(
              icon: Icon(Icons.people),
            ),
            Tab(
              icon: Icon(Icons.notifications),
            ),
            Tab(
              icon: Icon(Icons.settings),
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          Center(
            child: Home(),
          ),
          const Center(
            child: Friend(),
          ),
          const Center(
            child: NotificationScreen(), //
          ),
          const Center(
            child: Setting(),
          ),
        ],
      ),
    );
  }
}
