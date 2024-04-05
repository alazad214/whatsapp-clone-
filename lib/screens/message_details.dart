import 'package:flutter/material.dart';

class Message_details extends StatelessWidget {
  final String name;
  final String image;
  final String time;

  const Message_details(
      {super.key, required this.name, required this.image, required this.time});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          titleSpacing: 0,
          backgroundColor: Colors.teal,
          title: Expanded(
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage(image),
              ),
              title: Text(name),
              subtitle: Text("Last seen $time"),
              trailing: const Icon(Icons.more_vert),
            ),
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text("data"),
            Row(
              children: [
                Container(
                  height: 50,
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "Enter your message",
                      fillColor: Colors.blue.shade700,
                      filled: true,
                      prefixIcon: Icon(Icons.email),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(14.0),
                          borderSide: BorderSide.none),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: Colors
                                .black), // Set border color when the field is focused
                        borderRadius: BorderRadius.circular(14.0),
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ));
  }
}
