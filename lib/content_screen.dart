import 'package:flutter/material.dart';

class ContentScreen extends StatelessWidget {
  ContentScreen({super.key});

  final TextEditingController controller = TextEditingController(text: 'Alpha');

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        if (controller.text != "Alpha") {
          final shouldPop = await showDialog(
            context: context,
            builder: (context) => AlertDialog(
              title: const Text('Do you want to go back?'),
              actionsAlignment: MainAxisAlignment.spaceBetween,
              actions: [
                TextButton(
                  onPressed: () {
                    print('Saving new data');
                    Navigator.pop(context, true);
                  },
                  child: const Text('Yes'),
                ),
                TextButton(
                  onPressed: () {
                    print('Unsave and Backup the old data');
                    Navigator.pop(context, true);
                  },
                  child: const Text('No'),
                ),
              ],
            ),
          );
          return shouldPop;
        } else {
          return true;
        }
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Content screen'),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: TextField(
            controller: controller,
            decoration: const InputDecoration(
              hintText: 'This text must be = "Alpha"',
            ),
          ),
        ),
      ),
    );
  }
}
