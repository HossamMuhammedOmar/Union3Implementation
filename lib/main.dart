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
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Material App Bar'),
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
                        result = widgetBuilder(WeatherState.initial());
                      });
                    },
                    child: const Text('Initial'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        result = widgetBuilder(WeatherState.loading());
                      });
                    },
                    child: const Text('Loading'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        result = widgetBuilder(WeatherState.loaded(55));
                      });
                    },
                    child: const Text(
                      'Loaded',
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

String widgetBuilder(WeatherState state) {
  return state.join(
    (initial) => 'Initial State 😳',
    (loading) => 'Loading State 😃',
    (loaded) => 'Loaded State 🥳',
  );
}
