import 'package:flutter/material.dart';

class FormWidget extends StatefulWidget {
  const FormWidget({
    super.key,
    required this.formKey,
    required this.etnama,
    required this.etnohp,
    required this.etalamat,
    required this.etsex,
  });
  final GlobalKey<FormState> formKey;
  final TextEditingController etnama;
  final TextEditingController etnohp;
  final TextEditingController etalamat;
  final TextEditingController etsex;

  @override
  State<FormWidget> createState() => _FormWidgetState();
}

class _FormWidgetState extends State<FormWidget> {
  String? _sex;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: widget.formKey,
      child: Column(
        children: [
          TextFormField(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            controller: widget.etnama,
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              labelText: 'Nama',
              hintText: 'Masukan Nama',
              prefixIcon: Icon(Icons.person),
            ),
            validator: (value) {
              if (value!.isEmpty) {
                return 'Masukan Nama';
              }
              return null;
            },
          ),
          SizedBox(
            height: 15,
          ),
          TextFormField(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            controller: widget.etnohp,
            keyboardType: TextInputType.phone,
            decoration: InputDecoration(
              labelText: 'Nomor Telepon',
              hintText: 'Masukan Nomor Telepon',
              prefixIcon: Icon(Icons.phone),
            ),
            validator: (value) {
              if (value!.isEmpty) {
                return 'Masukan Nomor Telepon';
              } else if (value.length < 10 || value.length > 13) {
                return "Nomor telepon berisi 10 atau 13 angka";
              }
              return null;
            },
          ),
          SizedBox(
            height: 15,
          ),
          TextFormField(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            controller: widget.etalamat,
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              labelText: 'Alamat',
              hintText: 'Masukan Alamat',
              prefixIcon: Icon(Icons.location_on),
            ),
            validator: (value) {
              if (value!.isEmpty) {
                return 'masukan Alamat';
              }
              return null;
            },
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            children: [
              Text('Jenis Kelamin: '),
              Expanded(
                child: Row(
                  children: [
                    Radio(
                      value: 'laki-laki',
                      groupValue: _sex,
                      onChanged: (value) {
                        setState(() {
                          _sex = value as String?;
                        });
                      },
                    ),
                    Text('Laki-Laki'),
                    Radio(
                      value: 'perempuan',
                      groupValue: _sex,
                      onChanged: (value) {
                        setState(() {
                          _sex = value as String?;
                        });
                      },
                    ),
                    Text('Perempuan'),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
