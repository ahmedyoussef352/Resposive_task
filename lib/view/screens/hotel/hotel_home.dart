// ignore_for_file: sized_box_for_whitespace

import 'package:bottom_bar/bottom_bar.dart';
import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';

import '../../components/components.dart';

class HotelHome extends StatefulWidget {
  const HotelHome({super.key});

  @override
  State<HotelHome> createState() => _HotelHomeState();
}

class _HotelHomeState extends State<HotelHome> {
  @override
  Widget build(BuildContext context) {
    int y = MediaQuery.of(context).size.width.toInt();
    int currentPage = 0;
    final pageController = PageController();
    Widget list() => ListView(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          children: [
            HotelItem(
                hotelImage: 'assets/161.jpg',
                hotelLoc: "Calheta",
                hotelName: 'Hotel jardim Atlantico'),
            HotelItem(
                hotelImage: 'assets/160.jpg',
                hotelLoc: "Machono",
                hotelName: 'Moradia Car de'),
            HotelItem(
                hotelImage: 'assets/161.jpg',
                hotelLoc: "Calheta",
                hotelName: 'Hotel jardim Atlantico'),
            HotelItem(
                hotelImage: 'assets/161.jpg',
                hotelLoc: "Calheta",
                hotelName: 'Hotel jardim Atlantico'),
          ],
        );
    return Scaffold(
      backgroundColor: Colors.black,
      body: PageView(
        controller: pageController,
        children: [
          SingleChildScrollView(
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 800,
              // y < 560 ? 800 : 800,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 250,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(
                                'assets/luxury-modern-style-bedroom-interior-hotel-bedroom-generative-ai-illustration.jpg'))),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height,
                      color: Colors.black38,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: MediaQuery.of(context).size.width * .08,
                            vertical: MediaQuery.of(context).size.height * .04),
                        child: Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Icon(
                                    Icons.view_comfy_alt_outlined,
                                    size: 30,
                                    color: Colors.white,
                                  ),
                                  Icon(
                                    Icons.notifications_none,
                                    size: 30,
                                    color: Colors.white,
                                  ),
                                ],
                              ),
                              const Spacer(),
                              Expanded(
                                flex: 0,
                                child: Text(
                                  'Hi Anna,',
                                  style: TextStyle(
                                    color: Colors.white,
                                    wordSpacing:
                                        MediaQuery.of(context).size.width *
                                            .005,
                                    fontSize:
                                        MediaQuery.of(context).size.height *
                                            .04,
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 0,
                                child: Text(
                                  'find your favourite',
                                  style: TextStyle(
                                    color: Colors.grey,
                                    wordSpacing:
                                        MediaQuery.of(context).size.width *
                                            .005,
                                    fontSize:
                                        MediaQuery.of(context).size.height *
                                            .02,
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 0,
                                child: Text(
                                  'Hotel',
                                  style: TextStyle(
                                    color:
                                        const Color.fromARGB(255, 36, 250, 129),
                                    wordSpacing:
                                        MediaQuery.of(context).size.width *
                                            .005,
                                    fontSize:
                                        MediaQuery.of(context).size.height *
                                            .02,
                                  ),
                                ),
                              ),
                              const Spacer()
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: 50,
                          padding: EdgeInsets.symmetric(
                            horizontal: MediaQuery.of(context).size.width * .05,
                            vertical: MediaQuery.of(context).size.height * .012,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(.2),
                            borderRadius: BorderRadius.circular(
                              MediaQuery.of(context).size.width * .04,
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.search_outlined,
                                    color: Colors.grey.shade200,
                                    size: MediaQuery.of(context).size.height *
                                        .03,
                                  ),
                                  SizedBox(
                                    width:
                                        MediaQuery.of(context).size.width * .02,
                                  ),
                                  Text(
                                    "Search here ...",
                                    style: TextStyle(
                                        color: Colors.grey.withOpacity(.7),
                                        fontSize:
                                            MediaQuery.of(context).size.height *
                                                .022,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                              ),
                              Icon(
                                Icons.format_list_bulleted,
                                color: Colors.grey.withOpacity(.7),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: y < 560 ? 40 : 60,
                        ),
                        Expanded(
                          flex: 0,
                          child: Container(
                            //color: Colors.red,
                            height: y < 560 ? 390 : 420,
                            child: DefaultTabController(
                              length: 5,
                              child: Column(
                                children: [
                                  ButtonsTabBar(
                                    unselectedLabelStyle: TextStyle(
                                      color: Colors.white,
                                      fontSize: y < 560 ? 20 : 15,
                                    ),
                                    labelStyle:
                                        const TextStyle(color: Colors.black),
                                    borderColor: Colors.green.shade300,
                                    unselectedBackgroundColor: Colors.black,
                                    unselectedBorderColor:
                                        Colors.green.shade300,
                                    backgroundColor: Colors.green.shade300,
                                    height: y < 560 ? 50 : 70,
                                    splashColor: Colors.green.shade300,
                                    duration: 50,
                                    borderWidth: 1.5,
                                    radius: y < 560 ? 50 : 70,
                                    contentPadding: EdgeInsets.symmetric(
                                      horizontal: 15,
                                      vertical:
                                          MediaQuery.of(context).size.height *
                                              .003,
                                    ),
                                    physics: const BouncingScrollPhysics(),
                                    tabs: [
                                      Tab(
                                        child: Row(
                                          children: [
                                            const Text(
                                              'Best offers ',
                                              style: TextStyle(
                                                  color: Colors.black),
                                            ),
                                            Container(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  .06,
                                              height: y < 560 ? 20 : 50,
                                              child: Image.asset(
                                                  'assets/fire.png'),
                                            )
                                          ],
                                        ),
                                        //
                                      ),
                                      const Tab(
                                        text: 'Top rates',
                                      ),
                                      const Tab(
                                        text: 'Pupular',
                                      ),
                                      const Tab(
                                        text: 'Top rates',
                                      ),
                                      const Tab(
                                        text: 'Top rates',
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 30,
                                  ),
                                  Expanded(
                                    child: TabBarView(
                                      children: [
                                        list(),
                                        list(),
                                        list(),
                                        list(),
                                        list(),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
        onPageChanged: (index) {
          // Use a better state management solution
          // setState is used for simplicity
          setState(() => currentPage = index);
        },
      ),
      bottomNavigationBar: BottomBar(
        selectedIndex: currentPage,
        onTap: (int index) {
          pageController.jumpToPage(index);
          setState(() => currentPage = index);
        },
        items: <BottomBarItem>[
          const BottomBarItem(
            icon: Icon(Icons.home_filled),
            activeColor: Colors.grey,
          ),
          const BottomBarItem(
            icon: Icon(Icons.search),
            activeColor: Colors.red,
          ),
          BottomBarItem(
            icon: const Icon(Icons.view_comfy_alt_outlined),
            activeColor: Colors.greenAccent.shade700,
          ),
        ],
      ),
    );
  }
}
