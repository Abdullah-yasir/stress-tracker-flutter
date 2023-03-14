import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        title: const Text('Profile Screen'),
        automaticallyImplyLeading: false,
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 20),
            // Padding(
            //   padding: const EdgeInsets.all(8.0),
            //   child: Container(
            //     height: 80,
            //     child: Row(
            //       crossAxisAlignment: CrossAxisAlignment.center,
            //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //       children: [
            //         Icon(Icons.power_settings_new),
            //         Icon(Icons.notifications_active),
            //       ],
            //     ),
            //   ),
            // ),

            Table(
              children: const [
                TableRow(
                  children: [
                    TableCell(
                      child: Text(
                        'Username',
                      ),
                    ),
                    TableCell(
                      child: Text(
                        'Ali Ahmed',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Text(
                        'ID',
                      ),
                    ),
                    TableCell(
                      child: Text(
                        '123456',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Text(
                        'Email',
                      ),
                    ),
                    TableCell(
                      child: Text(
                        'ahmed@mail.com',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Text(
                        'Phone Number',
                      ),
                    ),
                    TableCell(
                      child: Text(
                        '0123456789',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
