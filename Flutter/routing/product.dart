import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product Page'),
        actions: [
          Builder(
            builder: (context) => IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              decoration: InputDecoration(labelText: 'Product Name'),
            ),
            SizedBox(height: 16.0),
            TextField(
              decoration: InputDecoration(labelText: 'Product ID'),
            ),
            SizedBox(height: 16.0),
            Text('Select Type:'),
            Column(
              children: [
                RadioListTile(
                  title: Text('Type 1'),
                  value: 'Type 1',
                  groupValue: null,
                  onChanged: (value) {},
                ),
                RadioListTile(
                  title: Text('Type 2'),
                  value: 'Type 2',
                  groupValue: null,
                  onChanged: (value) {},
                ),
                RadioListTile(
                  title: Text('Type 3'),
                  value: 'Type 3',
                  groupValue: null,
                  onChanged: (value) {},
                ),
              ],
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/order');
              },
              child: Text('Next'),
            ),
          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Menu Options',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              title: Text('Product Page'),
              onTap: () {
                Navigator.pushNamed(context, '/product');
              },
            ),
            ListTile(
              title: Text('Order Page'),
              onTap: () {
                Navigator.pushNamed(context, '/order');
              },
            ),
            ListTile(
              title: Text('Confirmation Page'),
              onTap: () {
                Navigator.pushNamed(context, '/confirm');
              },
            ),
          ],
        ),
      ),
    );
  }
}
