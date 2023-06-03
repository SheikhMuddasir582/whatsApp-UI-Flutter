import 'package:flutter/material.dart';
class HOmeScreen extends StatefulWidget {
  const HOmeScreen({Key? key}) : super(key: key);

  @override
  State<HOmeScreen> createState() => _HOmeScreenState();
}

class _HOmeScreenState extends State<HOmeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            centerTitle: false,
            title: Text('WhatsApp'),
            bottom: TabBar(
              tabs: [
                Tab(
                  child:Icon(Icons.camera_alt),
                ),
                Tab(
                  child:  Text('Chats'),
                ),
                Tab(
                  child:  Text('Status'),
                ),
                Tab(
                  child:  Text('Calls'),
                ),

              ],
            ),
            actions: [
              Icon(Icons.search),
              SizedBox(width: 10,),
              PopupMenuButton(
                icon: Icon(Icons.more_vert_outlined),
                  itemBuilder: (context,) => [
                    PopupMenuItem(
                      value: 1,
                        child: Text('New Group'),
                    ),
                    PopupMenuItem(
                      value: 2,
                      child: Text('Settings'),
                    ),
                    PopupMenuItem(
                      value: 3,
                      child: Text('About'),
                    ),
                  ])
            ],
          ),
          body: TabBarView(
            children: [
              Text('Camera'),
              //Text('Chats'),
              ListView.builder(
                itemCount: 5,
                  itemBuilder: (context, index)
              {
                // return Text('sheikh');
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage('https://images.pexels.com/photos/5230612/pexels-photo-5230612.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load'),
                  ),
                  title: Text('Sheikh Muddasir'),
                  subtitle: Text('Where are you moiz?'),
                  trailing: Text('7:51pm'),
                );
              }),
              //Text('Staus'),
              ListView.builder(
                  itemCount: 5,
                  itemBuilder: (context, index)
                  {
                    // return Text('sheikh');
                    return ListTile(
                      leading: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Colors.green,
                            width: 3,
                          )
                        ),
                        child: CircleAvatar(
                          backgroundImage: NetworkImage('https://images.pexels.com/photos/5230612/pexels-photo-5230612.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load'),
                        ),
                      ),
                      title: Text('Sheikh Muddasir'),
                      subtitle: Text('35min ago'),
                      //trailing: Icon(Icons.phone),
                    );
                  }),


              //Text('Calls'),
              ListView.builder(
                  itemCount: 5,
                  itemBuilder: (context, index)
                  {
                    // return Text('sheikh');
                    return ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage('https://images.pexels.com/photos/5230612/pexels-photo-5230612.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load'),
                      ),
                      title: Text('Sheikh Muddasir'),
                      subtitle: Text('you missed call'),
                      trailing: Icon(Icons.phone),
                    );
                  }),
            ],
          ),
        ),
    );
  }
}


// body: TabBarView(
//   children: [
//     Text('1'),
//     Text('1'),
//     Text('1'),
//   ],
// ),