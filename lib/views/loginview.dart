import 'package:flutter/material.dart';
import 'package:navigasi/views/profilview.dart';

class Loginview extends StatelessWidget {
  const Loginview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text("Halaman Login"),
            ElevatedButton(onPressed: () {
              Navigator.pushNamed(context, '/home');
            },
            child: Text('Home'),
          ),
            ElevatedButton(onPressed: () {
              Navigator.pushReplacementNamed(context, '/login');
            },
            child: Text('Login'),
          ),
            ElevatedButton(
              onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => Profilview(
                  nama: "Deco entol",
                  alamat: "Madura",
                  juara: 15),
                ),
              );
            },
            child: Text('Profil'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(
                context,
                 '/transaksi',
                 arguments: {
                  'id': 1,
                  'product': 'bakso',
                  'price': 5000,
                 },
              );
            },
            child: Text('Transaksi'))
        ],
      ),
    );
  }
}