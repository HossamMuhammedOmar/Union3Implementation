import 'package:flutter/material.dart';
import 'package:sealed_unions_imp/weather_state.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String result = 'Choose State';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Union',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Sealed Union'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                result,
                style: const TextStyle(
                  fontSize: 24,
                ),
              ),
              const SizedBox(height: 100),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        result = widgetBuilder(CategorieState.initial());
                      });
                    },
                    child: const Text('Initial'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        result = widgetBuilder(CategorieState.loading());
                      });
                    },
                    child: const Text('Loading'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        result = widgetBuilder(CategorieState.sucess());
                      });
                    },
                    child: const Text(
                      'Success',
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        result = widgetBuilder(CategorieState.error());
                      });
                    },
                    child: const Text(
                      'Error',
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

String widgetBuilder(CategorieState state) {
  return state.join(
    (initial) => 'Initial State 😳',
    (loading) => 'Loading State 😃',
    (success) => 'Success State 🥳',
    (error) => 'Error State 😢',
  );
}
