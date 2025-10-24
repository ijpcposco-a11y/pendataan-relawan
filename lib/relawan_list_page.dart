
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class RelawanListPage extends StatelessWidget {
  final CollectionReference coll = FirebaseFirestore.instance.collection('relawan');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Daftar Relawan')),
      body: StreamBuilder<QuerySnapshot>(
        stream: coll.orderBy('createdAt', descending: true).snapshots(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) return Center(child: CircularProgressIndicator());
          final docs = snapshot.data!.docs;
          return ListView.builder(
            itemCount: docs.length,
            itemBuilder: (context, i) {
              final d = docs[i];
              return ListTile(
                title: Text(d['nama'] ?? ''),
                subtitle: Text(d['noHP'] ?? ''),
                trailing: Text(d['status'] ?? ''),
              );
            },
          );
        },
      ),
    );
  }
}
