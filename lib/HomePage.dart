import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:whatsappclone/call_screen.dart';
import 'package:whatsappclone/camera_screen.dart';
import 'package:whatsappclone/chat_screen.dart';
import 'package:whatsappclone/status_screen.dart';
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin{
  TabController tabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController=new TabController(length: 4, vsync: this,initialIndex: 1);
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    tabController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('whatsapp'),

        //action
        actions: [
          IconButton(icon: Icon(Icons.search), onPressed: (){

          }),

          IconButton(icon: Icon(Icons.more_vert),
              onPressed: (){

              })
        ],
bottom: TabBar(
  controller: tabController,
  tabs: [
    Tab(
      child: Icon(Icons.camera_alt,color: Colors.white,),
    ),
    Tab(
      child: Text(
        "chat"
      ),
    ),
    Tab(
      child: Text("status"),
    ),
    Tab(
      child: Text('call'),
    )
  ],
),
      ),
      body: TabBarView(
        controller: tabController,
        children: [
          Camera(),
          Chat(),
          Status(),
          Calls()
        ],
      ),
    );
  }
}
