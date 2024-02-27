import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int Counter = 1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Learn StatefulWidget'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              Counter.toString(),
              style: TextStyle(fontSize: 30),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      Counter++;
                    });
                    print(Counter);
                  },
                  child: Icon(Icons.add)
                  ),
                ElevatedButton(onPressed: () {
                  if(Counter != 1) {
                    setState(() {
                      Counter--;
                    });
                  }
                  print(Counter);
                },
                child: Icon(Icons.remove)
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
