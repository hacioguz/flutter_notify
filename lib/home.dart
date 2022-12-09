
import 'package:flutter/material.dart';
import 'package:flutter_notify/service.dart';
import 'package:grock/grock.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final _service = FirebaseNotificationService();

  @override
  void initState() {
    super.initState();
    _service.connectNotification();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Flutter Notify"),
        ),
        body: Column(
          children: [
            GrockContainer(
              isKeyboardDismiss: true,
              isTapAnimation: true,
            ),
            GrockHList(
              itemCount: 10,
              itemHeight: 55,
              itemWidth: 55,
              listHeight: 80,
              itemBuilder: (context, index) {
                return Container();
              },
            ),
          ],
        )
    );
  }
}
