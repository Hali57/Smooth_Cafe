import 'package:flutter/material.dart';

const myImage = 'assets/images/coffee.jpg';

@override
class CafeMenuPage extends StatelessWidget {
  final List<MenuItem> menuItems = [
    MenuItem(name: 'Espresso', iconData: Icons.coffee),
    MenuItem(name: 'Latte', iconData: Icons.local_cafe),
    MenuItem(name: 'Cappuccino', iconData: Icons.free_breakfast),
    MenuItem(name: 'Tea', iconData: Icons.emoji_food_beverage),
    // Add more items here
  ];

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFF5E0C3),
        title: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.local_cafe, size: 30),
              SizedBox(width: 10),
              Text('Smooth Cafe'),
            ],
          ),
        ),
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            myImage,
            fit: BoxFit.cover,
          ),
          Container(
            color: Colors.black.withOpacity(0.2), // Adjust opacity as needed
          ),
          ListView.builder(
            itemCount: menuItems.length,
            itemBuilder: (context, index) {
              final item = menuItems[index];
              return Card(
                color: Colors.white.withOpacity(0.4),
                margin: EdgeInsets.all(10),
                child: ListTile(
                  leading: Icon(item.iconData, size: 40),
                  title: Text(item.name,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

class MenuItem {
  final String name;
  final IconData iconData;

  MenuItem({required this.name, required this.iconData});
}
