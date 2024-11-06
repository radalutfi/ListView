import 'package:flutter/material.dart';

class ListVertikal extends StatelessWidget {
  final List<Map<String, String>> notifications = List.generate(20, (index) {
    if (index < 10) {
      return {
        'title': 'Pembayaran berhasil',
        'date': 'Tanggal: 11/03/2024',
        'icon':
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSjxEJ8-ePIl3V6WVHO59wWTiaTZyQrm1bN-g&s',
        'color': 'black',
      };
    } else {
      return {
        'title': 'Pembayaran gagal',
        'date': 'Tanggal: 11/03/2024',
        'icon':
            'https://www.shutterstock.com/image-vector/red-simple-flat-modern-clean-600nw-1503226874.jpg',
        'color': 'red',
      };
    }
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notifikasi'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: notifications.map((notification) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.network(
                      notification['icon']!,
                      width: 50,
                      height: 50,
                      errorBuilder: (context, error, stackTrace) {
                        return Icon(Icons.error, size: 50);
                      },
                    ),
                    SizedBox(width: 8),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            notification['title']!,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: notification['color'] == 'red'
                                  ? Colors.red
                                  : Colors.black,
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            notification['date']!,
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}
