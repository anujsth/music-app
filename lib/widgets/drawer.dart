import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NavigationDrawerWidget extends StatelessWidget {
  const NavigationDrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/hill.jpg'), fit: BoxFit.cover)),
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                  margin: EdgeInsets.zero,
                  padding: EdgeInsets.zero,
                  child: Container(
                    // decoration: BoxDecoration(
                    //     image: DecorationImage(
                    //         fit: BoxFit.fill,
                    //         image: AssetImage(
                    //           'assets/hill.jpg',
                    //         ))),
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 40,
                          backgroundImage: AssetImage(
                            'assets/samurai.png',
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 60, horizontal: 20),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Anuj Shrestha',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 2,
                              ),
                              Text(
                                'Anujshrestha@gmail.com',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 12),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    // child: UserAccountsDrawerHeader(

                    //     decoration:
                    //         BoxDecoration(color: Theme.of(context).focusColor),
                    //     margin: EdgeInsets.zero,

                    //     accountEmail: Text('Anuj@gmail.com',
                    //         style: TextStyle(color: Colors.indigo)),
                    //     accountName: Text('Anuj Shrestha',
                    //         style: TextStyle(
                    //             color: Colors.indigo,
                    //             fontWeight: FontWeight.bold)),
                    //     currentAccountPicture: CircleAvatar(
                    //       backgroundImage: AssetImage('assets/samurai.png'),
                    //     )),
                  )),
              ListTile(
                leading: Icon(
                  Icons.home,
                  color: Colors.indigo,
                ),
                title: Text('Home',
                    style: TextStyle(
                        color: Colors.indigo, fontWeight: FontWeight.bold)),
                hoverColor: Colors.white,
                onTap: () {},
              ),
              ListTile(
                leading: Icon(
                  CupertinoIcons.mail,
                  color: Colors.indigo,
                ),
                title: Text('Mail',
                    style: TextStyle(
                        color: Colors.indigo, fontWeight: FontWeight.bold)),
                hoverColor: Colors.white,
                onTap: () {},
              ),
              ListTile(
                leading: Icon(
                  Icons.people,
                  color: Colors.indigo,
                ),
                title: Text('Profile',
                    style: TextStyle(
                        color: Colors.indigo, fontWeight: FontWeight.bold)),
                hoverColor: Colors.white,
                onTap: () {},
              ),
              ListTile(
                leading: Icon(
                  Icons.settings,
                  color: Colors.indigo,
                ),
                title: Text('Settings',
                    style: TextStyle(
                        color: Colors.indigo, fontWeight: FontWeight.bold)),
                hoverColor: Colors.white,
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
