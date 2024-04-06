import 'package:flutter/material.dart';
import 'package:study_mate/home/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Study Plan Generator',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => QuestionPage(),
        '/home': (context) => HomePage(),
      },
    );
  }
}

class QuestionPage extends StatefulWidget {
  @override
  _QuestionPageState createState() => _QuestionPageState();
}

class _QuestionPageState extends State<QuestionPage> {
  String selectedLanguage = 'Python';
  int minutesPerDay = 30;
  List<String> programmingLanguages = ['Python', 'JavaScript', 'Java', 'C++'];
  List<String> levels = ['Beginner', 'Intermediate', 'Advanced'];
  String selectedLevel = '';

  void generateStudyPlan() {
    if (selectedLanguage.isEmpty || selectedLevel.isEmpty) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Error'),
            content: Text('Please select a programming language and level.'),
            actions: <Widget>[
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('OK'),
              ),
            ],
          );
        },
      );
    } else {
      // Your logic to generate a study plan based on selectedLanguage, selectedLevel, and minutesPerDay
      // For simplicity, we'll just print the values here
      print('Selected Language: $selectedLanguage');
      print('Selected Level: $selectedLevel');
      print('Minutes per Day: $minutesPerDay');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Study Plan Generator'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Select Programming Language:'),
            DropdownButton<String>(
              value: selectedLanguage,
              onChanged: (String? newValue) {
                setState(() {
                  selectedLanguage = newValue!;
                });
              },
              items: programmingLanguages.map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
            SizedBox(height: 20.0),
            Text('At what level do you know the language?'),
            Column(
              children: levels.map((level) {
                return CheckboxListTile(
                  title: Text(level),
                  value: selectedLevel == level,
                  onChanged: (bool? value) {
                    setState(() {
                      selectedLevel = value! ? level : '';
                    });
                  },
                );
              }).toList(),
            ),
            SizedBox(height: 20.0),
            Text('How many minutes can you study per day?'),
            Slider(
              value: minutesPerDay.toDouble(),
              min: 30.0,
              max: 240.0,
              divisions: 7,
              onChanged: (double value) {
                setState(() {
                  minutesPerDay = value.toInt();
                });
              },
              label: minutesPerDay.toString(),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: generateStudyPlan,
              child: Text('Generate Study Plan'),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/home');
              },
              child: Text('Go to Home'),
            ),
          ],
        ),
      ),
    );
  }
}


