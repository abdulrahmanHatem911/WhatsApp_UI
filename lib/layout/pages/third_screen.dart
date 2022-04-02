import 'package:flutter/material.dart';
import 'package:session_5/models/calls_model.dart';

import '../widgets/chate_item.dart';

class CallScreen extends StatelessWidget {
  const CallScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return callIten(dummyData[index]);
        },
        itemCount: dummyData.length,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add_ic_call_rounded),
      ),
    );
  }
}
