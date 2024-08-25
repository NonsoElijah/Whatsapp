import 'package:flutter/material.dart';
import 'package:whatsapp/OnTap/Edit_Archived.dart';

class ArchivedChatsPage extends StatefulWidget {
  @override
  _ArchivedChatsPageState createState() => _ArchivedChatsPageState();
}

class _ArchivedChatsPageState extends State<ArchivedChatsPage> {
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
        title: const Text('Archived'),
        centerTitle: true,
        actions: [
          EditDropdown(),
        ],
      ),
      body: const ArchivedBody(),
    );
  }
}

class ArchivedBody extends StatefulWidget {
  const ArchivedBody({super.key});

  @override
  State<ArchivedBody> createState() => _ArchivedBodyState();
}

class _ArchivedBodyState extends State<ArchivedBody> {
  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                border: Border(
                  top: BorderSide(color: Colors.grey),
                  bottom: BorderSide(color: Colors.grey),
                ),
              ),
              child: ListTile(
                onTap: () {
                  Navigator.push(
                    context,
                    _slidePageTransition(
                      page: const EditArchived(),
                    ),
                  );
                },
                tileColor: Colors.grey[850],
                title: const Text(
                  'These chats stay archived when new messages are received. Tap to change',
                  style: TextStyle(color: Colors.grey, fontSize: 13),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            const ArchivedList(),
          ],
        ),
      ),
    );
  }
}

class ArchivedList extends StatelessWidget {
  const ArchivedList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      child: ListView(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        children: [
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
          const ListTile(
            title: Text(
              'Sara',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            subtitle: Text(
              'Hmmm',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/images/profile.png'),
            ),
            trailing: Text('Monday'),
          ),
        ],
      ),
    );
  }
}

class EditDropdown extends StatefulWidget {
  @override
  _EditDropdownState createState() => _EditDropdownState();
}

class _EditDropdownState extends State<EditDropdown> {
  Color textColor = Colors.white;
  OverlayEntry? _overlayEntry;
  final LayerLink _layerLink = LayerLink();

  void _toggleDropdown() {
    if (_overlayEntry == null) {
      _overlayEntry = _createOverlayEntry();
      Overlay.of(context).insert(_overlayEntry!);
    } else {
      _overlayEntry!.remove();
      _overlayEntry = null;
    }
  }

  OverlayEntry _createOverlayEntry() {
    return OverlayEntry(
      builder: (context) => Positioned(
        width: 150,
        child: CompositedTransformFollower(
          link: _layerLink,
          showWhenUnlinked: false,
          offset: const Offset(-75, 35),
          child: Material(
            elevation: 8.0,
            child: Column(
              children: [
                ListTile(
                  title: const Text(
                    'selects chat',
                    style: TextStyle(fontSize: 18),
                  ),
                  trailing: const Icon(
                    Icons.check_circle_outlined,
                  ),
                  onTap: () {
                    setState(() {
                      textColor = Colors.grey;
                    });
                    _toggleDropdown();
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.delete),
                  title: const Text('Option 2'),
                  onTap: () {
                    setState(() {
                      textColor = Colors.grey;
                    });
                    _toggleDropdown(); // Close the dropdown
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return CompositedTransformTarget(
      link: _layerLink,
      child: GestureDetector(
        onTap: _toggleDropdown,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(
            'Edit',
            style: TextStyle(
              color: textColor,
            ),
          ),
        ),
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
