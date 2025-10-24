
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class RelawanFormPage extends StatefulWidget {
  @override
  State<RelawanFormPage> createState() => _RelawanFormPageState();
}

class _RelawanFormPageState extends State<RelawanFormPage> {
  final _nama = TextEditingController();
  final _email = TextEditingController();
  final _hp = TextEditingController();
  final _lokasi = TextEditingController();
  final _fire = FirebaseFirestore.instance.collection('relawan');

  void simpan() async {
    final data = {
      'nama': _nama.text,
      'email': _email.text,
      'noHP': _hp.text,
      'lokasi': _lokasi.text,
      'keahlian': [],
      'status': 'aktif',
      'createdAt': FieldValue.serverTimestamp(),
    };
    await _fire.add(data);
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Tambah Relawan')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(controller: _nama, decoration: InputDecoration(labelText: 'Nama')),
            TextField(controller: _email, decoration: InputDecoration(labelText: 'Email')),
            TextField(controller: _hp, decoration: InputDecoration(labelText: 'No HP')),
            TextField(controller: _lokasi, decoration: InputDecoration(labelText: 'Lokasi')),
            const SizedBox(height: 16),
            ElevatedButton(onPressed: simpan, child: const Text('Simpan')),
          ],
        ),
      ),
    );
  }
}
