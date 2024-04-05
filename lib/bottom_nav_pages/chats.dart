import 'package:flutter/material.dart';
import 'package:whatsapp/screens/message_details.dart';

class Chats extends StatefulWidget {
  const Chats({super.key});

  @override
  State<Chats> createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
  List<Map> messagelist = [
    {
      'name': 'Al Azad',
      'image': "assets/azad.jpg",
      'lastmessage': 'ki obostha tor?',
      'time': '6.48 PM',
      'count': 0
    },
    {
      'name': 'Sumaiya aktar',
      'image': "assets/sumaiya.jpg",
      'lastmessage': 'nah',
      'time': '5.20 PM',
      'count': 1
    },
    {
      'name': 'basa',
      'image': "assets/azad_.jpg",
      'lastmessage': 'বাসার সবাই কেমন আছে?',
      'time': '9.41 AM',
      'count': 3
    },
    {
      'name': 'আল আজাদ',
      'image': "assets/azad_yellow.jpg",
      'lastmessage': 'আলহামদুলিল্লাহ?',
      'time': '6.48 AM',
      'count': 0
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
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  messagelist[index]["lastmessage"],
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(color: Colors.black54),
                ),
                trailing: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      messagelist[index]["time"],
                      style:
                          TextStyle(fontSize: 14, color: Colors.green.shade800),
                    ),
                    Container(
                      height: 22,
                      width: 22,
                      decoration: BoxDecoration(
                          color: Colors.green.shade700, shape: BoxShape.circle),
                      child: Text(
                        messagelist[index]["count"].toString(),
                        textAlign: TextAlign.center,
                        style:
                            const TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    )
                  ],
                )),
          );
        });
  }
}
