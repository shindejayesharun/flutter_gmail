import 'package:flutter/material.dart';
import 'package:flutter_gmail/screens/meet_list/meet_list_view.dart';

class HomeTab extends StatefulWidget {
  const HomeTab({Key? key}) : super(key: key);

  @override
  _HomeTabState createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  int _currentIndex = 0;
  final List<Widget> _children = [MeetListView(), Text("meet")];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: Colors.red,
        currentIndex: _currentIndex,
        onTap: onTabChanged,
        items: [
          new BottomNavigationBarItem(
              icon: Stack(
                children: [
                  Icon(
                    Icons.mail,
                    size: 35,
                  ),
                  Positioned(
                    top: 0,
                    right: 0,
                    child: Container(
                      padding: EdgeInsets.all(4),
                      decoration: BoxDecoration(color: Colors.red,shape: BoxShape.circle),
                       constraints: BoxConstraints(
                        minWidth: 15,
                        minHeight: 15,
                      ),
                      child: Text(
                        "9+",
                        style: TextStyle(color: Colors.white, fontSize: 10),
                        textAlign: TextAlign.center
                      ),
                    ),
                  )
                ],
              ),
              label: "Mail"),
          new BottomNavigationBarItem(
              icon: Icon(
                Icons.video_call,
                size: 35,
              ),
              label: "Meet"),
        ],
      ),
    );
  }

  void onTabChanged(int index){
    setState(() {
      _currentIndex = index;
    });
  }
}
