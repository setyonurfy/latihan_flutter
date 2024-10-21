import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'user profile',
            style: TextStyle(fontSize: 24),
          ),
          SizedBox(height: 20),
          Text('Nme : text'),
          Text('Email : text'),
          SizedBox(height: 20),
          Text('phone : 081234555'),
        ],
      ),
    );
  }
}
