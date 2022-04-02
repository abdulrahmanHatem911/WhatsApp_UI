import 'package:flutter/material.dart';

import '../pages/camera_screen.dart';
import '../pages/first_screen.dart';
import '../pages/second_screen.dart';
import '../pages/third_screen.dart';

class MessangerUI extends StatefulWidget {
  const MessangerUI({Key? key}) : super(key: key);

  @override
  State<MessangerUI> createState() => _MessangerUIState();
}

class _MessangerUIState extends State<MessangerUI>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;
  @override
  void initState() {
    _tabController = TabController(
      length: 4,
      vsync: this,
      initialIndex: 1,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'WhatsApp',
          style: TextStyle(fontSize: 22.0),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
          PopupMenuButton<String>(
            onSelected: (value) {
              print(value);
            },
            itemBuilder: (BuildContext context) {
              return const [
                PopupMenuItem(
                  child: Text('New groub'),
                  value: 'New groub',
                ),
                PopupMenuItem(
                  child: Text('New broadcast'),
                  value: 'New broadcast',
                ),
                PopupMenuItem(
                  child: Text('Whatsapp Web'),
                  value: 'Whatsapp Web',
                ),
                PopupMenuItem(
                  child: Text('Starred message'),
                  value: 'Starred',
                ),
                PopupMenuItem(
                  child: Text('Setting'),
                  value: 'Setting',
                ),
              ];
            },
          ),
        ],
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: Colors.white,
          tabs: const [
            Tab(icon: Icon(Icons.camera_alt)),
            Tab(child: Text('CHATE')),
            Tab(child: Text('STATUS')),
            Tab(child: Text('CALLS')),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: const [
          CameraScreen(),
          ChateScreen(),
          SecondScreen(),
          CallScreen()
        ],
      ),
    );
  }
}
