import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_application_1/auth/widget/drawer_widget.dart';

class IndexPage extends StatefulWidget {
  final String title;

  const IndexPage({this.title = 'Wedibuddy'});

  @override
  _IndexPageState createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: _buildAppBar(),
        body: _buildBody(),
        drawer: DrawerWidget.buildDrawer(context,""));
  }

  _buildAppBar() {
    return AppBar(
      title: Text(widget.title),
    );
  }

  Container _buildBody() {
    return Container(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
        ));
  }
}
