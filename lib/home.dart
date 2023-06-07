import 'package:flutter/material.dart';
import 'package:lottery_app/screen_one.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  static const String route = 'home_screen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Colors.black),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://images.pexels.com/photos/1054251/pexels-photo-1054251.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
              ),
              accountName: Text('Saba Javed'),
              accountEmail: Text('sabajaved@gmail.com'),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {
                Navigator.pushNamed(context, HomeScreen.route);
              },
            ),
            ListTile(
              leading: Icon(Icons.document_scanner),
              title: Text('Screen One'),
              onTap: () {
                Navigator.pushNamed(context, ScreenOne.route);
              },
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text('Logout'),
              onTap: () {
                Navigator.pushNamed(context, HomeScreen.route);
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: const Text('Home Screen'),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: 200,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text('Saba Javed'),
                  subtitle: Text('Left this conversation'),
                  trailing: Text('8:00 PM'),
                  leading: CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage(
                        'https://images.pexels.com/photos/2726111/pexels-photo-2726111.jpeg?auto=compress&cs=tinysrgb&w=600'),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
