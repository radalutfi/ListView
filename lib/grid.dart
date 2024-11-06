import 'package:flutter/material.dart';

class ListGrid extends StatelessWidget {
  const ListGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          "Grid View",
        ),
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: <Widget>[
          SizedBox(height: 110),
          Padding(
            padding: EdgeInsets.only(left: 16, right: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Rada Lutfi Mahcrus",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      "Home",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 40),
          Expanded(child: _GridWidget()),
        ],
      ),
    );
  }
}

class _GridWidget extends StatelessWidget {
  final List<Item> items = [
    Item(
      title: 'Profil',
      img: "assets/user.png",
      color: Color(0xff179BAE),
    ),
    Item(
      title: 'Mutasi',
      img: "assets/history.png",
      color: Color(0xff387F39),
    ),
    Item(
      title: 'Pembayaran',
      img: "assets/wallet.png",
      color: Color(0xffFF8225),
    ),
    Item(
      title: 'Pengaturan',
      img:
          "https://cdn-icons-png.flaticon.com/512/561/561135.png", // Gambar dari URL
      color: Color(0xff2E236C),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.all(16.0),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
      ),
      itemCount: items.length,
      itemBuilder: (context, index) {
        return _GridItem(item: items[index]);
      },
    );
  }
}

class _GridItem extends StatelessWidget {
  final Item item;

  const _GridItem({required this.item});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.network(
            item.img,
            height: 50,
            width: 50,
            fit: BoxFit.cover,
          ),
          SizedBox(height: 8),
          Text(
            item.title,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}

class Item {
  final String title;
  final String img;
  final Color color;

  Item({
    required this.title,
    required this.img,
    required this.color,
  });
}
