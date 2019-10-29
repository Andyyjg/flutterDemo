import 'package:flutter/material.dart';

class CheckBoxPage extends StatefulWidget {
  CheckBoxPage({Key key}) : super(key: key);

  @override
  _CheckBoxPageState createState() {
    return _CheckBoxPageState();
  }
}

class _CheckBoxPageState extends State<CheckBoxPage> {
  var flag=true;
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
        title: Text('checkBox'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            children: <Widget>[
              Checkbox(
                activeColor: Colors.red,
                value: this.flag,
                onChanged: (value){
                 setState(() {
                   this.flag=value;
                 });
                },
              )
            ],
          ),
          Row(
            children: <Widget>[
              Text(flag?'选中':'未被选中')
            ],
          ),
          SizedBox(
            height: 40,
          ),
          CheckboxListTile(
            value: this.flag,
            title: Text('标题'),
            subtitle: Text('这是副标题'),
            secondary: Icon(Icons.help),//图标
            onChanged: (value){
              setState(() {
                this.flag=value;
              });
            },
          )
        ],
      ),

    );
  }
}