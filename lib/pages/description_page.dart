import 'package:flutter/material.dart';

import '../class/item_class.dart';
import '../core/constants.dart';

class DescriptionPage extends StatefulWidget {
  const DescriptionPage({super.key, required this.box});
  final ItemClass box;

  @override
  State<DescriptionPage> createState() => _DescriptionPageState();
}

class _DescriptionPageState extends State<DescriptionPage> {
  double fontsizeCustom = 25;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.box.title),
        actions: [
          IconButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text("This is a snackbar"),
                    behavior: SnackBarBehavior.floating,
                  ),
                );
              },
              icon: const Icon(Icons.info)),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(kDouble10),
          child: Column(
            children: [
              Image.asset(widget.box.imagePath),
              Wrap(
                spacing: kDouble10,
                children: [
                  TextButton(
                      onPressed: () {
                        setState(() {
                          fontsizeCustom = 15;
                        });
                      },
                      child: const Text("Small Title")),
                  OutlinedButton(
                      onPressed: () {
                        setState(() {
                          fontsizeCustom = 25;
                        });
                      },
                      child: const Text("Medium Title")),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          fontsizeCustom = 50;
                        });
                      },
                      child: const Text("Large Title")),
                  FilledButton(
                      onPressed: () {
                        setState(() {
                          fontsizeCustom = 200;
                        });
                      },
                      child: const Text("Huge Title"))
                ],
              ),
              FittedBox(
                child: Text(
                  widget.box.title,
                  style: TextStyle(
                      fontSize: fontsizeCustom, fontWeight: FontWeight.bold),
                ),
              ),
              const Text(
                baconDescription,
                style: TextStyle(
                  fontSize: 18,
                ),
                textAlign: TextAlign.justify,
              ),
              SizedBox(
                height: kDouble10,
              )
            ],
          ),
        ),
      ),
    );
  }
}
