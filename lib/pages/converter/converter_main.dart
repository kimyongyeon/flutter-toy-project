import 'package:flutter/material.dart';

class ConverterMain extends StatefulWidget {
  const ConverterMain({Key? key}) : super(key: key);

  @override
  State<ConverterMain> createState() => _ConverterMainState();
}

class _ConverterMainState extends State<ConverterMain> {
  late double _numberFrom; // late가 들어간다. 게으른?

  String _startMeasure = '';

  var fruits = ['Orange', 'Apple', 'StrawBerry', 'Banana'];

  final List<String> _measures = [
    'meters',
    'kilometers',
    'grams',
    'kilograms',
    'feet',
    'miles',
    'pounds (lbs)',
    'ounces'
  ];

  @override
  void initState() {
    // TODO: implement initState
    _numberFrom = 0;
    _startMeasure = _measures[2];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Measures Converter'),
      ),
      body: Center(
        child: Column(
          children: [
            TextField(
              onChanged: (text) {
                var rv = double.tryParse(text);
                if (rv != null) {
                  setState(() {
                    _numberFrom = rv;
                  });
                }
              },
            ),
            Text((_numberFrom == null) ? '' : _numberFrom.toString()),
            // DropdownButton(
            //     items: fruits.map((String value) {
            //       return DropdownMenuItem(
            //         child: Text(value),
            //         value: value,
            //       );
            //     }).toList(),
            //     onChanged: (String? newValue) {}),
            DropdownButton(
              items: _measures
                  .map((String value) => DropdownMenuItem(
                        value: value,
                        child: Text(value ?? ''),
                      ))
                  .toList(),
              onChanged: (String? val) {
                setState(() {
                  _startMeasure = val ?? '';
                });
              },
              value: _startMeasure,
            )
          ],
        ),
      ),
    );
  }
}
