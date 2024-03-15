import 'package:flutter/material.dart';
import 'package:paml_ucp/Screen/Halaman_Ketiga.dart';
import 'package:paml_ucp/Widget/footer.dart';
import 'package:paml_ucp/Widget/form_makanan.dart';
import 'package:paml_ucp/Widget/header.dart';

class HalamanDua extends StatelessWidget {
  const HalamanDua({super.key, required this.nama, required this.nohp});

  final String nama;
  final String nohp;

  @override
  Widget build(BuildContext context) {
     var makan = TextEditingController();
    var minum = TextEditingController();
    var dessert = TextEditingController();
    var formKey = GlobalKey<FormState>();
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
            formfood(
              formKey: formKey,
              etmakan: makan,
              etminum: minum,
              etdessert: dessert,
              ),
              FooterWidget(
                  onPressedSubmit: () {
                    if (formKey.currentState!.validate()) {
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HalamanTiga(nama:nama,nohp: nohp,makan:  makan.text,minum: minum.text,dessert: dessert.text,),
                          ),
                          (route) => false);
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('Data berhasil disimpan'),
                        ),
                      );
                    }
                  },
                ),

          ],
        ),
      ),
    );
  }
}
