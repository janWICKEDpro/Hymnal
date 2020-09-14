import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:practice/variableConstants.dart';
import 'package:drawerbehavior/drawerbehavior.dart';

import 'favourites.dart';
import 'Standard.dart';
import 'Index.dart';
import 'about.dart';
import 'composeSong.dart';
import 'settings.dart';

class MainView extends StatefulWidget {
  @override
  _MainViewState createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: DrawerScaffold(
          percentage: 1.1,
          menuView: MenuView(
            alignment: Alignment.topLeft,
            animation: true,
            color: secondary,
            menu: Menu(items: [
              MenuItem(
                  id: '0', icon: Icons.view_carousel, title: "Compose Song"),
              MenuItem(id: '1', icon: Icons.info, title: "About"),
              MenuItem(id: '2', icon: Icons.settings, title: "settings"),
              MenuItem(id: '3', icon: Icons.exit_to_app, title: "exit to app"),
            ]),
            onMenuItemSelected: selectedItem(context),
            headerView: Container(
              height: 250,
              child:
                  Image.asset('assets/images/thebible.jpg', fit: BoxFit.fill),
            ),
          ),
          extendedBody: true,
          appBar: AppBarProps(
            actions: [
              Padding(
                  padding: EdgeInsets.only(right: 20),
                  child: InkWell(
                      splashColor: themex,
                      onTap: () {},
                      child: Icon(Icons.search, size: 25)))
            ],
            backgroundColor: themex,
            bottom: TabBar(
              indicatorColor: secondary,
              indicatorWeight: 4.0,
              tabs: [
                Tab(
                  text: 'Standard',
                ),
                Tab(
                  text: 'Index',
                ),
                Tab(
                  text: 'Favourites',
                ),
              ],
            ),
            title: Text("Hymnal"),
          ),
          contentView: Screen(contentBuilder: (BuildContext context) {
            return TabBarView(children: [
              Standard(),
              Index(),
              Favourites(),
            ]);
          })),
    );
  }
}

Widget continueButton = FlatButton(onPressed: () {}, child: Text("ok"));
Widget cancelButton = FlatButton(onPressed: () {}, child: Text("cancel"));

selectedItem(id) {
  if (id == '1') {
    return About();
  } else if (id == '0') {
    return ComposeSong();
  } else if (id == '2') {
    return Settings();
  }
}
