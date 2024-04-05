import 'package:flutter/material.dart';

import '../screens/message_details.dart';

class Calls extends StatelessWidget {
  Calls({super.key});

  List<Map> messagelist = [
    {
      'name': 'Al Azad',
      'image': "assets/azad.jpg",
      'day': 'today',
      'time': '6.48 PM',
      'count': 0,
      'calls': Icons.video_call
    },
    {
      'name': 'Sumaiya aktar',
      'image': "assets/sumaiya.jpg",
      'day': 'today',
      'time': '5.20 PM',
      'count': 1,
      'calls': Icons.call
    },
    {
      'name': 'basa',
      'image': "assets/azad_.jpg",
      'day': 'today',
      'time': '9.41 AM',
      'count': 3,
      'calls': Icons.call
    },
    {
      'name': 'আল আজাদ',
      'image': "assets/azad_yellow.jpg",
      'day': 'yesterday?',
      'time': '6.48 AM',
      'count': 0,
      'calls': Icons.video_call
    },
    {
      'name': 'Al Azad',
      'image': "assets/azad.jpg",
      'day': 'today',
      'time': '6.48 PM',
      'count': 0,
      'calls': Icons.video_call
    },
    {
      'name': 'Sumaiya aktar',
      'image': "assets/sumaiya.jpg",
      'day': 'today',
      'time': '5.20 PM',
      'count': 1,
      'calls': Icons.call
    },
    {
      'name': 'basa',
      'image': "assets/azad_.jpg",
      'day': 'today',
      'time': '9.41 AM',
      'count': 3,
      'calls': Icons.call
    },
    {
      'name': 'আল আজাদ',
      'image': "assets/azad_yellow.jpg",
      'day': 'yesterday?',
      'time': '6.48 AM',
      'count': 0,
      'calls': Icons.video_call
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: messagelist.length,
        itemBuilder: (_, index) {
          return InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (_) => Message_details(
                            name: messagelist[index]["name"],
                            image: messagelist[index]['image'],
                            time: messagelist[index]['time'],
                          )));
            },
            child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage(messagelist[index]["image"]),
                ),
                title: Text(
                  messagelist[index]["name"],
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  messagelist[index]["day"] + "  " + messagelist[index]["time"],
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(color: Colors.black54),
                ),
                trailing: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      messagelist[index]["calls"],
                      color: Colors.teal,
                      size: 30,
                    )
                  ],
                )),
          );
        });
  }
}
