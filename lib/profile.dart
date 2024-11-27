import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(height: 100, color: Colors.orange),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Row(
                  children: [
                    SizedBox(width: 10),
                    CircleAvatar(radius: 20, backgroundColor: Colors.grey),
                    SizedBox(width: 10),
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'vignesh',
                              style: TextStyle(color: Colors.green),
                              textAlign: TextAlign.left,
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'Welcome',
                              style: TextStyle(color: Colors.green),
                              textAlign: TextAlign.left,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                // Container(
                //   // height: screenHeight / 3,
                //   // color: const Color.fromARGB(255, 2, 10, 48),
                //   padding: const EdgeInsets.symmetric(horizontal: 16.0),
                //   child: Row(
                //     children: [
                //       CircleAvatar(
                //         radius: 20,
                //         backgroundImage: AssetImage(''),
                //       ),
                //       SizedBox(width: 8),
                //       Expanded(
                //         child: Column(
                //             mainAxisAlignment: MainAxisAlignment.center,
                //             crossAxisAlignment: CrossAxisAlignment.start,
                //             children: [
                //               Text(
                //                 'Shan the KING',
                //                 style: TextStyle(
                //                   fontSize: 20,
                //                   fontWeight: FontWeight.bold,
                //                   color: Colors.white,
                //                 ),
                //               ),
                //               Text(
                //                 'Welcome Back',
                //                 style: TextStyle(
                //                     fontSize: 20,
                //                     fontWeight: FontWeight.normal,
                //                     color: Colors.grey),
                //               )
                //             ]),
                //       ),
                //       IconButton(
                //         icon: Icon(Icons.notifications, color: Colors.white),
                //         onPressed: () {
                //           print('Notification icon pressed');
                //         },
                //       ),
                //     ],
                //   ),
                // ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Card(
                    elevation: 4,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Your Balance',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey),
                          ),
                          const SizedBox(height: 8),
                          Row(
                            children: [
                              const Text(
                                'Rs: 41,37,890',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                              const SizedBox(width: 8),
                              GestureDetector(
                                onTap: () {
                                  print('Eye icon tapped');
                                },
                                child: const Icon(
                                  Icons.visibility_off,
                                  color: Colors.grey,
                                  size: 24,
                                ),
                              ),
                            ],
                          ),
                          TranscationImages()
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned.fill(
                  top: screenHeight / 3 + 50,
                  child: Container(
                    color: Colors.white,
                    child: const Center(
                      child: Text(
                        "Other Content Here",
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: ProfileScreen(),
  ));
}

class TranscationImages extends StatelessWidget {
  final List<Map<String, dynamic>> icons = [
    {"icon": Icons.arrow_upward, "name": "Up"},
    {"icon": Icons.arrow_downward, "name": "Down"},
    {"icon": Icons.arrow_back, "name": "Left"},
    {"icon": Icons.arrow_forward, "name": "Right"},
  ];

  TranscationImages({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: icons.map((item) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Column(
              children: [
                Icon(
                  item['icon'],
                  size: 50,
                  color: Colors.blue,
                ),
                const SizedBox(width: 8.0),
                Text(item['name']!, style: const TextStyle(fontSize: 16)),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}
