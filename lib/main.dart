import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      supportedLocales: [Locale('pl')],
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      home: Scaffold(
        body: Builder(
          builder: (context) => Center(
            child: FlatButton(
              color: Colors.red.shade200,
              child: Text('Show time picker'),
              onPressed: () {
                showTimePicker(
                  context: context,
                  initialTime: TimeOfDay.fromDateTime(
                    DateTime(2020, 7, 28, 19, 3),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
