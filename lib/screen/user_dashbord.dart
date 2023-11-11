import 'package:flutter/material.dart';

class UserDashboard extends StatefulWidget {
  const UserDashboard({Key? key}) : super(key: key);

  @override
  State<UserDashboard> createState() => _UserDashboardState();
}

class _UserDashboardState extends State<UserDashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.amber, Colors.white, Colors.green],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Center(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 20.0),
                child: Image.asset(
                  'assets/project_image2.png',
                  width: 150,
                  height: 150,
                ),
              ),
              SingleChildScrollView(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      // Text(data, style: TextStyle(fontSize: 24.0)), // Display the data

                      const SizedBox(height: 20),

                      ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, 'update_data');
                          // Add your update data logic here
                        },
                        child: const Text('Update Data'),
                      ),

                      const SizedBox(height: 20),

                      ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, 'fetch_data');
                          // Add your fetch data logic here
                        },
                        child: const Text('Fetch Data'),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
