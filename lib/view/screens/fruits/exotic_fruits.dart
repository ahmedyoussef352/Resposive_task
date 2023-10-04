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
    int y = MediaQuery.of(context).size.width.toInt();
    int index = 0;
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: y < 560 ? MediaQuery.of(context).size.height : 1050,
        decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                    'https://img.freepik.com/free-photo/dark-concrete-texture-background_24837-397.jpg?w=1060&t=st=1696245244~exp=1696245844~hmac=121f06d92dbcd042e5bbb37fd0ac07b9c5f7aea35e58b166874386ac06c3dc12'))),
        child: SingleChildScrollView(
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
                          height: 220,
                          width: 220,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(200),
                              border: Border.all(
                                color: Colors.grey,
                                width: .7,
                              )),
                        ),
                        Container(
                          height: 150,
                          width: 150,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              border:
                                  Border.all(width: .5, color: Colors.yellow)),
                        ),
                        Container(
                          height: 85,
                          width: 85,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                50,
                              ),
                              border:
                                  Border.all(width: 2, color: Colors.yellow)),
                        ),
                        Container(
                          alignment: Alignment.center,
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                              image: const DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(
                                      'https://img.freepik.com/free-photo/handsome-young-man-with-new-stylish-haircut_176420-19637.jpg?w=1060&t=st=1696244020~exp=1696244620~hmac=d5236e0fb797a6ab352ef4e764940d366fb40d90b9414467a3441cf1d175f638')),
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(
                                50,
                              )),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 5,
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
                  padding: const EdgeInsets.symmetric(
                    horizontal: 23,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          y < 560
                              ? const Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      flex: 0,
                                      child: Text(
                                        'Exotic',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 50,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 0,
                                      child: Text(
                                        'fruits',
                                        style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 36, 250, 129),
                                            fontSize: 50,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ),
                                  ],
                                )
                              : const Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      flex: 0,
                                      child: Text(
                                        'Exotic',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 50,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Expanded(
                                      flex: 0,
                                      child: Text(
                                        'fruits',
                                        style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 36, 250, 129),
                                            fontSize: 50,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ),
                                  ],
                                ),
                          const Column(
                            children: [
                              Expanded(
                                  flex: 0,
                                  child: SizedBox(
                                    height: 60,
                                  )),
                              Expanded(
                                flex: 0,
                                child: Text(
                                  'See more',
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 36, 250, 129),
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 10,
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
                      const Row(
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
                                      fontSize: 50,
                                      fontWeight: FontWeight.w300),
                                ),
                              ),
                            ],
                          ),
                          Expanded(
                            flex: 0,
                            child: Text(
                              'See more',
                              style: TextStyle(
                                color: Color.fromARGB(255, 36, 250, 129),
                              ),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Stack(
                        alignment: Alignment.topCenter,
                        children: [
                          Stack(
                            alignment: Alignment.bottomRight,
                            children: [
                              Container(
                                height: y < 560 ? 115 : 200,
                                width: MediaQuery.of(context).size.width,
                                padding: EdgeInsets.symmetric(
                                  horizontal:
                                      MediaQuery.of(context).size.width * .05,
                                  vertical:
                                      MediaQuery.of(context).size.height * .007,
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.only(
                                    bottomLeft: Radius.circular(20),
                                    bottomRight: Radius.circular(
                                      70,
                                    ),
                                    topLeft: Radius.circular(20),
                                    topRight: Radius.circular(20),
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
                                        height: y < 560 ? 100 : 150,
                                        width: y < 560 ? 130 : 200,
                                        decoration: BoxDecoration(
                                            image: const DecorationImage(
                                                fit: BoxFit.cover,
                                                image: AssetImage(
                                                    'assets/155.png')),
                                            // color: Colors.white,
                                            borderRadius: BorderRadius.circular(
                                              5,
                                            )),
                                      ),
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          height: y < 560 ? 20 : 40,
                                        ),
                                        const Expanded(
                                          flex: 0,
                                          child: Row(
                                            children: [
                                              Text(
                                                'Guava',
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 30),
                                              ),
                                              SizedBox(
                                                width: 20,
                                              ),
                                              Expanded(
                                                  flex: 0,
                                                  child: Text(
                                                    '\$2.75',
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 16),
                                                  )),
                                            ],
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 4,
                                        ),
                                        Container(
                                          child: const Row(
                                            children: [
                                              Text(
                                                'PERMUIM',
                                                style: TextStyle(
                                                    color: Color.fromARGB(
                                                        255, 36, 250, 129),
                                                    fontSize: 15),
                                              ),
                                              SizedBox(
                                                width: 5,
                                              ),
                                              Icon(Icons.area_chart_outlined,
                                                  color: Color.fromARGB(
                                                      255, 36, 250, 129),
                                                  size: 16),
                                              SizedBox(
                                                width: 20,
                                              ),
                                              Expanded(
                                                  flex: 0,
                                                  child: Text(
                                                    '\$2.00',
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 16),
                                                  )),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                child: IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.arrow_circle_right_sharp,
                                    color: Colors.white,
                                    size: 45,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          // Row(
                          //   children: [
                          //     Expanded(
                          //       flex: 0,
                          //       child: SizedBox(
                          //         width:
                          //             MediaQuery.of(context).size.width * .01,
                          //       ),
                          //     ),
                          //   ],
                          // ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
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
