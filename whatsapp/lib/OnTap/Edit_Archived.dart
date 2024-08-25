import 'package:flutter/material.dart';

class EditArchived extends StatefulWidget {
  const EditArchived({super.key});

  @override
  State<EditArchived> createState() => _EditArchivedState();
}

class _EditArchivedState extends State<EditArchived> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new_rounded),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          'chats',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: const Chatslist(),
    );
  }
}

class Chatslist extends StatefulWidget {
  const Chatslist({super.key});

  @override
  State<Chatslist> createState() => _ChatslistState();
}

bool isSwitched = false;

class _ChatslistState extends State<Chatslist> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: ListView(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.grey[850],
              borderRadius: BorderRadius.circular(6),
            ),
            child: const ListTile(
              minTileHeight: 20,
              minVerticalPadding: 10,
              title: Text(
                'Chat wallpaper',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios_rounded,
                size: 13,
                color: Colors.grey,
              ),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.grey[850],
              borderRadius: BorderRadius.circular(6),
            ),
            child: ListTile(
              minTileHeight: 20,
              minVerticalPadding: 10,
              title: const Text(
                'Save to photos',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              trailing: Switch(
                inactiveThumbColor: Colors.white,
                activeColor: Colors.white,
                inactiveTrackColor: Colors.grey,
                activeTrackColor: Colors.green[400],
                value: isSwitched,
                onChanged: (value) {
                  setState(() {
                    isSwitched = value;
                  });
                },
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: Text(
              'Automatically save photos and videos you receive to photos.',
              style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.grey[850],
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(9),
                  topRight: Radius.circular(9),
                )),
            child: const ListTile(
              minTileHeight: 20,
              minVerticalPadding: 10,
              title: Text(
                'Chat backup',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios_rounded,
                size: 13,
                color: Colors.grey,
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.grey[850],
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(6),
                bottomRight: Radius.circular(6),
              ),
            ),
            child: const ListTile(
              minTileHeight: 20,
              minVerticalPadding: 10,
              title: Text(
                'Export chat',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios_rounded,
                size: 13,
                color: Colors.grey,
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.grey[850],
              borderRadius: BorderRadius.circular(6),
            ),
            child: ListTile(
              minTileHeight: 20,
              minVerticalPadding: 10,
              title: const Text(
                'keep chats archived',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              trailing: Switch(
                inactiveThumbColor: Colors.white,
                activeColor: Colors.white,
                inactiveTrackColor: Colors.grey,
                activeTrackColor: Colors.green[400],
                value: isSwitched,
                onChanged: (value) {
                  setState(() {
                    isSwitched = value;
                  });
                },
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: Text(
              'Automatically save photos and videos you receive to photos.',
              style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.grey[850],
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(6),
                topRight: Radius.circular(6),
              ),
            ),
            child: const ListTile(
              minTileHeight: 20,
              minVerticalPadding: 10,
              title: Text(
                'Move to Andriod',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios_rounded,
                size: 13,
                color: Colors.grey,
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.grey[850],
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(6),
                  bottomRight: Radius.circular(6),
                )),
            child: const ListTile(
              minTileHeight: 20,
              minVerticalPadding: 10,
              title: Text(
                'Transfer chats to iphone',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios_rounded,
                size: 13,
                color: Colors.grey,
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.grey[850],
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(6), topRight: Radius.circular(6))),
            child: ListTile(
              minTileHeight: 20,
              minVerticalPadding: 10,
              title: Text(
                'Archive all chats',
                style: TextStyle(
                  color: Colors.green[300],
                  fontWeight: FontWeight.bold,
                ),
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios_rounded,
                size: 13,
                color: Colors.grey,
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.grey[850],
            ),
            child: ListTile(
              minTileHeight: 20,
              minVerticalPadding: 10,
              title: Text(
                'clear all chats',
                style: TextStyle(
                  color: Colors.redAccent[400],
                  fontWeight: FontWeight.bold,
                ),
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios_rounded,
                size: 13,
                color: Colors.grey,
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.grey[850],
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(0),
                bottomLeft: Radius.circular(6),
                bottomRight: Radius.circular(6),
              ),
            ),
            child: ListTile(
              minTileHeight: 20,
              minVerticalPadding: 10,
              title: Text(
                'Delete all chats',
                style: TextStyle(
                  color: Colors.redAccent[400],
                  fontWeight: FontWeight.bold,
                ),
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios_rounded,
                size: 13,
                color: Colors.grey,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
