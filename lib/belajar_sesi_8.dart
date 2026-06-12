import 'package:flutter/material.dart';

class BelajarSesi8 extends StatefulWidget {
  @override
  State<BelajarSesi8> createState() => _BelajarSesi8State();
}

class _BelajarSesi8State extends State<BelajarSesi8> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  var itemList = ['Laki-laki', 'Perempuan', 'Lainnya'];

  void submitForm() {
  if (_formKey.currentState!.validate()) {
    // Tampilkan pesan sukses alih-alih menutup halaman
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Form berhasil disubmit!')),
    );
  }
}

  var selectedGender = '';
  bool isConsentChecked = false;

  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        // Tambahkan widget Form di sini dan masukkan key-nya
        child: Form(
          key: _formKey, 
          child: Column(
            children: [
              TextFormField(
                validator: (value) {
                  if(value == null || value.isEmpty) {
                    return 'Email tidak boleh kosong';
                  }
                  return null;
                },
                decoration: const InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 16),
              DropdownButtonFormField<String>(
                items: itemList.map((item) {
                  return DropdownMenuItem(value: item, child: Text(item));
                }).toList(),
                validator: (value) {
                  if(value == null) return "Gender Harus Dipilih";
                  return null;
                },
                onChanged: (value) {
                  setState(() {
                    selectedGender = value!;
                  });
                },
              ),
              const SizedBox(height: 16),
              Row(
                children: [
                  Checkbox(value: isConsentChecked, onChanged: (value) {
                    setState(() {
                      isConsentChecked = value ?? false;
                    });
                  }),
                  const Text('Saya Setuju')
                ],
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: isConsentChecked ? submitForm : null,
                  child: const Text('Submit'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}