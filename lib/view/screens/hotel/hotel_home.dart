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
                hotelName: 'Moradia Car de')
          ],
        );
    return Scaffold(
      backgroundColor: Colors.black,
      body: PageView(
        controller: pageController,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * .3,
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
                          vertical: MediaQuery.of(context).size.height * .055),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(
                                Icons.view_comfy_alt_outlined,
                                size: MediaQuery.of(context).size.height * .038,
                                color: Colors.white,
                              ),
                              Icon(
                                Icons.notifications_none,
                                size: MediaQuery.of(context).size.height * .038,
                                color: Colors.white,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * .05,
                          ),
                          Expanded(
                            flex: 0,
                            child: Text(
                              'Hi Anna,',
                              style: TextStyle(
                                color: Colors.white,
                                wordSpacing:
                                    MediaQuery.of(context).size.width * .005,
                                fontSize:
                                    MediaQuery.of(context).size.height * .04,
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
                                    MediaQuery.of(context).size.width * .005,
                                fontSize:
                                    MediaQuery.of(context).size.height * .02,
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 0,
                            child: Text(
                              'Hotel',
                              style: TextStyle(
                                color: const Color.fromARGB(255, 36, 250, 129),
                                wordSpacing:
                                    MediaQuery.of(context).size.width * .005,
                                fontSize:
                                    MediaQuery.of(context).size.height * .02,
                              ),
                            ),
                          ),
                          const Spacer()
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * .08,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
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
                                  size:
                                      MediaQuery.of(context).size.height * .03,
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
                        height: MediaQuery.of(context).size.height * .01,
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * .5,
                        child: DefaultTabController(
                          length: 3,
                          child: Column(
                            children: [
                              ButtonsTabBar(
                                unselectedLabelStyle: TextStyle(
                                  color: Colors.white,
                                  fontSize:
                                      MediaQuery.of(context).size.width * .045,
                                ),
                                labelStyle:
                                    const TextStyle(color: Colors.black),
                                borderColor: Colors.green.shade300,
                                unselectedBackgroundColor: Colors.black,
                                unselectedBorderColor: Colors.green.shade300,
                                backgroundColor: Colors.green.shade300,
                                height:
                                    MediaQuery.of(context).size.height * .06,
                                splashColor: Colors.green.shade300,
                                duration: 50,
                                borderWidth:
                                    MediaQuery.of(context).size.width * .005,
                                radius: MediaQuery.of(context).size.width * .05,
                                contentPadding: EdgeInsets.symmetric(
                                  horizontal:
                                      MediaQuery.of(context).size.width * .05,
                                  vertical:
                                      MediaQuery.of(context).size.height * .003,
                                ),
                                physics: const BouncingScrollPhysics(),
                                tabs: [
                                  Tab(
                                    child: Row(
                                      children: [
                                        const Text(
                                          'Best offers ',
                                          style: TextStyle(color: Colors.black),
                                        ),
                                        Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              .06,
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              .05,
                                          child: Image.asset('assets/fire.png'),
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
                                ],
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * .05,
                              ),
                              Expanded(
                                child: TabBarView(
                                  children: [list(), list(), list()],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const Spacer(),
              ],
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
