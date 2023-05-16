import 'package:flutter/material.dart';

class WebtoonAppBar extends AppBar {
  WebtoonAppBar({
    Key? key,
    required String title,
  }) : super(
          key: key,
          elevation: 2,
          backgroundColor: Colors.white,
          foregroundColor: Colors.green,
          title: Text(
            title,
            style: const TextStyle(
              fontSize: 24,
            ),
          ),
        );
}
