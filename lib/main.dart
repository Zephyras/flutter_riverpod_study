import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final helloWorldProvider = Provider(
  (ref) => 'Hello world',
);
void main() {
  runApp(
    ProviderScope(child: MyApp()),
  );
}

class MyApp extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final String value = ref.watch(helloWorldProvider);
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: const Text('Example riverpod')),
      body: Center(child: Text(value)),
    ));
  }
}
