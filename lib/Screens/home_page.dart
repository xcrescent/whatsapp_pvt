import 'package:flutter/material.dart';
import 'package:whatsapp_pvt/Widgets/chats_widget.dart';
import 'package:whatsapp_pvt/Widgets/status_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    // return Scaffold(body: Column());
    return DefaultTabController(
      initialIndex: 1,
      length: 6,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(70),
          child: AppBar(
            elevation: 0,
            title: const Padding(
              padding: EdgeInsets.only(top: 8.0),
              child: Text(
                "Whatsapp",
                style: TextStyle(fontSize: 21),
              ),
            ),
            actions: [
              const Padding(
                padding: EdgeInsets.only(top: 12.0, right: 15),
                child: Icon(
                  Icons.search,
                  size: 28,
                ),
              ),
              PopupMenuButton(
                  color: Colors.white,
                  iconSize: 28,
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  itemBuilder: (context) => [
                        const PopupMenuItem(
                          value: 1,
                          child: Text(
                            "New Group",
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        const PopupMenuItem(
                          value: 2,
                          child: Text(
                            "New Broadcast",
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        const PopupMenuItem(
                          value: 3,
                          child: Text(
                            "Linked devices",
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        const PopupMenuItem(
                          value: 4,
                          child: Text(
                            "Starred messages",
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        const PopupMenuItem(
                          value: 5,
                          child: Text(
                            "Payments",
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        const PopupMenuItem(
                          value: 6,
                          child: Text(
                            "Settings",
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        )
                      ])
            ],
          ),
        ),

        body: Column(
          children: [
            Container(
              color: const Color(0xff075e55),
              child: TabBar(
                isScrollable: true,
                indicatorColor: Colors.white,
                labelStyle: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
                tabs: [
                  Container(
                    width: 24,
                    child: const Tab(
                      icon: Icon(Icons.camera_alt),
                    ),
                  ),
                  Container(
                    width: 90,
                    child: Tab(
                      child: Row(
                        children: [
                          const Text("CHATS"),
                          const SizedBox(
                            width: 8,
                          ),
                          Container(
                            alignment: Alignment.center,
                            height: 22,
                            width: 22,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: const Text("12" , style: TextStyle(
                              color: Color(0xff075e55),
                              fontSize: 13,

                            ),),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: 85,
                    child: Tab(child: Text("STATUS")),

                  ),
                  Container(
                    width: 85,
                    child: Tab(child: Text("CALLS")),
                  )
                ],
              ),
            ),
            Flexible(
              flex: 1,
              child: TabBarView(children: [
                Container(
                  color: Colors.red,
                ),
                const ChatWidget(),
                const StatusWidget(),
                Container(
                      color: Colors.green,
                    )
              ],
            ))
          ],
        ),
        // backgroundColor: ,\
        
      ),
    );
  }
}
