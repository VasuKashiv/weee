// ignore_for_file: avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../custom/bottom_navbar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/map_screen');
              },
              icon: Icon(
                Icons.map,
              ),
              color: Color.fromARGB(255, 105, 105, 105),
            )
          ],
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios,
              color: Color.fromARGB(255, 105, 105, 105),
            ),
          ),
          title: Text(
            'Collection Centres Near You',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.black, fontSize: 25),
          ),
        ),
        body: Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Expanded(
                      flex: 4,
                      child: TextField(
                        decoration: InputDecoration(
                          filled: true,
                          prefixIcon: Icon(
                            Icons.search,
                            size: 32,
                          ),
                          fillColor: Color.fromARGB(255, 212, 212, 212),
                          hintText: 'Search',
                          hintStyle: TextStyle(
                            color: Color.fromARGB(255, 104, 104, 104),
                            fontSize: 25,
                          ),
                          border: InputBorder.none,
                        ),
                        style: TextStyle(color: Colors.black, fontSize: 25),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      color: Color.fromARGB(255, 212, 212, 212),
                      child: IconButton(
                        iconSize: 30,
                        color: Color.fromARGB(255, 104, 104, 104),
                        onPressed: () {},
                        icon: Icon(Icons.filter_alt),
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: 10,
                  physics: BouncingScrollPhysics(),
                  // shrinkWrap: true,
                  itemBuilder: ((context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/info_display');
                        },
                        child: Container(
                          height: 150,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Expanded(
                                flex: 1,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.stretch,
                                    children: [
                                      Image.network(
                                        'https://blog.ipleaders.in/wp-content/uploads/2020/02/tata_communication_hq_660_100120025251.jpg',
                                        height: 90,
                                        fit: BoxFit.fill,
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      RatingBar.builder(
                                        itemSize: 20,
                                        initialRating: 3,
                                        minRating: 1,
                                        direction: Axis.horizontal,
                                        allowHalfRating: true,
                                        itemCount: 5,
                                        itemBuilder: (context, _) => Icon(
                                          Icons.star,
                                          color: Colors.amber,
                                        ),
                                        onRatingUpdate: (rating) {
                                          print(rating);
                                        },
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                flex: 2,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        child: Text(
                                          'Jai Ganesh Mobile Repairers',
                                          style: TextStyle(
                                              fontSize: 25,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 15,
                                      ),
                                      SizedBox(
                                        child: Text('A-47 West Patel Nagar'),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  }),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavbar(),
      ),
    );
  }
}
