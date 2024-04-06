import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Day {
  final int dayNumber;
  final String title;
  final String description;
  final String videoLink;

  Day({
    required this.dayNumber,
    required this.title,
    required this.description,
    required this.videoLink,
  });
}

class ProgrammingDaysPage extends StatelessWidget {
  final List<Day> days = [
    Day(
      dayNumber: 1,
      title: 'Day 1',
      description: 'Description for Day 1',
      videoLink: 'https://www.youtube.com/watch?v=4JMnuaDjP8E&t=1s',
    ),
    Day(
      dayNumber: 2,
      title: 'Day 2',
      description: 'Description for Day 2 ',
      videoLink: 'https://www.youtube.com/watch?v=4JMnuaDjP8E&t=2s',
    ),
    Day(
      dayNumber:3 ,
      title: 'Day 3',
      description: 'Description for Day 3 ',
      videoLink: 'https://www.youtube.com/watch?v=4JMnuaDjP8E&t=3s',
    ),
    Day(
      dayNumber: 4,
      title: 'Day 4',
      description: 'Description for Day 4',
      videoLink: 'https://www.youtube.com/watch?v=4JMnuaDjP8E&t=4s',
    ),
    Day(
      dayNumber: 5,
      title: 'Day 5',
      description: 'Description for Day 5',
      videoLink: 'https://www.youtube.com/watch?v=4JMnuaDjP8E&t=5s',
    ),
    Day(
      dayNumber: 6,
      title: 'Day ',
      description: 'Description for Day 6',
      videoLink: 'https://www.youtube.com/watch?v=4JMnuaDjP8E&t=6s',
    ),
    Day(
      dayNumber:7 ,
      title: 'Day ',
      description: 'Description for Day 7',
      videoLink: 'https://www.youtube.com/watch?v=4JMnuaDjP8E&t=7s',
    ),
    Day(
      dayNumber:8 ,
      title: 'Day 8',
      description: 'Description for Day 8',
      videoLink: 'https://www.youtube.com/watch?v=4JMnuaDjP8E&t=8s',
    ),
    Day(
      dayNumber:9 ,
      title: 'Day 9',
      description: 'Description for Day 9',
      videoLink: 'https://www.youtube.com/watch?v=4JMnuaDjP8E&t=9s',
    ),
    Day(
      dayNumber: 10,
      title: 'Day 10 ',
      description: 'Description for Day 10',
      videoLink: 'https://www.youtube.com/watch?v=4JMnuaDjP8E&t=10s',
    ),
    Day(
      dayNumber: 11,
      title: 'Day ',
      description: 'Description for Day 11',
      videoLink: 'https://www.youtube.com/watch?v=4JMnuaDjP8E&t=11s',
    ),
    Day(
      dayNumber: 12,
      title: 'Day 12',
      description: 'Description for Day 12',
      videoLink: 'https://www.youtube.com/watch?v=4JMnuaDjP8E&t=12s',
    ),
    Day(
      dayNumber: 13,
      title: 'Day 13',
      description: 'Description for Day 13',
      videoLink: 'https://www.youtube.com/watch?v=4JMnuaDjP8E&t=13s',
    ),
    Day(
      dayNumber: 14,
      title: 'Day 14',
      description: 'Description for Day 14',
      videoLink: 'https://www.youtube.com/watch?v=4JMnuaDjP8E&t=14s',
    ),
    Day(
      dayNumber: 15,
      title: 'Day 15',
      description: 'Description for Day 15',
      videoLink: 'https://www.youtube.com/watch?v=4JMnuaDjP8E&t=15s',
    ),
    // Add more days as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Programming Days'),
      ),
      body: ListView.builder(
        itemCount: days.length,
        itemBuilder: (context, index) {
          Day day = days[index];
          return Card(
            margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
            child: ListTile(
              leading: CircleAvatar(
                child: Text('${day.dayNumber}'),
              ),
              title: Text(day.title),
              subtitle: Text(day.description),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DayContentPage(day: day),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}

class DayContentPage extends StatelessWidget {
  final Day day;

  DayContentPage({required this.day});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(day.title),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(day.description),
            SizedBox(height: 20.0),
            Text(
              'YouTube Video Link:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8.0),
            Text(
              day.videoLink,
              style: TextStyle(color: Colors.blue),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                _launchURL(day.videoLink);
              },
              child: Text('Watch Video'),
            ),
          ],
        ),
      ),
    );
  }

  // Function to launch a URL
  void _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}

void main() {
  runApp(MaterialApp(
    title: 'Programming Days App',
    home: ProgrammingDaysPage(),
  ));
}