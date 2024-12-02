import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          body: TabBarView(children: [
            _buildBalanceTab(screenHeight),
            _buildHistoryTab(),
            _buildSettingsTab(),
          ]),
          bottomNavigationBar: const TabBar(
            labelColor: Colors.blue,
            unselectedLabelColor: Colors.grey,
            indicatorColor: Colors.blue,
            tabs: [
              Tab(icon: Icon(Icons.account_balance), text: 'Balance'),
              Tab(icon: Icon(Icons.history), text: 'History'),
              Tab(icon: Icon(Icons.settings), text: 'Settings'),
            ],
          )),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: ProfileScreen(),
  ));
}

Widget _buildHistoryTab() {
  return const SafeArea(
    child: Center(
      child: Text(
        'Transaction History',
        style: TextStyle(
          fontSize: 18,
          color: Colors.blue,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
  );
}

// Content for Settings Tab
Widget _buildSettingsTab() {
  return const SafeArea(
    child: Center(
      child: Text(
        'Settings',
        style: TextStyle(
          fontSize: 18,
          color: Colors.blue,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
  );
}

Widget _buildBalanceTab(double screenHeight) {
  return SafeArea(
    child: Stack(
      children: [
        Container(height: 100, color: const Color.fromARGB(255, 5, 1, 40)),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Row(
              children: [
                SizedBox(width: 10),
                CircleAvatar(radius: 20, backgroundColor: Colors.grey),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'VigneshKumar C',
                      style: TextStyle(color: Colors.white, fontSize: 20.0),
                    ),
                    Text(
                      'Welcome',
                      style: TextStyle(color: Colors.white, fontSize: 20.0),
                    ),
                  ],
                ),
              ],
            ),
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
                      TranscationImages(),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Positioned.fill(
                top: screenHeight / 3 + 50,
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20.0)),
                  child: _FinancialBuild(),
                ),
              ),
            ),
            _RecentTranscation(),
          ],
        ),
      ],
    ),
  );
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

Widget _FinancialBuild() {
  return SafeArea(
    child: Stack(
      children: [
        Container(
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 180, 173, 240),
                borderRadius: BorderRadius.circular(10.0)),
            height: 80),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child:
                      CircleAvatar(radius: 20, backgroundColor: Colors.white),
                ),
                const SizedBox(width: 8.0),
                const Flexible(
                  child: Text(
                    'Lets check your Financial insight for the month of june!',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.normal,
                      color: Colors.black,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                const SizedBox(width: 8),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: () {
                      print('Eye icon tapped');
                    },
                    child: const Icon(
                      Icons.forward,
                      color: Colors.grey,
                      size: 24,
                    ),
                  ),
                ),
              ],
            )
          ],
        )
      ],
    ),
  );
}

Widget _RecentTranscation() {
  return SafeArea(
    child: Stack(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Text(
                  'Recent Transcation',
                  style: TextStyle(
                    fontSize: 12.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child:
                      CircleAvatar(radius: 20, backgroundColor: Colors.white),
                ),
                const SizedBox(width: 8.0),
                const Flexible(
                  child: Text(
                    'youtube',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.normal,
                      color: Colors.black,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                const SizedBox(width: 8),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: () {
                      print('Eye icon tapped');
                    },
                    child: const Text(
                      '14.00',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        )
      ],
    ),
  );
}
