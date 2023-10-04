// ignore_for_file: must_be_immutable, empty_statements, sized_box_for_whitespace, avoid_unnecessary_containers, sort_child_properties_last

import 'package:flutter/material.dart';

Widget animatedItem(
  context, {
  required String number,
  required String label,
}) {
  int y = MediaQuery.of(context).size.width.toInt();
  return Container(
    height: y < 560 ? 45 : 55,
    width: y < 560 ? 45 : 55,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(
        30,
      ),
      color: Colors.white,
    ),
    child: RawMaterialButton(
      onPressed: () {
        // _showSnackBar(context, "You pressed 1");
      },
      shape: const CircleBorder(),
      // padding: const EdgeInsets.all(24.0),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 5,
        ),
        child: Column(
          children: [
            const Expanded(child: SizedBox()),
            Text(
              number.toString(),
              style: TextStyle(
                  color: Colors.black,
                  fontSize: y < 560 ? 20 : 15,
                  fontWeight: FontWeight.bold),
            ),
            Expanded(
              flex: 0,
              child: Text(
                label.toString(),
                style: TextStyle(
                    color: Colors.black,
                    fontSize: y < 560 ? 8 : 6,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const Expanded(child: SizedBox()),
          ],
        ),
      ),
    ),
  );
}

Widget products10(context) {
  var y = MediaQuery.of(context).size.width;
  return Stack(
    alignment: AlignmentDirectional.bottomCenter,
    children: [
      Container(
        // color: Colors.red,
        height: 120,
        width: 100,
      ),
      Container(
        height: y < 560 ? 85 : 100,
        width: y < 560 ? 90 : 180,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(
              20,
            )),
        child: y < 560
            ? Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * .03,
                  ),
                  const Expanded(
                    child: Text(
                      "10",
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 15,
                      ),
                    ),
                  ),
                  const Expanded(
                    child: Text('Products',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w700)),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * .025,
                  ),
                ],
              )
            : Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * .03,
                    ),
                    const Expanded(
                      flex: 0,
                      child: Text(
                        "10",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 15,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    const Expanded(
                      flex: 0,
                      child: Text('Products',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w700)),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * .025,
                    ),
                  ],
                ),
              ),
      ),
      Positioned(
        bottom: y < 560 ? 62 : 78,
        width: 50,
        child: Container(
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                alignment: Alignment.topRight,
                children: [
                  CircleAvatar(
                    radius: 22,
                    child: Icon(
                      Icons.shopping_bag_outlined,
                      color: Colors.white,
                      size: 32,
                    ),
                    backgroundColor: Colors.black,
                  ),
                  Align(
                    child: CircleAvatar(
                      backgroundColor: Colors.green,
                      radius: 5,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    ],
  );
}

Widget productItem(context,
    {required String name, required String price, required String image}) {
  int y = MediaQuery.of(context).size.width.toInt();
  return Stack(
    alignment: Alignment.topCenter,
    children: [
      Container(
        // color: Colors.red,
        height: y < 560 ? 240 : 350,
        width: y < 560 ? 180 : 300,
        padding: const EdgeInsets.all(8),
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Stack(
              alignment: Alignment.bottomRight,
              children: [
                Container(
                  height: y < 560 ? 140 : 230,
                  width: y < 560 ? 150 : 300,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 15),
                  decoration: BoxDecoration(
                    // color: Colors.red.withOpacity(5),
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
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: y < 560 ? 20 : 40,
                      ),
                      Expanded(
                        flex: 0,
                        child: Text(
                          name.toString(),
                          style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 30),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Container(
                        child: const Row(
                          children: [
                            Text(
                              'PERMUIM',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 36, 250, 129),
                                  fontSize: 15),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Icon(Icons.area_chart_outlined,
                                color: Color.fromARGB(255, 36, 250, 129),
                                size: 16)
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Expanded(
                          flex: 0,
                          child: Text(
                            '\$$price',
                            style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          )),
                    ],
                  ),
                ),
                Container(
                  height: 140,
                  width: 150,
                  // color: Colors.blue,
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.arrow_circle_right_sharp,
                        color: Colors.white,
                        size: 45,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      Container(
        height: y < 560 ? 130 : 165,
        width: y < 560 ? 180 : 250,
        decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover, image: AssetImage(image.toString())),
          // color: Colors.white,
          // borderRadius: BorderRadius.circular(
          //   MediaQuery.of(context).size.height * .1,
          // )
        ),
      ),
    ],
  );
}

class HotelItem extends StatefulWidget {
  String hotelImage;
  String hotelName;
  String hotelLoc;
  HotelItem(
      {super.key,
      required this.hotelImage,
      required this.hotelLoc,
      required this.hotelName});

  @override
  State<HotelItem> createState() => _HotelItemState();
}

class _HotelItemState extends State<HotelItem> {
  bool click = false;
  @override
  Widget build(BuildContext context) {
    var y = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.only(
        right: 20,
      ),
      child: Container(
        // color: Colors.blue,

        width: 200,
        // color: Colors.red,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              children: [
                Container(
                  width: 230,
                  height: 250,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        40,
                      ),
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(widget.hotelImage.toString()))),
                ),
                Container(
                  width: 230,
                  height: 250,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 18,
                        ),
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              click = !click;
                            });
                          },
                          child: Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                                color: Colors.black54,
                                borderRadius: BorderRadius.circular(17)),
                            child: Center(
                                child: click == false
                                    ? Icon(
                                        Icons.favorite_border_outlined,
                                        size: 23,
                                        color: Colors.grey.shade100,
                                        // MediaQuery.of(context)
                                        //         .size
                                        //         .height *
                                        //     .03,
                                      )
                                    : const Icon(
                                        Icons.favorite,
                                        size: 23,
                                        color:
                                            Color.fromARGB(255, 36, 250, 129),
                                        // MediaQuery.of(context)
                                        //         .size
                                        //         .height *
                                        //     .03,
                                      )),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 0,
                      child: Text(
                        widget.hotelName.toString(),
                        style: TextStyle(
                          color: Colors.grey.shade200,
                          wordSpacing: 2,
                          fontSize: y < 560 ? 16 : 9,
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.location_on_outlined,
                          color: Colors.grey,
                        ),
                        Expanded(
                          flex: 0,
                          child: Text(
                            widget.hotelLoc.toString(),
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: y < 560 ? 20 : 9,
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
