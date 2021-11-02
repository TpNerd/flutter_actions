import 'dart:io';

import 'package:flutter/material.dart';

Future<void> main() async {
  String? platformBaseUrl = Platform.environment['BASE_URL'];
  String? platExec = Platform.environment['EXEC_ENV'];

  const baseUrl = String.fromEnvironment('BASE_URL');
  const envExec = String.fromEnvironment('EXEC_ENV');

  print('platformBaseUrl from platform: $platformBaseUrl');
  print('platExec $platExec');

  print('baseUrl from env: $baseUrl');
  print('envExec $envExec');

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const MyHomePage(),
      );
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    print('incrementing');
    setState(() {
      _counter++;
    });
  }

  final String _userImage =
      'https://media-exp1.licdn.com/dms/image/C5603AQHTKTgaY9x80g/profile-displayphoto-shrink_800_800/0/1592919288528?e=1635379200&v=beta&t=H4g9k4SIJYzXanOpxDKnoIk4-izno0W_SopG0MJlCow';

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('Button Pusher'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(String.fromEnvironment('BASE_URL')),
              const Text(String.fromEnvironment('LABEL')),
              Image.network(_userImage),
              const Text(
                'You have pushed the button this many times:',
              ),
              Text(
                '$_counter',
                style: Theme.of(context).textTheme.bodyText2,
                key: const Key('counter'),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: _incrementCounter,
          tooltip: 'Increment',
          child: const Icon(Icons.add),
        ),
      );
}
