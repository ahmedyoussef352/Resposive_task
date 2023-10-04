// ignore_for_file: sort_child_properties_last, avoid_unnecessary_containers

import 'package:fab_circular_menu_plus/fab_circular_menu_plus.dart';
import 'package:flutter/material.dart';

import '../../components/components.dart';

class Fruits extends StatelessWidget {
  const Fruits({super.key});

  @override
  Widget build(BuildContext context) {
    int y = MediaQuery.of(context).size.width.toInt();
    final GlobalKey<FabCircularMenuPlusState> fabKey = GlobalKey();
    final primaryColor = Theme.of(context).primaryColor;
    return Scaffold(
      body: SingleChildScrollView(
        child: Expanded(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: y < 560 ? MediaQuery.of(context).size.height : 800,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        'https://img.freepik.com/premium-photo/photo-dragonfruit_931878-28655.jpg?size=626&ext=jpg&ga=GA1.1.1005583554.1695721244&semt=ais'))),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ///upper
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      y < 560
                          ? Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.arrow_circle_left_sharp,
                                    color: Colors.white,
                                    size: 45,
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Row(
                                  children: [
                                    Text(
                                      'PERMUIM',
                                      style: TextStyle(
                                          color: Colors.green, fontSize: 15),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Icon(Icons.area_chart_outlined,
                                        color: Colors.green, size: 25)
                                  ],
                                )
                              ],
                            )
                          : Row(
                              children: [
                                IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.arrow_circle_left_sharp,
                                    color: Colors.white,
                                    size: 38,
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Row(
                                  children: [
                                    const Text(
                                      'PERMUIM',
                                      style: TextStyle(
                                          color: Colors.green, fontSize: 15),
                                    ),
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          .015,
                                    ),
                                    const Icon(Icons.area_chart_outlined,
                                        color: Colors.green, size: 25)
                                  ],
                                )
                              ],
                            ),
                      const SizedBox(
                        height: 20,
                      ),
                      products10(context)
                    ],
                  ),

                  ///body
                  y < 560
                      ? const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              flex: 0,
                              child: Text(
                                'Exotic fruits',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 50,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Expanded(
                              flex: 0,
                              child: Text(
                                'Pitaya',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 50,
                                    fontWeight: FontWeight.w300),
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
                                'Exotic fruits',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 50,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Expanded(
                              flex: 0,
                              child: Text(
                                'Pitaya',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 50,
                                    fontWeight: FontWeight.w300),
                              ),
                            ),
                          ],
                        ),
                  const SizedBox(
                    height: 40,
                  ),
                  Container(
                    height: 50,
                    width: 180,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(
                          color: Colors.green,
                          width: 2.5,
                        )),
                    child: const Center(
                        child: Text(
                      'Nutration',
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.green,
                          fontWeight: FontWeight.w500),
                    )),
                  ),
                  const Spacer(),

                  ///SELECT

                  Row(
                    children: [
                      const CircleAvatar(
                        backgroundColor: Colors.green,
                        radius: 5,
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Container(
                        width: y < 560 ? 100 : 280,
                        child: const Text(
                          '''SELECT QUANTITY''',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w600),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  const Spacer(),

                  //footer
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const SizedBox(),

                      ///Add to"

                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 15,
                          vertical: 25,
                        ),
                        height: y < 560 ? 140 : 120,
                        width: y < 560 ? 95 : 250,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(
                              20,
                            )),
                        child: y < 560
                            ? Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  const CircleAvatar(
                                    radius: 21,
                                    child: Icon(
                                      Icons.add_shopping_cart_outlined,
                                      color: Colors.white,
                                      size: 25,
                                    ),
                                    backgroundColor: Colors.black,
                                  ),
                                  const SizedBox(
                                    height: 8,
                                  ),
                                  Expanded(
                                    child: Text(
                                      "Add to",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize:
                                            MediaQuery.of(context).size.height *
                                                .017,
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Text('Order',
                                        style: TextStyle(
                                            fontSize: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                .017,
                                            fontWeight: FontWeight.w700)),
                                  ),
                                ],
                              )
                            : Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  const CircleAvatar(
                                    radius: 21,
                                    child: Icon(
                                      Icons.add_shopping_cart_outlined,
                                      color: Colors.white,
                                      size: 25,
                                    ),
                                    backgroundColor: Colors.black,
                                  ),
                                  const SizedBox(
                                    width: 8,
                                  ),
                                  Expanded(
                                    child: Text(
                                      "Add to Order",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: y < 560 ? 15 : 15,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),

      ///floatingActionButton
      floatingActionButton: Builder(
        builder: (context) => FabCircularMenuPlus(
          key: fabKey,
          // Cannot be `Alignment.center`
          alignment: Alignment.bottomLeft,
          ringColor: Colors.white.withAlpha(30),
          ringDiameter: 285,
          ringWidth: 8,
          fabSize: 185,

          // ringDiameterLimitFactor: 500,
          // fabElevation: 500,
          fabIconBorder: const CircleBorder(),
          // Also can use specific color based on wether
          // the menu is open or not:
          fabOpenColor: Colors.white,
          fabCloseColor: Colors.grey,
          // These properties take precedence over fabColor
          // fabColor: Colors.white,
          fabChild: Container(
            padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * .05,
              vertical: MediaQuery.of(context).size.height * .06,
            ),
            child: Align(
              alignment: Alignment.center,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 0,
                    child: Text(
                      '\$24.5',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: MediaQuery.of(context).size.height * .05,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Expanded(
                    flex: 0,
                    child: Text(
                      '5 pack',
                      style: TextStyle(
                          color: Colors.grey.shade800,
                          fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
            ),
          ),

          fabCloseIcon: Icon(Icons.close, color: primaryColor),
          fabMargin: const EdgeInsets.all(16),
          animationDuration: const Duration(milliseconds: 800),
          animationCurve: Curves.easeInOutCirc,

          onDisplayChange: (isOpen) {
            _showSnackBar(context, "The menu is ${isOpen ? "open" : "closed"}");
          },
          children: <Widget>[
            animatedItem(context, number: '10', label: 'pack'),
            animatedItem(context, number: '5', label: 'pack'),
            animatedItem(context, number: '1', label: ''),
          ],
        ),
      ),
    );
  }

  void _showSnackBar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        duration: const Duration(milliseconds: 400),
      ),
    );
  }
}
