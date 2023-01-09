import 'package:flutter/material.dart';

class BottomNavbar extends StatefulWidget {
  const BottomNavbar({
    Key? key,
  }) : super(key: key);

  @override
  State<BottomNavbar> createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      padding: EdgeInsets.all(15),
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: IconButton(
                  iconSize: 30,
                  icon: Icon(Icons.home),
                  onPressed: (() {
                    // Navigator.pushNamed(context, '/home');
                  }),
                ),
              ),
              Text('Home'),
            ],
          ),
          Divider(),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: IconButton(
                  iconSize: 30,
                  icon: Icon(Icons.list_alt),
                  onPressed: (() {
                    Navigator.pushNamed(context, '/my_orders');
                  }),
                ),
              ),
              Text('My Order'),
            ],
          ),
          Divider(),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: IconButton(
                  iconSize: 30,
                  icon: Icon(Icons.favorite_border),
                  onPressed: (() {
                    Navigator.pushNamed(context, '/favorites');
                  }),
                ),
              ),
              Text('Favorites'),
            ],
          ),
          Divider(),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: IconButton(
                  iconSize: 30,
                  icon: Icon(Icons.inbox_outlined),
                  onPressed: (() {
                    Navigator.pushNamed(context, '/inbox');
                  }),
                ),
              ),
              Text('Inbox'),
            ],
          ),
          Divider(),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: IconButton(
                  iconSize: 30,
                  icon: Icon(Icons.account_box_sharp),
                  onPressed: (() {
                    Navigator.pushNamed(context, '/account_profile');
                  }),
                ),
              ),
              Text('Account'),
            ],
          ),
        ],
      ),
    );
  }
}
