import 'package:flutter/material.dart';
import 'package:paml_ucp/Screen/Halaman_Dua.dart';
import 'package:paml_ucp/Widget/footer.dart';
import 'package:paml_ucp/Widget/form_data.dart';
import 'package:paml_ucp/Widget/header.dart';

class HalamanSatu extends StatelessWidget {
  const HalamanSatu({super.key});

  @override
  Widget build(BuildContext context) {
    var nama = TextEditingController();
    var nohp = TextEditingController();
    var alamat = TextEditingController();
    var sex = TextEditingController();
    var formKey = GlobalKey<FormState>();
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(15),
            child: Column(
              children: [
                HeaderWidget(),
                FormWidget(
                  formKey: formKey,
                  etnama: nama,
                  etnohp: nohp,
                  etalamat: alamat,
                  etsex: sex,
                ),
                FooterWidget(
                  onPressedSubmit: () {
                    if (formKey.currentState!.validate()) {
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HalamanDua(),
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
        ),
      ),
    );
  }
}
