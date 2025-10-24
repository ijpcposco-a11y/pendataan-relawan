
class Relawan {
  String id;
  String nama;
  String email;
  String noHP;
  String lokasi;
  List<String> keahlian;
  String status;

  Relawan({
    required this.id,
    required this.nama,
    required this.email,
    required this.noHP,
    required this.lokasi,
    required this.keahlian,
    required this.status,
  });

  factory Relawan.fromMap(String id, Map<String, dynamic> data) {
    return Relawan(
      id: id,
      nama: data['nama'],
      email: data['email'],
      noHP: data['noHP'],
      lokasi: data['lokasi'],
      keahlian: List<String>.from(data['keahlian']),
      status: data['status'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'nama': nama,
      'email': email,
      'noHP': noHP,
      'lokasi': lokasi,
      'keahlian': keahlian,
      'status': status,
    };
  }
}
