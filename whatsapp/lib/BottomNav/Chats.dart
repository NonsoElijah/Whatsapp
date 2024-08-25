import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp/BottomNav/Call.dart';
import 'package:whatsapp/OnTap/Archived.dart';

class Chats extends StatelessWidget {
  const Chats({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: const Body(),
    );
  }
}

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      thickness: 1,
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.all(15.0),
                child: Text(
                  'Chats',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Colors.white,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5.0),
                child: TextField(
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                  decoration: InputDecoration(
                    hintText: 'Ask Meta AI or Search',
                    isDense: true,
                    contentPadding: const EdgeInsets.all(8),
                    hintStyle: const TextStyle(
                      color: Colors.white24,
                    ),
                    prefixIcon: const Icon(Icons.circle_outlined, color: Colors.red),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(color: Colors.white38),
                    ),
                  ),
                ),
              ),
              const MyText(),
              const check(),
            ],
          ),
        ),
      ),
    );
  }
}

class MyText extends StatelessWidget {
  const MyText({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(72, 6, 146, 15),
                minimumSize: const Size(10, 30)),
            onPressed: () {},
            child: Text(
              'All',
              style: TextStyle(color: Colors.lightGreen[100]),
            ),
          ),
          const SizedBox(
            width: 8,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(72, 6, 146, 15),
                minimumSize: const Size(10, 30)),
            onPressed: () {},
            child: Text(
              'Unread',
              style: TextStyle(color: Colors.lightGreen[100]),
            ),
          ),
          const SizedBox(
            width: 8,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(72, 6, 146, 15),
                minimumSize: const Size(10, 30)),
            onPressed: () {},
            child: Text(
              'Favourites',
              style: TextStyle(color: Colors.lightGreen[100]),
            ),
          ),
          const SizedBox(
            width: 8,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(72, 6, 146, 15),
                minimumSize: const Size(10, 30)),
            onPressed: () {},
            child: Text(
              'Groups',
              style: TextStyle(color: Colors.lightGreen[100]),
            ),
          ),
        ],
      ),
    );
  }
}

class check extends StatelessWidget {
  const check({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      child: ListView(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          ListTile(
            minTileHeight: 10,
            onTap: () {
              Navigator.push(
                context,
                _slidePageTransition(
                  page: ArchivedChatsPage(),
                ),
              );
            },
            title: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Archived',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            leading: Icon(
              CupertinoIcons.archivebox,
              color: Colors.grey[400],
              size: 17,
            ),
            trailing: const Text('7'),
          ),
          ListTile(
            onTap: () {},
            title: const Text(
              'Mom',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            subtitle: const Text('Had coffee???'),
            leading: const CircleAvatar(
              // backgroundColor: Colors.white,
              backgroundImage: AssetImage('assets/images/download.png'),
            ),
            trailing: const Text('5:35 PM'),
          ),
          ListTile(
            onTap: () {},
            title: const Text(
              'Johny Bro',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            subtitle: const Text('Wb the meeting?'),
            leading: const CircleAvatar(
              backgroundImage: AssetImage('assets/images/download.png'),
            ),
            trailing: const Text('10:07 AM'),
          ),
          ListTile(
            onTap: () {},
            title: const Text(
              'Flutter Devs',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            subtitle: const Text('Johny: Good mrng guys!'),
            leading: const CircleAvatar(
              child: Icon(Icons.person, color: Colors.white),
            ),
            trailing: const Text('9:11 AM'),
          ),
          ListTile(
            onTap: () {},
            title: const Text(
              'Sam Bombay',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            subtitle: const Text('Meeting with BOSS tomorrow!'),
            leading: const CircleAvatar(
              child: Icon(Icons.person, color: Colors.white),
            ),
            trailing: const Text('Yesterday'),
          ),
          ListTile(
            onTap: () {},
            title: const Text(
              'Stacy',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            subtitle: const Text('Call me asap'),
            leading: const CircleAvatar(
              child: Icon(Icons.person, color: Colors.white),
            ),
            trailing: const Text('Tuesday'),
          ),
          ListTile(
            onTap: () {},
            title: const Text(
              'Andrew',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            subtitle: const Text('Okay its fine'),
            leading: const CircleAvatar(
              child: Icon(Icons.person, color: Colors.white),
            ),
            trailing: const Text('Tuesday'),
          ),
          ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const CallPage()),
              );
            },
            title: const Text(
              'Sara',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            subtitle: const Text(
              'Hmmm',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            leading: const CircleAvatar(
              backgroundImage: AssetImage('assets/images/profile.png'),
            ),
            trailing: const Text('Monday'),
          ),
        ],
      ),
    );
  }
}

PageRouteBuilder _slidePageTransition({required Widget page}) {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => page,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(1.0, 0.0);
      const end = Offset.zero;
      const curve = Curves.easeInOut;

      var tween = Tween(begin: begin, end: end);
      var offsetAnimation =
          animation.drive(tween.chain(CurveTween(curve: curve)));

      return SlideTransition(position: offsetAnimation, child: child);
    },
  );
}
