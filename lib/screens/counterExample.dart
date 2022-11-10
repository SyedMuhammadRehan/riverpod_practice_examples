import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_practice/riverpod/counterRiverpod.dart';

class CounterExample extends ConsumerWidget {
  const CounterExample({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter Riverpod"),
        centerTitle: true,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Consumer(
            builder: (context, ref, child) {
              final count = ref.watch(CounterProvider);

              return Text(
                count.toString(),
                style: const TextStyle(fontSize: 16),
              );
            },
          ),
          const SizedBox(
            height: 40,
          ),
          ElevatedButton(
              onPressed: ref.read(CounterProvider.notifier).increment,
              child: const Text("Press"))
        ],
      )),
    );
  }
}
