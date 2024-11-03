import 'package:flutter/material.dart';
import 'package:lifecycle_stateful_widget/model.dart';
import 'package:provider/provider.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  void initState() {
    debugPrint("initState Method Called");
    super.initState();
  }

  //didChangeDependencies
  @override
  void didChangeDependencies() {
    debugPrint("didChangeDependencies Method Called...");
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    debugPrint("build Method Called...");
    Model modelController = Provider.of<Model>(context);
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: IconButton(
              onPressed: () {
                modelController.tap();
              },
              icon: Icon(
                modelController.favoriteTapped
                    ? Icons.favorite
                    : Icons.favorite_border,
                color:
                    modelController.favoriteTapped ? Colors.red : Colors.black,
              ),
            ),
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                height: 200, width: 200, color: modelController.inititialColor),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                modelController.changeColor();
              },
              child: const Text("Change Color"),
            )
          ],
        ),
      ),
    );
  }
}
