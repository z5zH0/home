import 'package:flutter/material.dart';

class drawer extends StatefulWidget {
  const drawer({Key? key}) : super(key: key);

  @override
  _drawerState createState() => _drawerState();
}

class _drawerState extends State<drawer> {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.only(topRight: Radius.circular(20.0), bottomRight: Radius.circular(20.0)),
      child: Drawer(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              DrawerHeader(
                decoration: BoxDecoration(color: Colors.green),
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: Icon(
                    Icons.account_circle,
                    color: Colors.green.shade800,
                    size: 96,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.star_border_rounded,
                ),
                title: Text('스크랩'),
                onTap: () {
                },
              ),
              ListTile(
                leading: Icon(
                  Icons.campaign_outlined,
                ),
                title: Text('공지사항'),
                onTap: () {
                },
              ),
              // Long drawer contents are often segmented.
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Divider(),
              ),
              ListTile(
                title: Text('설정'),
                onTap: () {
                },
              ),
            ],
          ),
        ),
    );
  }
}



