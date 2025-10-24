
import 'package:flutter/material.dart';
import 'relawan_list_page.dart';
import 'relawan_form_page.dart';

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Dashboard Relawan')),
      body: Center(child: Text('Selamat datang di dashboard!')),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(child: Text('Menu')),
            ListTile(
              title: Text('Daftar Relawan'),
              onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => RelawanListPage())),
            ),
            ListTile(
              title: Text('Tambah Relawan'),
              onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => RelawanFormPage())),
            ),
          ],
        ),
      ),
    );
  }
}
