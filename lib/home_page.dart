import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool switcher1 = true;
  bool switcher2 = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        elevation: 0,
        title: const Text('SWITCH BUTTON'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    foregroundColor: switcher1 ? Colors.white : Colors.black,
                    backgroundColor: switcher1 ? Colors.purple : Colors.blue,
                  ),
                  onPressed: () {
                    setState(() {
                      switcher1 = !switcher1;
                    });
                  },
                  child: const Text(
                    'В активе',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      foregroundColor: switcher2 ? Colors.white : Colors.black,
                      backgroundColor: switcher2 ? Colors.purple : Colors.blue),
                  onPressed: () {
                    setState(() {
                      switcher2 = !switcher2;
                    });
                  },
                  child: const Text(
                    'Сохранено',
                    style: const TextStyle(fontSize: 18),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
