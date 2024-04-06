import 'package:flutter/material.dart';
import 'package:study_mate/routes/routes.dart';

class HomeCommunity extends StatefulWidget {
  const HomeCommunity({super.key});

  @override
  State<HomeCommunity> createState() => _HomeCommunityState();
}

class _HomeCommunityState extends State<HomeCommunity> {
  final avatarSrc = "https://i.redd.it/h0aubq87qxwb1.jpg";
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Community"),
        backgroundColor: Colors.blue,
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20),
            Column(
              children: [
                ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(avatarSrc),
                    radius: 20,
                  ),
                  title: Text("Community"),
                  subtitle: Text(
                      "Which is the best IDE for Flutter Android Studio or VS Code"),
                  onTap: () {
                    Navigator.pushNamed(context, MyRoutes.postRoute);
                  },
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment
                      .spaceEvenly, // Control trailing widget width
                  children: [
                    IconButton(
                      icon: Icon(Icons.favorite),
                      onPressed: () {
                        // Handle like button press
                      },
                    ),
                    IconButton(
                      icon: Icon(Icons.repeat_one_rounded),
                      onPressed: () {
                        // Handle retweet button press
                      },
                    ),
                    IconButton(
                      icon: Icon(Icons.save),
                      onPressed: () {
                        // Handle save button press
                      },
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20),
            Column(
              children: [
                ListTile(
                  title: Text("Community"),
                  subtitle: Text(
                      "Which is the best IDE for Flutter Android Studio or VS Code"),
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(avatarSrc),
                    radius: 20,
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, MyRoutes.postRoute);
                  },
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment
                      .spaceEvenly, // Control trailing widget width
                  children: [
                    IconButton(
                      icon: Icon(Icons.favorite),
                      onPressed: () {
                        // Handle like button press
                      },
                    ),
                    IconButton(
                      icon: Icon(Icons.repeat_one_rounded),
                      onPressed: () {
                        // Handle retweet button press
                      },
                    ),
                    IconButton(
                      icon: Icon(Icons.save),
                      onPressed: () {
                        // Handle save button press
                      },
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20),
            Column(
              children: [
                ListTile(
                  title: Text("Community"),
                  subtitle: Text(
                      "Which is the best IDE for Flutter Android Studio or VS Code"),
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(avatarSrc),
                    radius: 20,
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, MyRoutes.postRoute);
                  },
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment
                      .spaceEvenly, // Control trailing widget width
                  children: [
                    IconButton(
                      icon: Icon(Icons.favorite),
                      onPressed: () {
                        // Handle like button press
                      },
                    ),
                    IconButton(
                      icon: Icon(Icons.repeat_one_rounded),
                      onPressed: () {
                        // Handle retweet button press
                      },
                    ),
                    IconButton(
                      icon: Icon(Icons.save),
                      onPressed: () {
                        // Handle save button press
                      },
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20),
            Column(
              children: [
                ListTile(
                  title: Text("Community"),
                  subtitle: Text(
                      "Which is the best IDE for Flutter Android Studio or VS Code"),
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(avatarSrc),
                    radius: 20,
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, MyRoutes.postRoute);
                  },
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment
                      .spaceEvenly, // Control trailing widget width
                  children: [
                    IconButton(
                      icon: Icon(Icons.favorite),
                      onPressed: () {
                        // Handle like button press
                      },
                    ),
                    IconButton(
                      icon: Icon(Icons.repeat_one_rounded),
                      onPressed: () {
                        // Handle retweet button press
                      },
                    ),
                    IconButton(
                      icon: Icon(Icons.save),
                      onPressed: () {
                        // Handle save button press
                      },
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20),
            Column(
              children: [
                ListTile(
                  title: Text("Community"),
                  subtitle: Text(
                      "Which is the best IDE for Flutter Android Studio or VS Code"),
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(avatarSrc),
                    radius: 20,
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, MyRoutes.postRoute);
                  },
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment
                      .spaceEvenly, // Control trailing widget width
                  children: [
                    IconButton(
                      icon: Icon(Icons.favorite),
                      onPressed: () {
                        // Handle like button press
                      },
                    ),
                    IconButton(
                      icon: Icon(Icons.repeat_one_rounded),
                      onPressed: () {
                        // Handle retweet button press
                      },
                    ),
                    IconButton(
                      icon: Icon(Icons.save),
                      onPressed: () {
                        // Handle save button press
                      },
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20),
            Column(
              children: [
                ListTile(
                  title: Text("Community"),
                  subtitle: Text(
                      "Which is the best IDE for Flutter Android Studio or VS Code"),
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(avatarSrc),
                    radius: 20,
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, MyRoutes.postRoute);
                  },
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment
                      .spaceEvenly, // Control trailing widget width
                  children: [
                    IconButton(
                      icon: Icon(Icons.favorite),
                      onPressed: () {
                        // Handle like button press
                      },
                    ),
                    IconButton(
                      icon: Icon(Icons.message),
                      onPressed: () {
                        // Handle retweet button press
                      },
                    ),
                    IconButton(
                      icon: Icon(Icons.share),
                      onPressed: () {
                        // Handle save button press
                      },
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
