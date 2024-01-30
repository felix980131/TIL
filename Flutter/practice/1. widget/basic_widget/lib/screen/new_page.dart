import 'package:flutter/material.dart';

class NewPage extends StatelessWidget {
  const NewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("New Page"),
      ),
      body: Center(
        child: Column(
          children: [
            TextButton(
              onPressed: () {
                // 뒤로 이동
                Navigator.pop(context);
              },
              child: Text("Go to Back"),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => NewPage2()));
              },
              child: Text("Go to Page2"),
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
        title: Text("New Page2"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            TextButton(
              onPressed: () {
                // 뒤로 이동
                Navigator.pop(context);
              },
              child: Text("Go to Back"),
            ),
            TextButton(
              onPressed: () {
                // 가장 처음으로 이동
                Navigator.popUntil(context, (route) => route.isFirst);
              },
              child: Text("Go to Home"),
            ),
          ],
        ),
      ),
    );
  }
}
