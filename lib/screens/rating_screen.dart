// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class RatingScreen extends StatefulWidget {
  const RatingScreen({super.key});

  @override
  State<RatingScreen> createState() => _RatingScreenState();
}

class _RatingScreenState extends State<RatingScreen> {
  bool isSelected = false;
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
          // actions: [
          //   IconButton(
          //     onPressed: () {
          //       Navigator.pushNamed(context, '/map_screen');
          //     },
          //     icon: Icon(
          //       Icons.map,
          //     ),
          //     color: Color.fromARGB(255, 105, 105, 105),
          //   )
          // ],
          backgroundColor: Colors.white,
          elevation: 1,
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
            'Rating',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.black, fontSize: 25),
          ),
        ),
        body: SingleChildScrollView(
          child: SizedBox(
            height: 1000,
            child: Column(
              children: [
                Container(
                  child: Column(
                    children: [
                      Icon(
                        Icons.account_circle_outlined,
                        size: 170,
                        color: Colors.green,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Jeetu Mobile Accessories',
                        style: TextStyle(fontSize: 28),
                      ),
                      RatingBar.builder(
                        itemPadding: EdgeInsets.only(right: 10),
                        itemSize: 30,
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
                SizedBox(
                  height: 40,
                ),
                Form(
                    child: Column(
                  children: [
                    Text(
                      'Leave your feedback here',
                      style: TextStyle(
                          fontSize: 20,
                          color: Color.fromARGB(255, 102, 102, 102)),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Wrap(
                      alignment: WrapAlignment.center,
                      direction: Axis.horizontal,
                      children: [
                        Container(
                          margin: EdgeInsets.all(8),
                          width: 110,
                          child: OutlinedButton(
                            style: isSelected
                                ? OutlinedButton.styleFrom(
                                    foregroundColor:
                                        Color.fromARGB(255, 155, 93, 0),
                                    backgroundColor:
                                        Color.fromARGB(168, 248, 177, 71),
                                    shape: const RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(20))),
                                  )
                                : OutlinedButton.styleFrom(
                                    foregroundColor:
                                        Color.fromARGB(255, 44, 44, 44),
                                    backgroundColor:
                                        Color.fromARGB(255, 200, 200, 200),
                                    shape: const RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(20))),
                                  ),
                            onPressed: () {
                              setState(() {
                                isSelected = !isSelected;
                              });
                            },
                            child: Row(
                              children: [
                                Icon(Icons.check),
                                Text('Service'),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(8),
                          width: 110,
                          child: OutlinedButton(
                            style: isSelected
                                ? OutlinedButton.styleFrom(
                                    foregroundColor:
                                        Color.fromARGB(255, 155, 93, 0),
                                    backgroundColor:
                                        Color.fromARGB(168, 248, 177, 71),
                                    shape: const RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(20))),
                                  )
                                : OutlinedButton.styleFrom(
                                    foregroundColor:
                                        Color.fromARGB(255, 44, 44, 44),
                                    backgroundColor:
                                        Color.fromARGB(255, 200, 200, 200),
                                    shape: const RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(20))),
                                  ),
                            onPressed: () {
                              setState(() {
                                isSelected = !isSelected;
                              });
                            },
                            child: Row(
                              children: [
                                Icon(Icons.check),
                                Text('Service'),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(8),
                          width: 110,
                          child: OutlinedButton(
                            style: isSelected
                                ? OutlinedButton.styleFrom(
                                    foregroundColor:
                                        Color.fromARGB(255, 155, 93, 0),
                                    backgroundColor:
                                        Color.fromARGB(168, 248, 177, 71),
                                    shape: const RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(20))),
                                  )
                                : OutlinedButton.styleFrom(
                                    foregroundColor:
                                        Color.fromARGB(255, 44, 44, 44),
                                    backgroundColor:
                                        Color.fromARGB(255, 200, 200, 200),
                                    shape: const RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(20))),
                                  ),
                            onPressed: () {
                              setState(() {
                                isSelected = !isSelected;
                              });
                            },
                            child: Row(
                              children: [
                                Icon(Icons.check),
                                Text('Service'),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(8),
                          width: 110,
                          child: OutlinedButton(
                            style: isSelected
                                ? OutlinedButton.styleFrom(
                                    foregroundColor:
                                        Color.fromARGB(255, 155, 93, 0),
                                    backgroundColor:
                                        Color.fromARGB(168, 248, 177, 71),
                                    shape: const RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(20))),
                                  )
                                : OutlinedButton.styleFrom(
                                    foregroundColor:
                                        Color.fromARGB(255, 44, 44, 44),
                                    backgroundColor:
                                        Color.fromARGB(255, 200, 200, 200),
                                    shape: const RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(20))),
                                  ),
                            onPressed: () {
                              setState(() {
                                isSelected = !isSelected;
                              });
                            },
                            child: Row(
                              children: [
                                Icon(Icons.check),
                                Text('Service'),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(8),
                          width: 110,
                          child: OutlinedButton(
                            style: isSelected
                                ? OutlinedButton.styleFrom(
                                    foregroundColor:
                                        Color.fromARGB(255, 155, 93, 0),
                                    backgroundColor:
                                        Color.fromARGB(168, 248, 177, 71),
                                    shape: const RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(20))),
                                  )
                                : OutlinedButton.styleFrom(
                                    foregroundColor:
                                        Color.fromARGB(255, 44, 44, 44),
                                    backgroundColor:
                                        Color.fromARGB(255, 200, 200, 200),
                                    shape: const RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(20))),
                                  ),
                            onPressed: () {
                              setState(() {
                                isSelected = !isSelected;
                              });
                            },
                            child: Row(
                              children: [
                                Icon(Icons.check),
                                Text('Service'),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 30),
                            child: Text(
                              'Care to share more?',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 48, 48, 48)),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 20, left: 30, right: 30),
                            child: TextFormField(
                              maxLines: 6,
                              // controller: _controllerFeedback,
                              decoration: InputDecoration(
                                hintText:
                                    'Please provide your valuable feedback',
                                filled: true,
                                fillColor: Color.fromARGB(255, 221, 221, 221),
                                border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                              top: 20,
                              left: 30,
                              right: 30,
                            ),
                            width: double.maxFinite,
                            child: ElevatedButton(
                              onPressed: () {},
                              child: Padding(
                                padding: const EdgeInsets.all(14.0),
                                child: Text(
                                  'Submit',
                                  style: TextStyle(fontSize: 16),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
