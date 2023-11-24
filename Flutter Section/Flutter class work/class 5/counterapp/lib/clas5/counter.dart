import 'package:flutter/material.dart';

class CounterView extends StatefulWidget {
  const CounterView({super.key});

  @override
  State<CounterView> createState() => _CounterViewState();
}

class _CounterViewState extends State<CounterView> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter Application"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "$counter",
              style: TextStyle(fontSize: 20, color: Colors.black),
            ),
            SizedBox(
              height: 490,
            ),
            Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      if (counter > 1) {
                        counter--;
                      }
                    });
                  },
                  child: Icon(Icons.remove),
                ),
                SizedBox(
                  width: 80,
                ),
                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      counter = 0;
                    });
                  },
                  child: Icon(Icons.restore),
                )
              ],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            counter++;
          });
          // print(counter);
        },
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}
