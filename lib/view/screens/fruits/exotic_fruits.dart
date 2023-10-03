// ignore_for_file: avoid_unnecessary_containers

import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';

import '../../components/components.dart';

class ExoticFruits extends StatefulWidget {
  const ExoticFruits({super.key});

  @override
  State<ExoticFruits> createState() => _ExoticFruitsState();
}

class _ExoticFruitsState extends State<ExoticFruits> {
  @override
  Widget build(BuildContext context) {
    int index = 0;
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                    'https://img.freepik.com/free-photo/dark-concrete-texture-background_24837-397.jpg?w=1060&t=st=1696245244~exp=1696245844~hmac=121f06d92dbcd042e5bbb37fd0ac07b9c5f7aea35e58b166874386ac06c3dc12'))),
        child: Padding(
          padding: const EdgeInsets.symmetric(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ///upper
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        alignment: Alignment.topCenter,
                        height: MediaQuery.of(context).size.height * .23,
                        width: MediaQuery.of(context).size.height * .23,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              MediaQuery.of(context).size.height * .2,
                            ),
                            border: Border.all(
                              color: Colors.grey,
                              width: MediaQuery.of(context).size.width * .002,
                            )),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * .15,
                        width: MediaQuery.of(context).size.height * .15,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              MediaQuery.of(context).size.height * .15,
                            ),
                            border: Border.all(
                                width: MediaQuery.of(context).size.width * .002,
                                color: Colors.green)),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * .092,
                        width: MediaQuery.of(context).size.height * .092,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              MediaQuery.of(context).size.height * .15,
                            ),
                            border: Border.all(
                                width: MediaQuery.of(context).size.width * .002,
                                color: Colors.yellow)),
                      ),
                      Container(
                        alignment: Alignment.center,
                        height: MediaQuery.of(context).size.height * .09,
                        width: MediaQuery.of(context).size.height * .09,
                        decoration: BoxDecoration(
                            image: const DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                    'https://img.freepik.com/free-photo/handsome-young-man-with-new-stylish-haircut_176420-19637.jpg?w=1060&t=st=1696244020~exp=1696244620~hmac=d5236e0fb797a6ab352ef4e764940d366fb40d90b9414467a3441cf1d175f638')),
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(
                              MediaQuery.of(context).size.height * .1,
                            )),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * .02,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      right: MediaQuery.of(context).size.width * .07,
                    ),
                    child: products10(context),
                  )
                ],
              ),

              ///body
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * .06,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              flex: 0,
                              child: Text(
                                'Exotic',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize:
                                        MediaQuery.of(context).size.height *
                                            .06,
                                    fontWeight: FontWeight.w300),
                              ),
                            ),
                            Expanded(
                              flex: 0,
                              child: Text(
                                'fruits',
                                style: TextStyle(
                                    color: Colors.green,
                                    fontSize:
                                        MediaQuery.of(context).size.height *
                                            .06,
                                    fontWeight: FontWeight.w300),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Expanded(
                                flex: 0,
                                child: SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height * .1,
                                )),
                            const Expanded(
                              flex: 0,
                              child: Text(
                                'See more',
                                style: TextStyle(color: Colors.green),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * .015,
                    ),
                    Expanded(
                      flex: 0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          productItem(context,
                              image:
                                  'assets/dragon-fruit-isolated-white_116067-247-removebg-preview.png',
                              name: 'Pitaya',
                              price: '4.95'),
                          productItem(context,
                              image: 'assets/12.png',
                              name: 'Papaya',
                              price: '3.90'),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * .025,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              flex: 0,
                              child: Text(
                                'offers',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize:
                                        MediaQuery.of(context).size.height *
                                            .06,
                                    fontWeight: FontWeight.w300),
                              ),
                            ),
                          ],
                        ),
                        const Expanded(
                          flex: 0,
                          child: Text(
                            'See more',
                            style: TextStyle(color: Colors.green),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * .01,
                    ),
                    Stack(
                      alignment: Alignment.topCenter,
                      children: [
                        Stack(
                          alignment: Alignment.bottomRight,
                          children: [
                            Container(
                              height: MediaQuery.of(context).size.height * .13,
                              width: MediaQuery.of(context).size.width,
                              padding: EdgeInsets.symmetric(
                                horizontal:
                                    MediaQuery.of(context).size.width * .05,
                                vertical:
                                    MediaQuery.of(context).size.height * .007,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(
                                    MediaQuery.of(context).size.width * .06,
                                  ),
                                  bottomRight: Radius.circular(
                                    MediaQuery.of(context).size.width * .18,
                                  ),
                                  topLeft: Radius.circular(
                                    MediaQuery.of(context).size.width * .06,
                                  ),
                                  topRight: Radius.circular(
                                    MediaQuery.of(context).size.width * .06,
                                  ),
                                ),
                                color: Colors.grey.withOpacity(.55),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    flex: 0,
                                    child: Container(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              .1,
                                      width: MediaQuery.of(context).size.width *
                                          .3,
                                      decoration: BoxDecoration(
                                          image: const DecorationImage(
                                              fit: BoxFit.cover,
                                              image:
                                                  AssetImage('assets/155.png')),
                                          // color: Colors.white,
                                          borderRadius: BorderRadius.circular(
                                            MediaQuery.of(context).size.height *
                                                .06,
                                          )),
                                    ),
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        height:
                                            MediaQuery.of(context).size.height *
                                                .03,
                                      ),
                                      Expanded(
                                        flex: 0,
                                        child: Row(
                                          children: [
                                            Text(
                                              'Guava',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w600,
                                                  fontSize:
                                                      MediaQuery.of(context)
                                                              .size
                                                              .height *
                                                          .035),
                                            ),
                                            SizedBox(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  .05,
                                            ),
                                            Expanded(
                                                flex: 0,
                                                child: Text(
                                                  '\$2.75',
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .height *
                                                              .018),
                                                )),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height:
                                            MediaQuery.of(context).size.height *
                                                .003,
                                      ),
                                      Container(
                                        child: Row(
                                          children: [
                                            Text(
                                              'PERMUIM',
                                              style: TextStyle(
                                                  color: Colors.green,
                                                  fontSize:
                                                      MediaQuery.of(context)
                                                              .size
                                                              .height *
                                                          .017),
                                            ),
                                            SizedBox(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  .015,
                                            ),
                                            Icon(Icons.area_chart_outlined,
                                                color: Colors.green,
                                                size: MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    .017),
                                            SizedBox(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  .05,
                                            ),
                                            Expanded(
                                                flex: 0,
                                                child: Text(
                                                  '\$2.00',
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .height *
                                                              .018),
                                                )),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                .005,
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width *
                                        .006,
                                  ),
                                ],
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.arrow_circle_right_sharp,
                                color: Colors.white,
                                size: MediaQuery.of(context).size.height * .052,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(
                              flex: 0,
                              child: SizedBox(
                                width: MediaQuery.of(context).size.width * .01,
                              ),
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: FloatingNavbar(
        backgroundColor: Colors.black,
        onTap: (int val) => setState(() => index = val),
        currentIndex: index,
        items: [
          FloatingNavbarItem(icon: Icons.home, title: 'Home'),
          FloatingNavbarItem(icon: Icons.search, title: 'search'),
          FloatingNavbarItem(icon: Icons.area_chart_outlined, title: 'Premuim'),
        ],
      ),
    );
  }
}
