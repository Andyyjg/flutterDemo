import 'package:flutter/material.dart';
import 'package:date_format/date_format.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
class DateDemoPage extends StatefulWidget {
  DateDemoPage({Key key}) : super(key: key);

  @override
  _DateDemoPageState createState() {
    return _DateDemoPageState();
  }
}

class _DateDemoPageState extends State<DateDemoPage> {
  var now = DateTime.now();
  var _nowTime = TimeOfDay(hour: 10, minute: 15);

  //打开datePicker
  _showDatePicker() async {
//    showDatePicker(//此方法返回类型是future 异步  类似于promise
//        context: context,
//        initialDate: now,
//        firstDate: DateTime(1980),
//        lastDate: DateTime(2100)).then((result){
//          print(result);
//    });
    var result = await showDatePicker(
        //此方法返回类型是future 异步  类似于promise
        context: context,
        initialDate: now,
        firstDate: DateTime(1980),
        lastDate: DateTime(2100));
    setState(() {
      this.now = result;
    });
  }

  _showTimePicker() async {
    var res = await showTimePicker(
        context: context, initialTime: TimeOfDay(hour: 10, minute: 15));
    setState(() {
      _nowTime = res;
    });
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
        title: Text('日期组件'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              InkWell(
                //类似与button 水波纹
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('${formatDate(now, [yyyy, '年', mm, '月', dd, '日'])}'),
                    Icon(Icons.arrow_drop_down)
                  ],
                ),
                onTap: () {
                  this._showDatePicker();
                },
              ),
              InkWell(
                //类似与button 水波纹
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('${_nowTime.format(context)}'),
                    Icon(Icons.arrow_drop_down)
                  ],
                ),
                onTap: () {
                  this._showTimePicker();
                },
              ),
            ],
          )
        ],
      ),
    );
  }
}
