import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: const SettingsPage(),
    );
  }
}

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Settings',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 30,
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
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
              const SizedBox(height: 10),
              ListTile(
                leading: CircleAvatar(
                  radius: 30.0,
                  backgroundColor: Colors.grey,
                  child: Icon(Icons.person, size: 30.0, color: Colors.white),
                ),
                title: Text(
                  'ÊNine',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  'Available',
                  style: TextStyle(color: Colors.grey),
                ),
                trailing: CircleAvatar(
                  radius: 13,
                  backgroundColor: Colors.grey[800],
                  child: Icon(
                    Icons.qr_code,
                    color: Colors.white,
                    size: 20,
                  ),
                ),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(
                  FontAwesomeIcons.user,
                  color: Colors.white,
                  size: 18,
                ),
                title: Text(
                  'Avatar',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.grey,
                  size: 13,
                ),
                onTap: () {},
              ),
              const SizedBox(height: 16.0),
              const SettingsList(),
            ],
          ),
        ),
      ),
    );
  }
}

class SettingsList extends StatelessWidget {
  const SettingsList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: const [
        SettingsListTile(
          icon: Icons.favorite,
          title: 'Favourites',
        ),
        SettingsListTile(
          icon: Icons.list,
          title: 'Broadcast lists',
        ),
        SettingsListTile(
          icon: Icons.star,
          title: 'Starred messages',
        ),
        SizedBox(
          height: 20,
        ),
        SettingsListTile(
          icon: Icons.devices,
          title: 'Linked devices',
        ),
        SettingsListTile(
          icon: Icons.account_circle,
          title: 'Account',
        ),
        SettingsListTile(
          icon: Icons.lock,
          title: 'Privacy',
        ),
        SettingsListTile(
          icon: Icons.chat,
          title: 'Chats',
        ),
        SettingsListTile(
          icon: Icons.notifications,
          title: 'Notifications',
        ),
        SettingsListTile(
          icon: Icons.storage,
          title: 'Storage and data',
        ),
        SizedBox(
          height: 20,
        ),
        SettingsListTile(
          icon: Icons.help,
          title: 'Help',
        ),
        SettingsListTile(
          title: 'Invite a friend',
          icon: Icons.group_rounded,
        ),
        Padding(
          padding: EdgeInsets.only(left: 17, top: 10),
          child: Text(
            'Also from Meta',
            style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
          ),
        ),
        SettingsListTile(
          icon: FontAwesomeIcons.instagram,
          title: 'Open Instagram',
        ),
        SettingsListTile(
          icon: FontAwesomeIcons.facebook,
          title: 'Open Facebook',
        ),
      ],
    );
  }
}

class SettingsListTile extends StatelessWidget {
  final IconData icon;
  final String title;

  const SettingsListTile({
    super.key,
    required this.icon,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        icon,
        color: Colors.white70,
        size: 18,
      ),
      title: Text(
        title,
        style: const TextStyle(
          color: Colors.white,
        ),
      ),
      trailing: const Icon(
        Icons.arrow_forward_ios,
        color: Colors.grey,
        size: 13,
      ),
      onTap: () {},
    );
  }
}
