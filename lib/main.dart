import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Daftar Mahasiswa',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Daftar Mahasiswa'),
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              MahasiswaTile('ESTA PURWANTI', 'STI202102433'),
              MahasiswaTile('ESTHER HORAERE', 'STI202102514'),
              MahasiswaTile('FAUZAN BAROKATUS SURUR', 'STI202102154', isMe: true),
              MahasiswaTile('VERNANDA', 'STI202102574'),
              MahasiswaTile('DEPITA SULANGU', 'STI202102223'),
            ],
          ),
        ),
      ),
    );
  }
}

class MahasiswaTile extends StatelessWidget {
  final String name;
  final String absenNumber;
  final bool isMe;

  const MahasiswaTile(this.name, this.absenNumber, {this.isMe = false});

  @override
  Widget build(BuildContext context) {
    Color backgroundColor = isMe ? Colors.green : Colors.transparent;
    return Container(
      color: backgroundColor,
      padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  name,
                  style: TextStyle(fontSize: 18.0),
                ),
                SizedBox(height: 4.0),
                Text(
                  'NIM: $absenNumber',
                  style: TextStyle(fontSize: 14.0),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}