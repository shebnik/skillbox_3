// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SkillBox_3',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final String assetName = 'assets/images/flutter-logo.svg';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CarouselSlider(
          options: CarouselOptions(
            height: 400.0,
            aspectRatio: 16 / 9,
          ),
          items: [
            SvgPicture.asset(assetName, semanticsLabel: 'Logo'),
            Image.network(
                'https://flutter.dev/assets/images/homepage/carousel/slide_1-bg.jpg'),
            Image.network(
                'https://flutter.dev/assets/images/homepage/carousel/slide_2-bg.jpg'),
            Image.network(
                'https://flutter.dev/assets/images/homepage/carousel/slide_3-bg.jpg'),
            Image.network(
                'https://flutter.dev/assets/images/homepage/carousel/slide_4-bg.jpg'),
          ].map((i) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                  width: MediaQuery.of(context).size.width,
                  margin: const EdgeInsets.symmetric(horizontal: 5.0),
                  decoration: const BoxDecoration(color: Colors.amber),
                  child: i,
                );
              },
            );
          }).toList(),
        ),
      ),
    );
  }
}
