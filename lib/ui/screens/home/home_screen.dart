import 'package:flutter/material.dart';
import 'package:nikolajovic/ui/screens/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  final String title;

  const HomeScreen({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              'You have pushed the button this many times:',
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        label: const Text('Download PDF'),
        onPressed: () {},
        tooltip: 'Increment',
        icon: const Icon(Icons.download),
      ),
    );
  }
}
