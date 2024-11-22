import 'package:flutter/material.dart';
import 'package:navigasi/widgets/menu_bottom.dart';

class Profilview extends StatelessWidget {
  String nama;
  String? alamat;
  int juara;
  Profilview({
    super.key,
    required this.nama,
    this.alamat,
    required this.juara,
    });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text("Halaman Profil"),
          Text(nama),
          Text(alamat!),
          Text("${juara}"),
        ],
      ),
      bottomNavigationBar: MenuBottom(1),
    );
  }
}