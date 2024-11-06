import 'package:flutter/material.dart';
import 'package:list_view/horizontal.dart';
import 'package:list_view/vertikal.dart';
import 'package:list_view/grid.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ListHorizontal()),
                );
              },
              child: Text('Horizontal ListView'),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ListVertikal()),
                );
              },
              child: Text('Vertikal ListView'),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ListGrid()),
                );
              },
              child: Text('Grid View'),
            ),
          ],
        ),
      ),
    );
  }
}
