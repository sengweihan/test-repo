import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:simple_app/page/home.dart';

// Declaring a provider called nameProvider which will hold a state that a consumer (entire widget in the application) can access
final counterProvider = StateProvider((ref) => 0);

void main() {
  //  ProviderScope allows application to use riverpod
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        debugShowCheckedModeBanner: false,
        home: const HomePage());
  }
}

// class MyHomePage extends StatelessWidget {
//   const MyHomePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text("Welcome to my page")),
//       body: Center(
//         child: ElevatedButton(
//           child: const Text("Go to counter page"),
//           onPressed: () {
//             Navigator.of(context).push(
//                 MaterialPageRoute(builder: ((context) => const CounterPage())));
//           },
//         ),
//       ),
//     );
//   }
// }

// class CounterPage extends ConsumerWidget {
//   const CounterPage({super.key});

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final counter = ref.watch(counterProvider);
//     return Scaffold(
//       body: Center(
//         child: Text(
//           counter.toString(),
//           style: const TextStyle(color: Colors.black),
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         child: const Icon(Icons.add),
//         onPressed: () {
//           ref.read(counterProvider.notifier).state++;
//         },
//       ),
//     );
//   }
// }
