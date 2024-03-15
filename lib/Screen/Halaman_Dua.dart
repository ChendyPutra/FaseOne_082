import 'package:flutter/material.dart';
import 'package:paml_ucp/Widget/header.dart';

class HalamanDua extends StatelessWidget {
  const HalamanDua({super.key, required this.nama, required this.nohp});

  final String nama;
  final String nohp;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            HeaderWidget(),
            Text('Nama  : $nama'),
            Text('Nomor Telepon : $nohp'),

          ],
        ),
      ),
    );
  }
}
