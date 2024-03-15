import 'package:flutter/material.dart';

class formfood extends StatefulWidget {
  const formfood({
    super.key,
    required this.formKey,
    required this.etmakan,
    required this.etminum,
    required this.etdessert,});
  final GlobalKey<FormState> formKey;
  final TextEditingController etmakan;
  final TextEditingController etminum;
  final TextEditingController etdessert;

  @override
  State<formfood> createState() => _footerfoodState();
}

class _footerfoodState extends State<formfood> {
  @override
  Widget build(BuildContext context) {
    return Form(
      key: widget.formKey,
      child: Column(
        children: [
          TextFormField(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            controller: widget.etmakan,
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              labelText: 'Makanan',
              hintText: 'Masukan Makanan',
              prefixIcon: Icon(Icons.food_bank),
            ),
            validator: (value) {
              if (value!.isEmpty) {
                return 'Masukan Makanan';
              }
              return null;
            },
          ),
          SizedBox(
            height: 15,
          ),
          TextFormField(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            controller: widget.etminum,
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              labelText: 'Minuman',
              hintText: 'Masukan Minuman',
              prefixIcon: Icon(Icons.local_drink),
            ),
            validator: (value) {
              if (value!.isEmpty) {
                return 'Masukan Minuman';
              }
              return null;
            },
          ),
          SizedBox(
            height: 15,
          ),
          TextFormField(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            controller: widget.etdessert,
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              labelText: 'Dessert',
              hintText: 'Masukan Dessert',
              prefixIcon: Icon(Icons.food_bank),
            ),
            validator: (value) {
              if (value!.isEmpty) {
                return 'Masukan Dessert';
              }
              return null;
            },
          ),
          SizedBox(
            height: 15,
          ),
        ]
      )
    );
  }
}