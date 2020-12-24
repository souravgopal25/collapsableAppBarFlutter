import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

nested() {
  return NestedScrollView(
      headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
        return <Widget>[
          SliverAppBar(
            excludeHeaderSemantics: true,
            expandedHeight: 250,
            floating: false,
            pinned: false,
            flexibleSpace: FlexibleSpaceBar(
              collapseMode: CollapseMode.parallax,
              centerTitle: true,
              title: Text("Collapsable ToolBar"),
              background: Image.network(
                "https://images.unsplash.com/photo-1602524206567-9bf059d35ac3?ixid=MXwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80",
                fit: BoxFit.cover,
              ),
            ),
          )
        ];
      },
      body: ListView.builder(
          itemCount: 5,
          itemBuilder: (context, index) {
            return Text(
              "Index $index",
              style: TextStyle(fontSize: 30),
            );
          }));
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: nested(),
    );
  }
}
