import 'package:flutter/material.dart';
import 'package:testproject/routes.dart';

class StressStatusScreen extends StatefulWidget {
  const StressStatusScreen({Key? key}) : super(key: key);

  @override
  State<StressStatusScreen> createState() => _StressStatusScreenState();
}

class _StressStatusScreenState extends State<StressStatusScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        title: const Text('Home'),
        automaticallyImplyLeading: false,
        actions: [
          MaterialButton(
              onPressed: () {
                Navigator.of(context).pushNamed(Routes.NOTIFICATIONS);
              },
              child: const Padding(
                padding: EdgeInsets.only(right: 12),
                child: Icon(
                  Icons.notifications_active,
                  color: Colors.white60,
                ),
              )),
        ],
      ),
      body: Container(
        padding: const EdgeInsets.only(left: 10),
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
              children: [
                TableRow(
                  children: [
                    TableCell(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'Name',
                            style: TextStyle(fontSize: 12, color: Colors.grey),
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Text(
                            'Ali Ahmed',
                            style: TextStyle(fontSize: 20),
                          ),
                        ],
                      ),
                    ),
                    // const TableCell(
                    //   child: Text(
                    //     'Ahmed',
                    //     style: TextStyle(fontSize: 20),
                    //   ),
                    // ),
                    // TableCell(
                    //   child: IconButton(
                    //       onPressed: () {},
                    //       icon:
                    //           const Icon(Icons.signal_cellular_4_bar_outlined)),
                    // ),
                    TableCell(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Stress Status',
                            style: TextStyle(fontSize: 12, color: Colors.grey),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: SizedBox(
                              height: 30,
                              child: Image.asset(
                                  "static/images/stressed_icon.png",
                                  scale: 0.2),
                            ),
                          ),
                        ],
                      ),
                    ),
                    TableCell(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'History',
                            style: TextStyle(fontSize: 12, color: Colors.grey),
                          ),
                          IconButton(
                              icon: const Icon(Icons.history),
                              onPressed: () {
                                Navigator.pushNamed(context, Routes.CALENDAR);
                              }),
                        ],
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
