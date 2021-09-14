import 'package:flutter/material.dart';
import 'package:flutter_gmail/screens/components/gmail_app_bar_view.dart';

class MeetListView extends StatefulWidget {
  const MeetListView({Key? key}) : super(key: key);

  @override
  _MeetListViewState createState() => _MeetListViewState();
}

class _MeetListViewState extends State<MeetListView> {
  ScrollController _scrollController = new ScrollController();
  static final GlobalKey<ScaffoldState> _key = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      appBar: null,//GmailAppBarView(),
      body: Padding(
        padding: EdgeInsets.only(top: 40),
        child: CustomScrollView(
          controller: _scrollController,
          slivers: [
            SliverPadding(
              padding: EdgeInsets.fromLTRB(15, 0, 15, 5),
              sliver: SliverAppBar(
                toolbarHeight: 55,
                primary: false,
                backgroundColor: Colors.white,
                iconTheme: IconThemeData(color: Colors.black),
                title: TextBox(),
                elevation: 2,
                floating: true,
                shape: ContinuousRectangleBorder(
                  side: BorderSide(width: 1,color: Colors.grey.withOpacity(0.3)),
                  borderRadius: BorderRadius.circular(22)
                ),
                actions: [
                  Container(
                    width: 65,
                    child: PopupMenuButton<String>(
                      icon: CircleAvatar(
                          backgroundImage: AssetImage('assets/deepa2.jpg')),
                      itemBuilder: (BuildContext context) {
                        return [
                          PopupMenuItem<String>(
                            value: '1',
                            child: Text('1'),
                          ),
                          PopupMenuItem<String>(
                            value: '2',
                            child: Text('2'),
                          ),
                        ];
                      },
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }


}

class TextBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextField(
        cursorHeight: 20,
        decoration: InputDecoration(
          hintText: 'Search in mail',
          border: InputBorder.none,
        ),
        onTap: () {
          //showSearch(context: context, delegate: Datasearch());
        },
      ),
    );
  }
}
