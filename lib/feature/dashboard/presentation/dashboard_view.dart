import 'package:crudapp_riverpod/router/auto_route_provider.dart';
import 'package:crudapp_riverpod/router/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

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
            Consumer(
              builder: (context, ref, child) {
                return SizedBox(
                  width: 250,
                  child: ElevatedButton(
                      onPressed: () {
                        ref
                            .read(autoroutePrvider)
                            .navigate(HomePageRouter(id: 2));
                      },
                      child: const Text("CRUD OPERATION")),
                );
              },
            ),
            Consumer(
              builder: (context, ref, child) {
                return SizedBox(
                  width: 250,
                  child: ElevatedButton(
                      onPressed: () {
                        // ref
                        //     .read(autoroutePrvider)
                        //     .navigate(const HomePageRouter());
                      },
                      child: const Text("Page Navigation")),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
