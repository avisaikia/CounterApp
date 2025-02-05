import 'package:flutter/material.dart';

class CounterApp extends StatefulWidget {
  const CounterApp({super.key});

  @override
  State<CounterApp> createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {

  int counter = 0;

  void incrementCounter() {
    setState(() {
      counter++;
    });
  }

  void decrementCounter() {
    setState(() {
      if (counter > 0) counter--;
    });
  }

  //void _resetCounter() {
  // setState(() {
  //  counter = 0;
  // });
  //}

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Colors.blue, // Start color
                Colors.yellowAccent, // End color
              ],
            ),
          ),
          child: Scaffold(
              backgroundColor: Colors.transparent,
              body: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Wrapping the counter text & buttons inside a Container
                    Container(
                      width: 280,
                      height: 200,
                      // Padding inside the container
                      decoration: BoxDecoration(
                        color: Colors.black45,
                        // Light background color
                        borderRadius: BorderRadius.circular(15),
                        // Rounded corners
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black45, // Soft shadow
                            spreadRadius: 3,
                            blurRadius: 5,
                            offset:Offset(0, 3),
                          ),
                        ],
                      ),

                      child: Column(
                        children: [
                          SizedBox(height: 10),
                          Text(
                            'Counter Value:',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                          SizedBox(height: 20),
                          Text(
                            '$counter',
                            style:  TextStyle(
                              fontSize: 40,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ElevatedButton(
                                onPressed: incrementCounter,
                                // child: Text(
                                //     'Increment'
                                // ),
                                child: Icon(Icons.add),
                              ),
                              SizedBox(width: 10),
                              ElevatedButton(
                                onPressed: decrementCounter,
                                // child: Text(
                                //     'Decrement'
                                // ),
                                child: Icon(Icons.remove),
                              ),],
                          ),],
                      ),
                    ),],
                ),
              )
          ),
        )
    );
  }
}