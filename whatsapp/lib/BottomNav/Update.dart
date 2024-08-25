import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Update extends StatelessWidget {
  const Update({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: const UpdatePage(),
    );
  }
}

class UpdatePage extends StatefulWidget {
  const UpdatePage({super.key});

  @override
  State<UpdatePage> createState() => _UpdatePageState();
}

class _UpdatePageState extends State<UpdatePage> {
  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Updates',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 30,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: TextField(
                style: const TextStyle(
                  color: Colors.white,
                ),
                decoration: InputDecoration(
                  prefixIcon:
                      const Icon(Icons.search_rounded, color: Colors.white),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  hintText: 'Search',
                  isDense: true,
                  contentPadding: const EdgeInsets.all(8),
                  hintStyle: const TextStyle(
                    color: Colors.white24,
                    fontWeight: FontWeight.bold,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(color: Colors.white38),
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Status',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            const Check(),
            const ViewedUpdate(),
            const SizedBox(
              height: 30,
            ),
            const Channels(),
          ],
        ),
      ),
    );
  }
}

class Check extends StatelessWidget {
  const Check({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      child: ListView(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        children: const [
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.white,
              child: Icon(Icons.person, color: Colors.black),
            ),
            title: Text(
              'My status',
              style: TextStyle(color: Colors.white),
            ),
            tileColor: Colors.grey,
            subtitle: Text(
              'Add to my status',
              style: TextStyle(color: Colors.white),
            ),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.camera_alt, color: Colors.white),
                SizedBox(width: 20),
                Icon(Icons.edit, color: Colors.white),
              ],
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Recent updates',
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
          ),
          ListTile(
            tileColor: Colors.transparent,
            title: Text(
              'Johny Bro',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            subtitle: Text('just now'),
            leading: CircleAvatar(
              backgroundColor: Colors.white,
              radius: 25,
            ),
          ),
          ListTile(
            title: Text(
              'Kaffy',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            subtitle: Text('2m ago'),
            leading: CircleAvatar(
              backgroundColor: Colors.red,
              radius: 25,
            ),
          ),
          ListTile(
            title: Text(
              'mum',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            subtitle: Text('5m ago'),
            leading: CircleAvatar(
              backgroundColor: Colors.yellowAccent,
              radius: 25,
            ),
          ),
          ListTile(
            title: Text(
              'Fresh',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            subtitle: Text('20m ago'),
            leading: CircleAvatar(
              backgroundColor: Colors.deepPurple,
              radius: 25,
            ),
          ),
          ListTile(
            title: Text(
              'David',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            subtitle: Text('35m ago'),
            leading: CircleAvatar(
              backgroundColor: Colors.pinkAccent,
              radius: 25,
            ),
          ),
          ListTile(
            title: Text(
              'Aiko Gee',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            subtitle: Text('1h ago'),
            leading: CircleAvatar(
              backgroundColor: Colors.greenAccent,
              radius: 25,
            ),
          ),
          ListTile(
            title: Text(
              'Bestie',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            subtitle: Text('3h ago'),
            leading: CircleAvatar(
              backgroundColor: Colors.blueGrey,
              radius: 25,
            ),
          ),
        ],
      ),
    );
  }
}

class ViewedUpdate extends StatefulWidget {
  const ViewedUpdate({super.key});

  @override
  State<ViewedUpdate> createState() => _ViewedUpdateState();
}

class _ViewedUpdateState extends State<ViewedUpdate> {
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                'viewed Updates',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Spacer(),
              Padding(
                padding: EdgeInsets.only(right: 15),
                child: Icon(
                  Icons.keyboard_arrow_down_rounded,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
          ListTile(
            title: Text(
              'Nonso',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            subtitle: Text('5h ago'),
            leading: CircleAvatar(
              backgroundColor: Colors.indigo,
              radius: 25,
            ),
          ),
          ListTile(
            title: Text(
              'Obed',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            subtitle: Text('7h ago'),
            leading: CircleAvatar(
              backgroundColor: Colors.deepOrange,
              radius: 25,
            ),
          ),
        ],
      ),
    );
  }
}

class Channels extends StatefulWidget {
  const Channels({super.key});

  @override
  State<Channels> createState() => _ChannelsState();
}

class _ChannelsState extends State<Channels> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Channels',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            'Stay updated on topics that matter to you.Find\nchannels to follow below',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Row(
            children: [
              Text(
                'Find channels to follow',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Spacer(),
              Padding(
                padding: EdgeInsets.only(right: 15),
                child: Icon(
                  Icons.keyboard_arrow_up_rounded,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
          ListTile(
            title: const Text(
              'WhatsApp',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            subtitle: const Text('175M followers'),
            leading: const CircleAvatar(
              backgroundImage: AssetImage('assets/images/download1.jpeg'),
            ),
            trailing: Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Column(
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(72, 6, 146, 15),
                        minimumSize: const Size(10, 30)),
                    onPressed: () {},
                    child: Text(
                      'follow',
                      style: TextStyle(color: Colors.lightGreen[100]),
                    ),
                  ),
                ],
              ),
            ),
          ),
          ListTile(
            title: const Text(
              'F1',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            subtitle: const Text('954k followers'),
            leading: const CircleAvatar(
              backgroundImage: AssetImage('assets/images/f1.jpeg'),
            ),
            trailing: Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Column(
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(72, 6, 146, 15),
                        minimumSize: const Size(10, 30)),
                    onPressed: () {},
                    child: Text(
                      'follow',
                      style: TextStyle(color: Colors.lightGreen[100]),
                    ),
                  ),
                ],
              ),
            ),
          ),
          ListTile(
            title: const Text(
              'Spotify',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            subtitle: const Text('10.5M followers'),
            leading: const CircleAvatar(
              backgroundColor: Colors.white,
              backgroundImage: AssetImage(
                'assets/images/image-removebg-preview.png',
              ),
            ),
            trailing: Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Column(
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(72, 6, 146, 15),
                        minimumSize: const Size(10, 30)),
                    onPressed: () {},
                    child: Text(
                      'follow',
                      style: TextStyle(color: Colors.lightGreen[100]),
                    ),
                  ),
                ],
              ),
            ),
          ),
          ListTile(
            title: const Text(
              'X',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            subtitle: const Text('205M followers'),
            leading: const CircleAvatar(
              backgroundImage: AssetImage('assets/images/x.jpeg'),
            ),
            trailing: Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Column(
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(72, 6, 146, 15),
                        minimumSize: const Size(10, 30)),
                    onPressed: () {},
                    child: Text(
                      'follow',
                      style: TextStyle(color: Colors.lightGreen[100]),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromRGBO(113, 222, 120, 0.961),
              ),
              onPressed: () => '',
              child: const Text(
                'Explore more',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
