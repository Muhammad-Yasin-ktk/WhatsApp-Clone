import 'package:flutter/material.dart';
import 'chat_model_class.dart';
class Chat extends StatefulWidget {
  @override
  _ChatState createState() => _ChatState();
}

class _ChatState extends State<Chat> {

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: dummydata.length,
      itemBuilder: (context,i)=>Column(
        children: [
          Divider(
            height: 15.0,
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(dummydata[i].image_url),


            ),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                Text(dummydata[i].name,style: TextStyle(fontWeight: FontWeight.bold),),
                Text(dummydata[i].time,style: TextStyle(color: Colors.grey,fontSize: 15.0),),
              ],

            ),
          subtitle: Container(
            padding: EdgeInsets.only(top: 7.0),
            child: Text(
              dummydata[i].message,style: TextStyle(fontSize: 14.0,color: Colors.grey),
            ),
          ),
          )
        ],
      ),

    );
  }
}
