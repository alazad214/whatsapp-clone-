import 'package:flutter/material.dart';

class Status extends StatelessWidget {
  const Status({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 200,
            child: Image.asset("assets/images/communities.png"),
          ),
          const Text(
            "Stay connected with a community",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 25, color: Colors.black, fontWeight: FontWeight.w600),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
            child: Text(
              "Communities bring members together in topic based groups, and make it easy to get admin accouncements. any community you are added you will apear here. ",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18, color: Colors.black45),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "See example communities",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.teal.shade400,
                    fontWeight: FontWeight.w600),
              ),
              const Icon(
                Icons.arrow_forward_ios_rounded,
                color: Colors.teal,
              )
            ],
          ),
          const SizedBox(height: 20),
          Container(
            decoration: BoxDecoration(
              color: Colors.teal,
              borderRadius: BorderRadius.circular(30),
            ),
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
              child: Text(
                "Start your community",
                style: TextStyle(color: Colors.white),
              ),
            ),
          )
        ],
      ),
    );
  }
}
