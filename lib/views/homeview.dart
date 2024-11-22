import 'package:flutter/material.dart';
import 'package:navigasi/widgets/menu_bottom.dart';

class Homeview extends StatelessWidget {
  const Homeview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ElevatedButton(onPressed: () {
              Navigator.pushReplacementNamed(context, '/login');
            },
            child: Text('Login'),
          ),
          bottomNavigationBar: MenuBottom(0),
    );
  }
}