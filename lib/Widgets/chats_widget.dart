import 'package:flutter/material.dart';

class ChatWidget extends StatefulWidget {
  const ChatWidget({super.key});

  @override
  State<ChatWidget> createState() => _ChatWidget();
}

class _ChatWidget extends State<ChatWidget> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      child: Column(
        children: [
          for (int i = 1; i < 23; i++)
            InkWell(
              onTap: (() {}),
              child: Container(
                margin: const EdgeInsets.symmetric(vertical: 12),
                // color: const Color.fromARGB(255, 196, 107, 100),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(40),
                      child: Image.asset(
                        "assets/images/Screenshot (${227 + i}).png",
                        height: 65,
                        width: 65,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left:20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Flutter Coder",
                            style: TextStyle(
                                fontSize: 19, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            "Hey!! I am Utkarsh",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                    const Spacer(),
                    Column(
                      children: [
                        const Text("10:00", 
                        style: TextStyle(
                          fontSize: 14, 
                          color: Color(0xff0fce5e),
                          fontWeight:FontWeight.w500,
                          ),
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        Container(
                          alignment: Alignment.center,
                          width: 27,
                          height: 27,
                          decoration: BoxDecoration(
                            color: const Color(0xff0fce5e),
                            borderRadius: BorderRadius.circular(18),
                          ),
                          child: const Text("2", style: TextStyle(fontWeight: FontWeight.w500, color: Colors.white),),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }
}
