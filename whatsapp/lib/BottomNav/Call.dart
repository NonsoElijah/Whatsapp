import 'package:flutter/material.dart';

class CallPage extends StatefulWidget {
  const CallPage({super.key});

  @override
  State<CallPage> createState() => _CallPageState();
}

class _CallPageState extends State<CallPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: const Call(),
    );
  }
}

class Call extends StatefulWidget {
  const Call({super.key});

  @override
  State<Call> createState() => _CallState();
}

class _CallState extends State<Call> {
  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Calls',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 25,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextField(
                style: const TextStyle(
                  color: Colors.white,
                ),
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.search_rounded, color: Colors.white),
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
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Favourites',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 5),
                child: TextField(
                  readOnly: true,
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    hintText: ' Add to favourites',
                    isDense: true,
                    contentPadding: const EdgeInsets.all(8),
                    hintStyle: TextStyle(
                      color: Colors.green[500],
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
                height: 15,
              ),
              const Text(
                'Recents',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const CallLog(),
              const EndText(),
            ],
          ),
        ),
      ),
    );
  }
}

class CallLog extends StatelessWidget {
  const CallLog({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        ListTile(
          onTap: () {},
          minTileHeight: 60,
          leading: const CircleAvatar(
            backgroundColor: Colors.white,
            child: Icon(Icons.person, color: Colors.black),
          ),
          title: const Text(
            'Iqbal',
            style: TextStyle(color: Colors.white),
          ),
          subtitle: const Row(
            children: [
              Icon(Icons.call_made, color: Colors.green, size: 16),
              SizedBox(width: 3),
              Text(
                'Outgoing',
                style: TextStyle(color: Colors.white70),
              ),
            ],
          ),
          trailing: const Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Yesterday',
                style: TextStyle(color: Colors.grey),
              ),
              SizedBox(width: 3),
              Icon(Icons.info_outline, color: Colors.grey),
            ],
          ),
        ),
        const Divider(
          thickness: 1.0,
          indent: 70.0,
          color: Colors.white38,
        ),
        ListTile(
          onTap: () {},
          minTileHeight: 60,
          leading: const CircleAvatar(
            backgroundColor: Colors.white,
            child: Icon(Icons.person, color: Colors.black),
          ),
          title: const Text(
            'Bestie',
            style: TextStyle(color: Colors.white),
          ),
          subtitle: const Row(
            children: [
              Icon(Icons.call_received, color: Colors.blue, size: 16),
              SizedBox(width: 3),
              Text(
                'Incoming',
                style: TextStyle(color: Colors.white70),
              ),
            ],
          ),
          trailing: const Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Wednesday',
                style: TextStyle(color: Colors.grey),
              ),
              SizedBox(width: 3),
              Icon(Icons.info_outline, color: Colors.grey),
            ],
          ),
        ),
        const Divider(
          thickness: 1.0,
          indent: 70.0,
          color: Colors.white38,
        ),
        ListTile(
          onTap: () {},
          minTileHeight: 60,
          leading: const CircleAvatar(
            backgroundColor: Colors.white,
            child: Icon(Icons.person, color: Colors.black),
          ),
          title: const Text(
            'Nf',
            style: TextStyle(color: Colors.white),
          ),
          subtitle: const Row(
            children: [
              Icon(Icons.call_made, color: Colors.green, size: 16),
              SizedBox(width: 3),
              Text(
                'Outgoing',
                style: TextStyle(color: Colors.white70),
              ),
            ],
          ),
          trailing: const Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Tuesday',
                style: TextStyle(color: Colors.grey),
              ),
              SizedBox(width: 3),
              Icon(Icons.info_outline, color: Colors.grey),
            ],
          ),
        ),
        const Divider(
          thickness: 1.0,
          indent: 70.0,
          color: Colors.white38,
        ),
        ListTile(
          onTap: () {},
          minTileHeight: 60,
          leading: const CircleAvatar(
            backgroundColor: Colors.white,
            child: Icon(Icons.person, color: Colors.black),
          ),
          title: const Text(
            'Alex',
            style: TextStyle(color: Colors.red),
          ),
          subtitle: const Row(
            children: [
              Icon(Icons.call_missed, color: Colors.red, size: 16),
              SizedBox(width: 3),
              Text(
                'Focus Mode',
                style: TextStyle(color: Colors.white70),
              ),
            ],
          ),
          trailing: const Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                '24/07/2024',
                style: TextStyle(color: Colors.grey),
              ),
              SizedBox(width: 3),
              Icon(Icons.info_outline, color: Colors.grey),
            ],
          ),
        ),
        const Divider(
          thickness: 1.0,
          indent: 70.0,
          color: Colors.white38,
        ),
        ListTile(
          onTap: () {},
          minTileHeight: 60,
          leading: const CircleAvatar(
            backgroundColor: Colors.white,
            child: Icon(Icons.person, color: Colors.black),
          ),
          title: const Text(
            'Sam',
            style: TextStyle(color: Colors.red),
          ),
          subtitle: const Row(
            children: [
              Icon(Icons.call_missed, color: Colors.red, size: 16),
              SizedBox(width: 3),
              Text(
                'Missed',
                style: TextStyle(color: Colors.white70),
              ),
            ],
          ),
          trailing: const Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                '24/07/2024',
                style: TextStyle(color: Colors.grey),
              ),
              SizedBox(width: 3),
              Icon(Icons.info_outline, color: Colors.grey),
            ],
          ),
        ),
        const Divider(
          thickness: 1.0,
          indent: 70.0,
          color: Colors.white38,
        ),
        ListTile(
          onTap: () {},
          minTileHeight: 60,
          leading: const CircleAvatar(
            backgroundColor: Colors.white,
            child: Icon(Icons.person, color: Colors.black),
          ),
          title: const Text(
            'Chris',
            style: TextStyle(color: Colors.white),
          ),
          subtitle: const Row(
            children: [
              Icon(Icons.call_made, color: Colors.green, size: 16),
              SizedBox(width: 3),
              Text(
                'Outgoing',
                style: TextStyle(color: Colors.white70),
              ),
            ],
          ),
          trailing: const Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Monday',
                style: TextStyle(color: Colors.grey),
              ),
              SizedBox(width: 3),
              Icon(Icons.info_outline, color: Colors.grey),
            ],
          ),
        ),
        const Divider(
          thickness: 1.0,
          indent: 70.0,
          color: Colors.white38,
        ),
        ListTile(
          onTap: () {},
          minTileHeight: 60,
          leading: const CircleAvatar(
            backgroundColor: Colors.white,
            child: Icon(Icons.person, color: Colors.black),
          ),
          title: const Text(
            'Jordan',
            style: TextStyle(color: Colors.white),
          ),
          subtitle: const Row(
            children: [
              Icon(Icons.call_received, color: Colors.blue, size: 16),
              SizedBox(width: 3),
              Text(
                'Incoming',
                style: TextStyle(color: Colors.white70),
              ),
            ],
          ),
          trailing: const Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Friday',
                style: TextStyle(color: Colors.grey),
              ),
              SizedBox(width: 3),
              Icon(Icons.info_outline, color: Colors.grey),
            ],
          ),
        ),
        const Divider(
          thickness: 1.0,
          indent: 70.0,
          color: Colors.white38,
        ),
        ListTile(
          onTap: () {},
          minTileHeight: 60,
          leading: const CircleAvatar(
            backgroundColor: Colors.white,
            child: Icon(Icons.person, color: Colors.black),
          ),
          title: const Text(
            'Taylor',
            style: TextStyle(color: Colors.white),
          ),
          subtitle: const Row(
            children: [
              Icon(Icons.call_received, color: Colors.blue, size: 16),
              SizedBox(width: 3),
              Text(
                'Incoming',
                style: TextStyle(color: Colors.white70),
              ),
            ],
          ),
          trailing: const Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Yesterday',
                style: TextStyle(color: Colors.grey),
              ),
              SizedBox(width: 3),
              Icon(Icons.info_outline, color: Colors.grey),
            ],
          ),
        ),
        const Divider(
          thickness: 1.0,
          indent: 70.0,
          color: Colors.white38,
        ),
        ListTile(
          onTap: () {},
          minTileHeight: 60,
          leading: const CircleAvatar(
            backgroundColor: Colors.white,
            child: Icon(Icons.person, color: Colors.black),
          ),
          title: const Text(
            'Morgan',
            style: TextStyle(color: Colors.white),
          ),
          subtitle: const Row(
            children: [
              Icon(Icons.call_made, color: Colors.green, size: 16),
              SizedBox(width: 3),
              Text(
                'Outgoing',
                style: TextStyle(color: Colors.white70),
              ),
            ],
          ),
          trailing: const Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Monday',
                style: TextStyle(color: Colors.grey),
              ),
              SizedBox(width: 3),
              Icon(Icons.info_outline, color: Colors.grey),
            ],
          ),
        ),
        const Divider(
          thickness: 1.0,
          indent: 70.0,
          color: Colors.white38,
        ),
        ListTile(
          onTap: () {},
          minTileHeight: 60,
          leading: const CircleAvatar(
            backgroundColor: Colors.white,
            child: Icon(Icons.person, color: Colors.black),
          ),
          title: const Text(
            'James',
            style: TextStyle(color: Colors.white),
          ),
          subtitle: const Row(
            children: [
              Icon(Icons.video_call_rounded, color: Colors.white, size: 16),
              SizedBox(width: 3),
              Text(
                'Outgoing',
                style: TextStyle(color: Colors.white70),
              ),
            ],
          ),
          trailing: const Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Monday',
                style: TextStyle(color: Colors.grey),
              ),
              SizedBox(width: 3),
              Icon(Icons.info_outline, color: Colors.grey),
            ],
          ),
        ),
      ],
    );
  }
}

class EndText extends StatefulWidget {
  const EndText({super.key});

  @override
  State<EndText> createState() => _EndTextState();
}

class _EndTextState extends State<EndText> {
  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 30,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.lock,
            color: Colors.grey,
            size: 13,
          ),
          SizedBox(
            width: 8,
          ),
          Text(
            'Your personal calls are ',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 13,
            ),
          ),
          Text(
            'end-to-end encrpted',
            style: TextStyle(
              color: Colors.green,
              fontSize: 13,
            ),
          ),
        ],
      ),
    );
  }
}
