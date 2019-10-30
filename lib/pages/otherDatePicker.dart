import 'package:flutter/material.dart';
import 'package:flutter_cupertino_date_picker/flutter_cupertino_date_picker.dart';
import 'package:date_format/date_format.dart';

class OtherDatePicker extends StatefulWidget {
  OtherDatePicker({Key key}) : super(key: key);

  @override
  _OtherDatePickerState createState() {
    return _OtherDatePickerState();
  }
}

class _OtherDatePickerState extends State<OtherDatePicker> {
  DateTime _dateTime = DateTime.now();

  _showDatePicker() {
    DatePicker.showDatePicker(
      context,
      pickerTheme: DateTimePickerTheme(
        showTitle: true,
        confirm: Text('确定', style: TextStyle(color: Colors.red)),
        cancel: Text('取消', style: TextStyle(color: Colors.cyan)),
      ),
      minDateTime: DateTime.parse('1970-01-01'),
      maxDateTime: DateTime.parse('2100-12-31'),
      initialDateTime: DateTime.now(),
//      dateFormat: 'yyyy-MMMM-dd',

      dateFormat: 'yy年M月d日   EEE,H时:m分',
      pickerMode: DateTimePickerMode.datetime,//时间需要加这个
      locale: DateTimePickerLocale.zh_cn,
      onClose: () => print("----- onClose -----"),
      onCancel: () => print('onCancel'),
      onChange: (dateTime, List<int> index) {
        setState(() {
          _dateTime = dateTime;
        });
      },
      onConfirm: (dateTime, List<int> index) {
        setState(() {
          _dateTime = dateTime;
        });
      },
    );
  }

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
        title: Text('第三方日期组件'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          InkWell(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('${formatDate(_dateTime, [yyyy, '年', mm, '月', dd, '日',HH,':',nn])}'),
                Icon(Icons.arrow_drop_down)
              ],
            ),
            onTap: _showDatePicker,
          )
        ],
      ),
    );
  }
}
