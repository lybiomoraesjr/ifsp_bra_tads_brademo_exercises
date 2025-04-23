import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/dog_card.dart';

class DogPage extends StatelessWidget {
  const DogPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Dog Page')),
      body: Center(
        child: GridView.count(
          primary: false,
          padding: const EdgeInsets.all(20),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 2,
          children: <Widget>[
            const DogCard(imagePath: 'assets/images/dog1.webp', title: 'Dog 1'),
            const DogCard(imagePath: 'assets/images/dog2.webp', title: 'Dog 2'),
            const DogCard(imagePath: 'assets/images/dog3.jpeg', title: 'Dog 3'),
            const DogCard(imagePath: 'assets/images/dog4.jpg', title: 'Dog 4'),
            const DogCard(imagePath: 'assets/images/dog5.webp', title: 'Dog 5'),
            const DogCard(imagePath: 'assets/images/dog6.webp', title: 'Dog 6'),
          ],
        ),
      ),
    );
  }
}
