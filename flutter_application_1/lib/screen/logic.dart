import 'package:flutter/material.dart';

class NumberMultiplierWidget extends StatefulWidget {
  const NumberMultiplierWidget({super.key});

  @override
  NumberMultiplierWidgetState createState() => NumberMultiplierWidgetState();
}

class NumberMultiplierWidgetState extends State<NumberMultiplierWidget> {
  final TextEditingController _controller = TextEditingController();

  double _multipliedValue = 0;

  void _multiplyNumber() {
    if (_controller.text.isNotEmpty) {
      setState(() {
        _multipliedValue = int.parse(_controller.text) * 4.5;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            controller: _controller,
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter a number in EURO'),
          ),
        ),
        const SizedBox(height: 16),
        ElevatedButton(
          onPressed: () {
            if (_controller.text.isNotEmpty) {
              setState(() {
                _multipliedValue = int.parse(_controller.text) * 4.9;
              });
            } else {
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                  content: Text('Please enter a number in EURO')));
            }
            _multiplyNumber;
          },
          child: const Text('Convert'),
        ),
        const SizedBox(height: 16),
        Text(
          _multipliedValue != 0 ? 'RON: $_multipliedValue' : '',
          style: const TextStyle(fontSize: 20),
        ),
      ],
    );
  }
}
