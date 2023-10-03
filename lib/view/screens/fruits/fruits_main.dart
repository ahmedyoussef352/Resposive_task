// ignore_for_file: sort_child_properties_last, avoid_unnecessary_containers

import 'package:fab_circular_menu_plus/fab_circular_menu_plus.dart';
import 'package:flutter/material.dart';

import '../../components/components.dart';

class Fruits extends StatelessWidget {
  const Fruits({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FabCircularMenuPlusState> fabKey = GlobalKey();
    final primaryColor = Theme.of(context).primaryColor;
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                    'https://img.freepik.com/premium-photo/photo-dragonfruit_931878-28655.jpg?size=626&ext=jpg&ga=GA1.1.1005583554.1695721244&semt=ais'))),
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * .07,
              vertical: MediaQuery.of(context).size.height * .07),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ///upper
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * .045,
                        width: MediaQuery.of(context).size.height * .045,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(
                              MediaQuery.of(context).size.height * .1,
                            )),
                        child: Center(
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.arrow_back_outlined,
                              size: MediaQuery.of(context).size.height * .03,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * .02,
                      ),
                      Container(
                        child: Row(
                          children: [
                            Text(
                              'PERMUIM',
                              style: TextStyle(
                                  color: Colors.green,
                                  fontSize: MediaQuery.of(context).size.height *
                                      .017),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * .015,
                            ),
                            Icon(Icons.area_chart_outlined,
                                color: Colors.green,
                                size: MediaQuery.of(context).size.height * .017)
                          ],
                        ),
                      )
                    ],
                  ),
                  products10(context)
                ],
              ),

              ///body
              Expanded(
                flex: 0,
                child: Text(
                  'Exotic fruits',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: MediaQuery.of(context).size.height * .06,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Expanded(
                flex: 0,
                child: Text(
                  'Pitaya',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: MediaQuery.of(context).size.height * .06,
                      fontWeight: FontWeight.w300),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .04,
              ),
              Container(
                height: MediaQuery.of(context).size.height * .05,
                width: MediaQuery.of(context).size.width * .43,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(
                      color: Colors.green,
                      width: MediaQuery.of(context).size.height * .0025,
                    )),
                child: Center(
                    child: Text(
                  'Nutration',
                  style: TextStyle(
                      fontSize: MediaQuery.of(context).size.height * .02,
                      color: Colors.green,
                      fontWeight: FontWeight.bold),
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
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .03,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        '''SELECT''',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: MediaQuery.of(context).size.height * .017,
                            fontWeight: FontWeight.w900),
                      ),
                      Text(
                        'QUANTITY',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: MediaQuery.of(context).size.height * .017,
                            fontWeight: FontWeight.w900),
                      )
                    ],
                  )
                ],
              ),
              Expanded(
                  flex: 0,
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height * .03,
                  )),
              const Spacer(),

              //footer
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(),

                  ///Add to"

                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width * .05,
                      vertical: MediaQuery.of(context).size.height * .03,
                    ),
                    height: MediaQuery.of(context).size.height * .16,
                    width: MediaQuery.of(context).size.width * .222,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(
                          MediaQuery.of(context).size.height * .017,
                        )),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          radius: MediaQuery.of(context).size.height * .025,
                          child: Icon(
                            Icons.add_shopping_cart_outlined,
                            color: Colors.white,
                            size: MediaQuery.of(context).size.height * .035,
                          ),
                          backgroundColor: Colors.black,
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * .01,
                        ),
                        Expanded(
                          child: Text(
                            "Add to",
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize:
                                  MediaQuery.of(context).size.height * .017,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Text('Order',
                              style: TextStyle(
                                  fontSize:
                                      MediaQuery.of(context).size.height * .017,
                                  fontWeight: FontWeight.w700)),
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

      ///floatingActionButton
      floatingActionButton: Builder(
        builder: (context) => FabCircularMenuPlus(
          key: fabKey,
          // Cannot be `Alignment.center`
          alignment: Alignment.bottomLeft,
          ringColor: Colors.white.withAlpha(25),
          ringDiameter: MediaQuery.of(context).size.height * .35,
          ringWidth: MediaQuery.of(context).size.width * .02,
          fabSize: MediaQuery.of(context).size.height * .2,

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
