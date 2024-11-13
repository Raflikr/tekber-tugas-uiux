import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'About Rafli',
      home: AboutPage(),
    );
  }
}

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('☰    About Me'),
        backgroundColor: const Color.fromARGB(255, 60, 134, 194),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromRGBO(255, 182, 193, 1),
              Color.fromRGBO(255, 228, 225, 1),
              Color.fromRGBO(255, 240, 245, 1),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SingleChildScrollView(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 30,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Center(
                      child: Text(
                        'Hai Everyone, Kenalin aku .....',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16),

              CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage('assets/images/profile.png'),
              ),
              SizedBox(height: 16),

              Center(
                child: Text(
                  'Muhammad Rafli Krishnadanu Putra Wardana',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 8),

              Text(
                'NRP: 5026221099',
                style: TextStyle(fontSize: 18, color: Colors.grey[700]),
              ),
              SizedBox(height: 16),

              Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.orange.shade50,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Text(
                      'Fun Fact',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.orangeAccent,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Sabun mandi saya adalah Switzal. Karena kalau selain itu kulit saya gatal - gatal',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 16, color: Colors.grey[800]),
                    ),
                    SizedBox(height: 10),
                    Image.asset(
                      'assets/images/switzal.png',
                      width: 80,
                      height: 80,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16),

              Container(
                padding: EdgeInsets.symmetric(vertical: 4.0),
                child: Column(
                  children: [
                    Text(
                      "Untuk hubungi saya kontak di :",
                      style: TextStyle(fontSize: 16, color: Colors.grey[800]),
                    ),
                    SizedBox(height: 4),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () async {
                            const url = 'https://instagram.com/Raflikr';
                            if (await canLaunch(url)) {
                              await launch(url);
                            }
                          },
                          child: Image.asset(
                            'assets/images/instagram.png',
                            width: 40,
                            height: 40,
                          ),
                        ),
                        SizedBox(width: 8),
                        GestureDetector(
                          onTap: () async {
                            const url =
                                'https://www.linkedin.com/in/raflikrishnadanu/';
                            if (await canLaunch(url)) {
                              await launch(url);
                            }
                          },
                          child: Image.asset(
                            'assets/images/linkedin.png',
                            width: 40,
                            height: 40,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
