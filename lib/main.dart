import 'package:flutter/material.dart';
import 'package:study_mate/community/community_detailed_page.dart';
import 'package:study_mate/community/community_home.dart';
import 'package:study_mate/profile/profile_page.dart';
import 'package:study_mate/routes/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/": (context) => StudentProfile(),
        MyRoutes.communityRoute: (context) => new HomeCommunity(),
        MyRoutes.postRoute: (context) => new PostPage(),
      },
    );
  }
}
