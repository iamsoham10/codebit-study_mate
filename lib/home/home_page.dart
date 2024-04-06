import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Drawer Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final imageUrl = "https://i.redd.it/h0aubq87qxwb1.jpg";
    return Scaffold(
      appBar: AppBar(
        title: Text('Heyy Student !'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
           DrawerHeader(
            padding: EdgeInsets.zero,
              // decoration: BoxDecoration(
              //   color: Colors.blue,
              // ),
              child: UserAccountsDrawerHeader(
                
                accountName: Text("Manas Kherade"), 
                accountEmail: Text("abcd@gmail.com"),
                currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(imageUrl),

              )
            ),),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () {
                // Add navigation logic here
                Navigator.pop(context); // Close the drawer
              },
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text('Logout'),
              onTap: () {
                // Add navigation logic here
                Navigator.pop(context); // Close the drawer
              },
            ),
          ],
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                height: 100,
                width: 100,
                  child: InkWell(
                        child: Container(
                  decoration: BoxDecoration(
                    color: Colors.cyan,
                    shape: BoxShape.circle
                    ), 
                    child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Center content vertically
          children: [
            Icon(Icons.notifications, size: 40),
            Text('Notifications'),
          ],
        ),
                  ),
                  onTap: (){
                    print("hello");
                  },
                  ),
                
              ),
              SizedBox(
                height: 100,
                width: 100,
                  child: InkWell(
                        child: Container(
                  decoration: BoxDecoration(
                    color: Colors.cyan,
                    shape: BoxShape.circle
                    ), 
                    child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Center content vertically
          children: [
            Icon(Icons.assignment, size: 40),
            Text('Assignment'),
          ],
        ),
                  ),
                  onTap: (){
                    print("hello");
                  },
                  ),
                
              ),
              SizedBox(
                height: 100,
                width: 100,
                  child: InkWell(
                        child: Container(
                  decoration: BoxDecoration(
                    color: Colors.cyan,
                    shape: BoxShape.circle
                    ), 
                    child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Center content vertically
          children: [
            Icon(Icons.dashboard, size: 40),
            Text('Study Plan'),
          ],
        ),
                  ),
                  onTap: (){
                    Navigator.pushNamed(context, '/day');
                  },
                  ),
                
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                height: 100,
                width: 100,
                  child: InkWell(
                        child: Container(
                  decoration: BoxDecoration(
                    color: Colors.cyan,
                    shape: BoxShape.circle
                    ), 
                    child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Center content vertically
          children: [
            Icon(Icons.account_circle, size: 40),
            Text('Profile'),
          ],
        ),
                  ),
                  onTap: (){
                    Navigator.pushNamed(context, '/profile');
                  },
                  ),
                
              ),
              SizedBox(
                height: 100,
                width: 100,
                  child: InkWell(
                        child: Container(
                  decoration: BoxDecoration(
                    color: Colors.cyan,
                    shape: BoxShape.circle
                    ), 
                    child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Center content vertically
          children: [
            Icon(Icons.library_books, size: 40),
            Text('Academics'),
          ],
        ),
                  ),
                  onTap: (){
                    print("hello");
                  },
                  ),
                
              ),
              SizedBox(
                height: 100,
                width: 100,
                  child: InkWell(
                        child: Container(
                  decoration: BoxDecoration(
                    color: Colors.cyan,
                    shape: BoxShape.circle
                    ), 
                    child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Center content vertically
          children: [
            Icon(Icons.calendar_month, size: 40),
            Text('Calender'),
          ],
        ),
                  ),
                  onTap: (){
                    print("hello");
                  },
                  ),
                
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                height: 100,
                width: 100,
                  child: InkWell(
                        child: Container(
                  decoration: BoxDecoration(
                    color: Colors.cyan,
                    shape: BoxShape.circle
                    ), 
                    child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Center content vertically
          children: [
            Icon(Icons.list_alt, size: 40),
            Text('Examination'),
          ],
        ),
                  ),
                  onTap: (){
                    print("hello");
                  },
                  ),
                
              ),
              SizedBox(
                height: 100,
                width: 100,
                  child: InkWell(
                        child: Container(
                  decoration: BoxDecoration(
                    color: Colors.cyan,
                    shape: BoxShape.circle
                    ), 
                    child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Center content vertically
          children: [
            Icon(Icons.local_convenience_store_rounded, size: 40),
            Text('Your Activity'),
          ],
        ),
                  ),
                  onTap: (){
                    print("hello");
                  },
                  ),
                
              ),
              SizedBox(
                height: 100,
                width: 100,
                  child: InkWell(
                        child: Container(
                  decoration: BoxDecoration(
                    color: Colors.cyan,
                    shape: BoxShape.circle
                    ), 
                    child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Center content vertically
          children: [
            Icon(Icons.add_chart, size: 40),
            Text('Results'),
          ],
        ),
                  ),
                  onTap: (){
                    print("hello");
                  },
                  ),
                
              ),
            ],
          ),
        ],
      ),
      );
    
  }
}