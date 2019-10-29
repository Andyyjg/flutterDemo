import 'package:flutter/material.dart';
import 'package:date_format/date_format.dart';

class DateDemoPage extends StatefulWidget {
  DateDemoPage({Key key}) : super(key: key);

  @override
  _DateDemoPageState createState() {
    return _DateDemoPageState();
  }
}

class _DateDemoPageState extends State<DateDemoPage> {
  var now=DateTime.now();
  //打开datePicker
  _showDatePicker(){
    showDatePicker(context: context,
        initialDate: now,
        firstDate:DateTime(1980),
        lastDate: DateTime(2100));
  }

  @override
  void initState() {
    super.initState();
    //print(now.millisecondsSinceEpoch);转换为时间戳
//    print(DateTime.fromMicrosecondsSinceEpoch(1572340360351));
//    print(formatDate(DateTime.now(), [yyyy, '-', mm, '-', dd]));
    //日期格式转换
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
        title:Text('日期组件'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          InkWell(//类似与button 水波纹
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('2019-10-29'),
                Icon(Icons.arrow_drop_down)
              ],
            ),
            onTap: (){
              this._showDatePicker();
            },
          )
        ],
      ),
    );
  }
}