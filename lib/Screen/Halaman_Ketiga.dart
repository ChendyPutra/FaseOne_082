import 'package:flutter/material.dart';
import 'package:paml_ucp/Widget/header.dart';

class HalamanTiga extends StatelessWidget {
  const HalamanTiga({super.key, required this.nama, required this.nohp,required this.makan,required this.minum,required this.dessert});

  final String nama;
  final String nohp;
  final String makan;
  final String minum;
  final String dessert;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(padding:EdgeInsets.all(15),
          child: Column(
            children: [
              HeaderWidget(),
              Text('Nama  : $nama'),
              Text('Nomor Telepon : $nohp'),
              Text('Makanan  : $makan'),
              Text('Minuman  : $minum'),
              Text('Dessert  : $dessert')
            ],
          ),),
        )),
    );
  }
}
