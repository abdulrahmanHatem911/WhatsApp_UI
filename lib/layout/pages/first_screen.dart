import 'package:flutter/material.dart';
import 'package:session_5/layout/widgets/chate_item.dart';

import '../../models/chate_model.dart';

class ChateScreen extends StatelessWidget {
  const ChateScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return chateItem(dummyData[index]);
        },
        itemCount: dummyData.length,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(
          Icons.message_sharp,
        ),
      ),
    );
  }
}
