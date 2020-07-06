import 'package:flutter/material.dart';

class IconList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          MyIcon(
            icon: Icons.call,
            actionText: 'Call',
          ),
          MyIcon(
            icon: Icons.room,
            actionText: 'Route',
          ),
          MyIcon(
            icon: Icons.share,
            actionText: 'Share',
          ),
        ],
      ),
    );
  }
}

class MyIcon extends StatelessWidget {
  final _color = Colors.lightBlueAccent;
  final IconData icon;
  final String actionText;

  MyIcon({this.icon, this.actionText});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: InkWell(
        onTap: () {
          print("pressed $actionText");
        },
        child: Container(
          padding: const EdgeInsets.all(5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                icon,
                color: _color,
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                actionText.toUpperCase(),
                style: TextStyle(color: _color),
              )
            ],
          ),
        ),
      ),
    );
  }
}
