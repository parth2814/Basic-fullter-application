import 'package:flutter/material.dart';

import '../class/item_class.dart';
import '../core/constants.dart';
import '../widget/card_widget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Fultter App"),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              CardWidget(
                box: ItemClass(
                  title: 'rocket',
                  imagePath: 'images/rocket.png',
                ),
              ),
              Row(children: [
                Expanded(
                    child: CardWidget(
                  box: ItemClass(
                    title: 'space',
                    imagePath: 'images/space.png',
                  ),
                )),
                Expanded(
                  child: CardWidget(
                    box: ItemClass(
                      title: 'travel',
                      imagePath: 'images/travel.png',
                    ),
                  ),
                ),
              ]),
              CardWidget(
                box: ItemClass(
                  title: 'yeah',
                  imagePath: 'images/yeah.png',
                ),
              ),
            ],
          ),
        ));
  }
}
