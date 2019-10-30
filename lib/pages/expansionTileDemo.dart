import 'package:flutter/material.dart';

class ExpansionTilePage extends StatefulWidget {
  ExpansionTilePage({Key key}) : super(key: key);

  @override
  _ExpansionTilePageState createState() {
    return _ExpansionTilePageState();
  }
}

class _ExpansionTilePageState extends State<ExpansionTilePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('可收缩列表'),
      ),
      body: Container(
        child: ExpansionTile(
          title: Text("title"),
          leading: Icon(
            Icons.favorite,
            color: Colors.red,
          ),
          backgroundColor: Colors.lightBlue,
          initiallyExpanded: false,
          //默认是否展开
          children: <Widget>[
            ListTile(
              title: Text("ListTile"),
              leading: Icon(
                Icons.favorite_border,
                color: Colors.white,
              ),

            ),
          ],
        ),
      ),
    );
  }
}
