import 'package:flutter/material.dart';
import 'package:study_mate/community/community_detailed_page.dart';
import 'package:study_mate/community/community_home.dart';
import 'package:study_mate/home/home_page.dart';
import 'package:study_mate/profile/profile_page.dart';
import 'package:study_mate/questions/day.dart';
import 'package:study_mate/questions/login.dart';
import 'package:study_mate/questions/quest.dart';
import 'package:study_mate/questions/signup.dart';
import 'package:study_mate/questions/welcome.dart';
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
        "/": (context) => MyHomePage(),
        MyRoutes.loginRoute: (context) => new LoginPage(),
        MyRoutes.signupRoute: (context) => new SignUpPage(),
        MyRoutes.quesRoute:(context) => new QuestionPage(),
        MyRoutes.dayRoute:(context) => new ProgrammingDaysPage(),
        MyRoutes.homeRoute: (context) => new HomePage(),
        MyRoutes.profileRoute: (context) => new StudentProfile(),
        MyRoutes.communityRoute: (context) => new HomeCommunity(),
        MyRoutes.postRoute: (context) => new PostPage(),
      },
    );
  }
}
