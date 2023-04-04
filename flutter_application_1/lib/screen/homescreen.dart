import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/logic.dart';

class HomeP extends StatelessWidget {
  const HomeP({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Currency Converter'),
      ),
      body: Column(
        children: const [
          Center(
            child: Directionality(
              textDirection: TextDirection.ltr,
              child: Text(
                'Currency Converter',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  decoration: TextDecoration.underline,
                  decorationColor: Colors.red,
                  decorationStyle: TextDecorationStyle.dashed,
                  letterSpacing: 2,
                  wordSpacing: 2,
                  height: 2,
                  shadows: [
                    Shadow(
                      color: Colors.black,
                      offset: Offset(2, 2),
                      blurRadius: 2,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Image(
              image: NetworkImage(
                  'https://th.bing.com/th/id/OIP.8wNiBXvkynMqB_KWKUexMQHaEK?pid=ImgDet&rs=1.jpg'),
              fit: BoxFit.cover,
              height: 100,
            ),
          ),
          NumberMultiplierWidget(),
        ],
      ),
    );
  }
}
