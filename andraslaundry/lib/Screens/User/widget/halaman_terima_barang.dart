import 'package:flutter/material.dart';

class ReceiveOrder extends StatefulWidget {
  @override
  _ReceiveOrderState createState() => _ReceiveOrderState();
}

class _ReceiveOrderState extends State<ReceiveOrder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Terima Barang'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Terima kasih atas pembelian Anda'),
            Text('Nama Pelanggan: [Nama Pelanggan]'),
            Text('Alamat: [Alamat]'),
            Text('Tanggal Pembelian: [Tanggal Pembelian]'),
            ElevatedButton(
              onPressed: () {
                // Proses terima barang
              },
              child: Text('Terima'),
            ),
          ],
        ),
      ),
    );
  }
}
