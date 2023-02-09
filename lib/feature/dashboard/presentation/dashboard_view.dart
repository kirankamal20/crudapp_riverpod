import 'package:flutter/material.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: 250,
              child: ElevatedButton(
                  onPressed: () {}, child: const Text("CRUD OPERATION")),
            ),
            SizedBox(
              width: 250,
              child: ElevatedButton(
                  onPressed: () {}, child: const Text("Page Navigation")),
            )
          ],
        ),
      ),
    );
  }
}
