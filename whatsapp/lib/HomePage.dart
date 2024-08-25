import 'package:flutter/material.dart';
import 'package:whatsapp/BottomNav/Chats.dart';
import 'package:whatsapp/BottomNav/Call.dart';
import 'package:whatsapp/BottomNav/Update.dart';
import 'package:whatsapp/BottomNav/communities.dart';
import 'package:whatsapp/BottomNav/settings.dart';
import 'package:whatsapp/OnTap/camera.dart';

class Homepage extends StatefulWidget {
  const Homepage({
    super.key,
  });

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  bool changeColor = true;
  int currentIndex = 3;
  final Pages = [
    const Update(),
    const Call(),
    const CommunitiesScreen(),
    const Chats(),
    const SettingsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(currentIndex),
      backgroundColor: Theme.of(context).primaryColor,
      body: Pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            label: 'Update',
            icon: Icon(Icons.update),
          ),
          BottomNavigationBarItem(
            label: 'Call',
            icon: Icon(Icons.call),
          ),
          BottomNavigationBarItem(
            label: 'Communities',
            icon: Icon(Icons.group),
          ),
          BottomNavigationBarItem(
            label: 'Chats',
            icon: Icon(
              Icons.chat,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Settings',
            icon: Icon(Icons.settings),
          ),
        ],
        currentIndex: currentIndex,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey[400],
        backgroundColor: Colors.grey[900],
        type: BottomNavigationBarType.fixed,
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
      ),
    );
  }

  AppBar _buildAppBar(int index) {
    switch (index) {
      case 0:
        return AppBar(
          title: const Text(
            'Updates',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          centerTitle: true,
          backgroundColor: Theme.of(context).primaryColor,
          leading: IconButton(
            onPressed: () => '',
            icon: CircleAvatar(
              radius: 14,
              backgroundColor: Colors.grey[800],
              child: const Icon(
                Icons.more_horiz,
                color: Colors.white,
                size: 20,
              ),
            ),
          ),
        );
      case 1:
        return AppBar(
          backgroundColor: Theme.of(context).primaryColor,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleAvatar(
                radius: 14,
                backgroundColor: Colors.grey[800],
                child: const Icon(
                  Icons.more_horiz,
                  color: Colors.white,
                  size: 20,
                ),
              ),
              const SizedBox(
                width: 30,
              ),
              Row(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        changeColor = true;
                      });
                    },
                    child: Text(
                      'All',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor:
                          changeColor ? Colors.grey[800] : Colors.grey[900],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                          5,
                        ),
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        changeColor = false;
                      });
                    },
                    child: const Text(
                      'Missed',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      backgroundColor:
                          changeColor ? Colors.grey[900] : Colors.grey[800],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                width: 10,
              ),
              Row(
                children: [
                  CircleAvatar(
                    radius: 12,
                    backgroundColor: Colors.grey[800],
                    child: const Icon(
                      Icons.apps,
                      color: Colors.white,
                      size: 17,
                    ),
                  ),
                  const SizedBox(width: 16),
                  CircleAvatar(
                    radius: 12,
                    backgroundColor: Colors.grey[800],
                    child: const Icon(
                      Icons.add,
                      color: Colors.white,
                      size: 17,
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      case 2:
        return AppBar(
          title: const Text(
            'Communities',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Theme.of(context).primaryColor,
          centerTitle: true,
        );
      case 3:
        return AppBar(
          title: const Text(
            'Chats',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          leading: IconButton(
            onPressed: () => '',
            icon: CircleAvatar(
              radius: 14,
              backgroundColor: Colors.grey[800],
              child: const Icon(
                Icons.more_horiz,
                color: Colors.white,
                size: 20,
              ),
            ),
          ),
          actions: [
            IconButton(
              onPressed: () => '',
              icon: CircleAvatar(
                radius: 10,
                backgroundColor: Colors.grey[800],
                child: const Icon(
                  Icons.circle_outlined,
                  color: Color.fromARGB(255, 23, 33, 222),
                  size: 20,
                ),
              ),
            ),
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Camera()),
                );
              },
              icon: CircleAvatar(
                radius: 10,
                backgroundColor: Colors.grey[800],
                child: const Icon(
                  Icons.camera_alt,
                  color: Colors.white,
                  size: 15,
                ),
              ),
            ),
            IconButton(
              onPressed: () => '',
              icon: const Icon(
                Icons.add_circle,
                color: Colors.green,
              ),
            ),
          ],
          centerTitle: true,
          backgroundColor: Theme.of(context).primaryColor,
        );
      case 4:
        return AppBar(
          centerTitle: true,
          title: const Text(
            'Settings',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Theme.of(context).primaryColor,
        );
      default:
        return AppBar();
    }
  }
}
