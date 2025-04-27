import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/button_section.dart';
import 'package:flutter_application_1/widgets/image_section.dart';
import 'package:flutter_application_1/widgets/text_section.dart';
import 'package:flutter_application_1/widgets/title_section.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const String appTitle = 'Ex. 6  -  Flutter Layout';
    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(title: const Text(appTitle)),
        body: const Center(
          child: Column(
            children: [
              ImageSection(image: 'images/lake.webp'),
              TitleSection(
                name: "Oeschinen Lake Campground",
                location: "Kandersteg, Switzerland",
              ),
              ButtonSection(),
              TextSection(
                description:
                    'Lake Oeschinen lies at the foot of the Blüemlisalp in the '
                    'Bernese Alps. Situated 1,578 meters above sea level, it '
                    'is one of the larger Alpine Lakes. A gondola ride from '
                    'Kandersteg, followed by a half-hour walk through pastures '
                    'and pine forest, leads you to the lake, which warms to 20 '
                    'degrees Celsius in the summer. Activities enjoyed here '
                    'include rowing, and riding the summer toboggan run.',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
