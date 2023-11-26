import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NewPage extends StatelessWidget {
  const NewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('welcome to new page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              child: const Text('돌아가기'),
              onPressed: () {context.pop();
              },
            ),
            TextButton(
              child: const Text('go to new page2'),
              onPressed: () {
                context.pushNamed('new1');
              },
            ),
          ],
        ),
      ),
    );
  }
}


class NewPage2 extends StatelessWidget {
  const NewPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('welcome to new page2'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            TextButton(
              child: const Text('돌아가기2'),
              onPressed: () {
                context.goNamed('new');
              },
            ),
            TextButton(
              child : const Text('go to Home'),
              onPressed: () {
                context.goNamed('home');
              },
            )
          ],
        ),
      )
    );
  }
}
