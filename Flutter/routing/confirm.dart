import 'package:flutter/material.dart';

class ConfirmPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Confirm Page'),
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('This is the Confirm Page'),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                print('Submitted'); // Log 'Submitted' to console
              },
              child: Text('Submit'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.popUntil(context, ModalRoute.withName('/product'));
              },
              child: Text('Back to Product'),
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
