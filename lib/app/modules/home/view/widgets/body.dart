import 'package:flutter/material.dart';
import 'package:m8app/app/modules/home/view/widgets/card_widgets.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 15.0,
      ),
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: const [
            CardWidget(
              image: 'assets/electronics.png',
              title: 'Electronics',
              count: 5,
              avathar: 'avathar1',
            ),
            CardWidget(
              image: 'assets/sports.png',
              title: 'Sports',
              count: 5,
              avathar: 'avathar2',
            ),
            CardWidget(
              image: 'assets/fashion.png',
              title: 'Fashion',
              count: 5,
              avathar: 'avathar3',
            ),
            CardWidget(
              image: 'assets/grocery.png',
              title: 'Grocery',
              count: 5,
              avathar: 'avathar4',
            ),
          ],
        ),
      ),
    );
  }
}
