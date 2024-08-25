import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CommunitiesScreen extends StatelessWidget {
  const CommunitiesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: const CommunitiesScreenPage(),
    );
  }
}

class CommunitiesScreenPage extends StatefulWidget {
  const CommunitiesScreenPage({super.key});

  @override
  State<CommunitiesScreenPage> createState() => _CommunitiesScreenPageState();
}

class _CommunitiesScreenPageState extends State<CommunitiesScreenPage> {
  @override
  Widget build(BuildContext context) {
    return const Scrollbar(
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Communities',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
              CommunitiesList(),
            ],
          ),
        ),
      ),
    );
  }
}

class CommunitiesList extends StatefulWidget {
  const CommunitiesList({super.key});

  @override
  State<CommunitiesList> createState() => _CommunitiesListState();
}

class _CommunitiesListState extends State<CommunitiesList> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        ListTile(
          onTap: () {},
          leading: Container(
            width: 40,
            height: 35,
            decoration: BoxDecoration(
              color: Colors.grey,
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(4),
            ),
            child: const Icon(
              Icons.groups_sharp,
              color: Colors.white,
            ),
          ),
          title: const Text(
            'New community',
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        ListTile(
          onTap: () {},
          leading: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Container(
              width: 40,
              height: 35,
              decoration: BoxDecoration(
                color: Colors.grey,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Image.asset(
                'assets/images/profile.png',
                fit: BoxFit.fill,
              ),
            ),
          ),
          title: const Text(
            'ADEEMMA MONEY MAKER GANG',
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
        ListTile(
          onTap: () {},
          leading: CircleAvatar(
            radius: 15,
            backgroundColor: Colors.grey[800],
            child: const Icon(
              FontAwesomeIcons.bell,
              color: Colors.white,
              size: 19,
            ),
          ),
          title: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    'New group ',
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    '\"Miratel',
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    'technology ',
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    '\" added',
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ],
          ),
          trailing: const CircleAvatar(
            radius: 4,
            backgroundColor: Colors.green,
          ),
        ),
        ListTile(
          onTap: () {},
          leading: Container(
            width: 30,
            height: 30,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.green[900],
            ),
            child: const Icon(
              Icons.campaign,
              color: Colors.white,
            ),
          ),
          title: const Text(
            'Announcements',
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          subtitle: const Text(
            '+234 704 929 7357 added the gr...',
            style: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          trailing: const Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text('18/02/2024'),
              SizedBox(
                height: 5,
              ),
              Icon(
                Icons.push_pin_sharp,
                size: 15,
                color: Colors.grey,
              ),
            ],
          ),
        ),
        ListTile(
          minTileHeight: 5,
          onTap: () {},
          title: const Text(
            'See all',
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: Colors.grey,
            ),
          ),
          trailing: const Icon(
            Icons.arrow_forward_ios_rounded,
            size: 13,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        ListTile(
          onTap: () {},
          leading: Container(
            width: 30,
            height: 30,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.green[900],
            ),
            child: const Icon(
              Icons.campaign,
              color: Colors.white,
            ),
          ),
          title: const Text(
            'Announcements',
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          subtitle: const Text(
            '+234 704 929 7357 added the gr...',
            style: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          trailing: const Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text('18/02/2024'),
              SizedBox(
                height: 5,
              ),
              Icon(
                Icons.push_pin_sharp,
                size: 15,
                color: Colors.grey,
              ),
            ],
          ),
        ),
        ListTile(
          onTap: () {},
          leading: Container(
            width: 30,
            height: 30,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.green[900],
            ),
            child: const Icon(
              Icons.campaign,
              color: Colors.white,
            ),
          ),
          title: const Text(
            'Announcements',
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          subtitle: const Text(
            '+234 704 929 7357 added the gr...',
            style: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          trailing: const Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text('18/02/2024'),
              SizedBox(
                height: 5,
              ),
              Icon(
                Icons.push_pin_sharp,
                size: 15,
                color: Colors.grey,
              ),
            ],
          ),
        ),
        ListTile(
          onTap: () {},
          leading: Container(
            width: 30,
            height: 30,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.green[900],
            ),
            child: const Icon(
              Icons.campaign,
              color: Colors.white,
            ),
          ),
          title: const Text(
            'Announcements',
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          subtitle: const Text(
            '+234 704 929 7357 added the gr...',
            style: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          trailing: const Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text('18/02/2024'),
              SizedBox(
                height: 5,
              ),
              Icon(
                Icons.push_pin_sharp,
                size: 15,
                color: Colors.grey,
              ),
            ],
          ),
        ),
        ListTile(
          minTileHeight: 5,
          onTap: () {},
          title: const Text(
            'See all',
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: Colors.grey,
            ),
          ),
          trailing: const Icon(
            Icons.arrow_forward_ios_rounded,
            size: 13,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        ListTile(
          onTap: () {},
          leading: Container(
            width: 30,
            height: 30,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.green[900],
            ),
            child: const Icon(
              Icons.campaign,
              color: Colors.white,
            ),
          ),
          title: const Text(
            'Announcements',
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          subtitle: const Text(
            '+234 704 929 7357 added the gr...',
            style: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          trailing: const Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text('18/02/2024'),
              SizedBox(
                height: 5,
              ),
              Icon(
                Icons.push_pin_sharp,
                size: 15,
                color: Colors.grey,
              ),
            ],
          ),
        ),
        ListTile(
          onTap: () {},
          leading: Container(
            width: 30,
            height: 30,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.green[900],
            ),
            child: const Icon(
              Icons.campaign,
              color: Colors.white,
            ),
          ),
          title: const Text(
            'Announcements',
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          subtitle: const Text(
            '+234 704 929 7357 added the gr...',
            style: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          trailing: const Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text('18/02/2024'),
              SizedBox(
                height: 5,
              ),
              Icon(
                Icons.push_pin_sharp,
                size: 15,
                color: Colors.grey,
              ),
            ],
          ),
        ),
        ListTile(
          onTap: () {},
          leading: Container(
            width: 30,
            height: 30,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.green[900],
            ),
            child: const Icon(
              Icons.campaign,
              color: Colors.white,
            ),
          ),
          title: const Text(
            'Announcements',
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          subtitle: const Text(
            '+234 704 929 7357 added the gr...',
            style: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          trailing: const Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text('18/02/2024'),
              SizedBox(
                height: 5,
              ),
              Icon(
                Icons.push_pin_sharp,
                size: 15,
                color: Colors.grey,
              ),
            ],
          ),
        ),
        ListTile(
          minTileHeight: 5,
          onTap: () {},
          title: const Text(
            'See all',
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: Colors.grey,
            ),
          ),
          trailing: const Icon(
            Icons.arrow_forward_ios_rounded,
            size: 13,
          ),
        ),
      ],
    );
  }
}
