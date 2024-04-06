import 'package:flutter/material.dart';

class PostPage extends StatelessWidget {
  // Pass the tweet data

  const PostPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Community"),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        // Allow scrolling for long content
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15, top: 15),
                    child: CircleAvatar(
                      backgroundImage:
                          NetworkImage('https://i.redd.it/h0aubq87qxwb1.jpg'),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text(
                        "Soham Chitale",
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment:
                      CrossAxisAlignment.start, // Left-align content
                  children: [
                    Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                      style: const TextStyle(fontSize: 16.0),
                    ), // Add spacing
                    Row(
                      mainAxisAlignment:
                          MainAxisAlignment.spaceBetween, // Align icons
                      children: [
                        Row(
                          children: [
                            IconButton(
                              icon: Icon(Icons.favorite),
                              onPressed: () {}, // Handle like action
                            ), // Display like count
                          ],
                        ),
                        Row(
                          children: [
                            IconButton(
                              icon: Icon(Icons.comment),
                              onPressed: () {}, // Handle retweet action
                            ), // Display retweet count
                          ],
                        ),
                        IconButton(
                          icon: Icon(Icons.share),
                          onPressed: () {}, // Handle save action
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const Divider(),
              ListTile(
                title: Text("Community"),
                subtitle: Text(
                    "Which is the best IDE for Flutter Android Studio or VS Code"),
                leading: CircleAvatar(
                  backgroundImage:
                      NetworkImage('https://i.redd.it/h0aubq87qxwb1.jpg'),
                  radius: 20,
                ),
                onTap: () {
                  print("Hello");
                },
              ),
              const Divider(),
              ListTile(
                title: Text("Community"),
                subtitle: Text(
                    "Which is the best IDE for Flutter Android Studio or VS Code"),
                leading: CircleAvatar(
                  backgroundImage:
                      NetworkImage('https://i.redd.it/h0aubq87qxwb1.jpg'),
                  radius: 20,
                ),
                onTap: () {
                  print("Hello");
                },
              ),
              const Divider(),
              ListTile(
                title: Text("Community"),
                subtitle: Text(
                    "Which is the best IDE for Flutter Android Studio or VS Code"),
                leading: CircleAvatar(
                  backgroundImage:
                      NetworkImage('https://i.redd.it/h0aubq87qxwb1.jpg'),
                  radius: 20,
                ),
                onTap: () {
                  print("Hello");
                },
              ),
              const Divider(),
              ListTile(
                title: Text("Community"),
                subtitle: Text(
                    "Which is the best IDE for Flutter Android Studio or VS Code"),
                leading: CircleAvatar(
                  backgroundImage:
                      NetworkImage('https://i.redd.it/h0aubq87qxwb1.jpg'),
                  radius: 20,
                ),
                onTap: () {
                  print("Hello");
                },
              ),
              const Divider(),
              ListTile(
                title: Text("Community"),
                subtitle: Text(
                    "Which is the best IDE for Flutter Android Studio or VS Code"),
                leading: CircleAvatar(
                  backgroundImage:
                      NetworkImage('https://i.redd.it/h0aubq87qxwb1.jpg'),
                  radius: 20,
                ),
                onTap: () {
                  print("Hello");
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
