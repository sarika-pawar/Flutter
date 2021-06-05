import 'package:flutter/material.dart';
import 'package:timelines/timelines.dart';

class Message extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Message Page'),
        ),
        body: Timeline.tileBuilder(
          theme: TimelineThemeData(
            color: Colors.pinkAccent,
          ),
          builder: TimelineTileBuilder.fromStyle(
            contentsAlign: ContentsAlign.alternating,
            contentsBuilder: (context, index) => Padding(
              padding: const EdgeInsets.all(24.0),
              child: Text('Timeline Event $index'),
            ),
            itemCount: 6,
          ),
        ));
  }
}
