import 'package:flutter/material.dart';
import 'package:paml_ucp/Screen/Halaman_Satu.dart';
import 'package:paml_ucp/Widget/footer_selesai.dart';
import 'package:paml_ucp/Widget/header.dart';

class HalamanTiga extends StatelessWidget {
  const HalamanTiga(
      {super.key,
      required this.nama,
      required this.nohp,
      required this.makan,
      required this.minum,
      required this.dessert});

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
        child: Padding(
          padding: EdgeInsets.all(15),
          child: Column(
            children: [
              HeaderWidget(),
              Text('Nama  : $nama',style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
              Text('Nomor Telepon : $nohp',style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
              Text('Makanan  : $makan',style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
              Text('Minuman  : $minum',style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
              Text('Dessert  : $dessert',style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
              footerend(onPressedEnd: () {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => HalamanSatu()),
                    (route) => false);
              })
            ],
          ),
        ),
      )),
    );
  }
}
