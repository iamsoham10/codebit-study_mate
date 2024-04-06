import 'package:flutter/material.dart';
import 'package:study_mate/routes/routes.dart';

class StudentProfile extends StatelessWidget {
  const StudentProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile Page"),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CircleAvatar(
              radius: 75,
              backgroundImage: NetworkImage(
                  "https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png"),
            ),
            SizedBox(height: 20),
            ListTile(
              tileColor: Colors.cyan,
              title: Text("Name"),
              leading: Icon(Icons.format_align_center),
            ),
            SizedBox(height: 20),
            ListTile(
              tileColor: Colors.cyan,
              title: Text("Your Current Academic Year"),
              leading: Icon(Icons.format_align_center),
            ),
            SizedBox(height: 20),
            ListTile(
              tileColor: Colors.cyan,
              title: Text("Your Goals"),
              leading: Icon(Icons.format_align_center),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, MyRoutes.communityRoute);
              },
              child: Text("Community"),
            )
          ],
        ),
      ),
    );
  }
}
