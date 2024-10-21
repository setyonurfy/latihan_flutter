import 'package:flutter/material.dart';

class DentalServicesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'our dental services',
            style: TextStyle(fontSize: 24),
          ),
          SizedBox(height: 20),
          Text('1. Scalling'),
          Text('2. Whitenig'),
          Text('3. Braces'),
          Text('4. Root Canal'),
        ],
      ),
    );
  }
}
