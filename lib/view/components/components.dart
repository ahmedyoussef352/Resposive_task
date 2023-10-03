// ignore_for_file: must_be_immutable, empty_statements, sized_box_for_whitespace, avoid_unnecessary_containers, sort_child_properties_last

import 'package:flutter/material.dart';

Widget animatedItem(
  context, {
  required String number,
  required String label,
}) =>
    Container(
      height: MediaQuery.of(context).size.height * .06,
      width: MediaQuery.of(context).size.width * .12,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          MediaQuery.of(context).size.height * .2,
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
          padding: EdgeInsets.symmetric(
            vertical: MediaQuery.of(context).size.height * .008,
          ),
          child: Column(
            children: [
              const Expanded(child: SizedBox()),
              Text(
                number.toString(),
                style: TextStyle(
                    color: Colors.black,
                    fontSize: MediaQuery.of(context).size.height * .025,
                    fontWeight: FontWeight.bold),
              ),
              Expanded(
                flex: 0,
                child: Text(
                  label.toString(),
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: MediaQuery.of(context).size.height * .01,
                      fontWeight: FontWeight.bold),
                ),
              ),
              const Expanded(child: SizedBox()),
            ],
          ),
        ),
      ),
    );
Widget products10(context) => Stack(
      alignment: AlignmentDirectional.bottomCenter,
      children: [
        Container(
          // color: Colors.red,
          height: MediaQuery.of(context).size.height * .135,
          width: MediaQuery.of(context).size.width * .215,
        ),
        Container(
          height: MediaQuery.of(context).size.height * .098,
          width: MediaQuery.of(context).size.width * .225,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(
                MediaQuery.of(context).size.height * .02,
              )),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * .03,
              ),
              Expanded(
                child: Text(
                  "10",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: MediaQuery.of(context).size.height * .017,
                  ),
                ),
              ),
              Expanded(
                child: Text('Products',
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.height * .017,
                        fontWeight: FontWeight.w700)),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .025,
              ),
            ],
          ),
        ),
        Positioned(
          bottom: MediaQuery.of(context).size.height * .075,
          width: MediaQuery.of(context).size.width * .225,
          child: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(
                  alignment: Alignment.topRight,
                  children: [
                    CircleAvatar(
                      radius: MediaQuery.of(context).size.height * .025,
                      child: Icon(
                        Icons.shopping_bag_outlined,
                        color: Colors.white,
                        size: MediaQuery.of(context).size.height * .035,
                      ),
                      backgroundColor: Colors.black,
                    ),
                    const Align(
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

Widget productItem(context,
    {required String name, required String price, required String image}) {
  return Stack(
    alignment: Alignment.topCenter,
    children: [
      Container(
        // color: Colors.red,
        height: MediaQuery.of(context).size.height * .255,
        width: MediaQuery.of(context).size.width * .4,
        padding: const EdgeInsets.all(8),
        child: Stack(
          alignment: Alignment.bottomRight,
          children: [
            Container(
              height: MediaQuery.of(context).size.height * .16,
              width: MediaQuery.of(context).size.width * .35,
              padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * .038,
                vertical: MediaQuery.of(context).size.height * .02,
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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * .025,
                  ),
                  Expanded(
                    flex: 0,
                    child: Text(
                      name.toString(),
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: MediaQuery.of(context).size.height * .035),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * .003,
                  ),
                  Container(
                    child: Row(
                      children: [
                        Text(
                          'PERMUIM',
                          style: TextStyle(
                              color: Colors.green,
                              fontSize:
                                  MediaQuery.of(context).size.height * .017),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * .015,
                        ),
                        Icon(Icons.area_chart_outlined,
                            color: Colors.green,
                            size: MediaQuery.of(context).size.height * .017)
                      ],
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * .005,
                  ),
                  Expanded(
                      flex: 0,
                      child: Text(
                        '\$$price',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize:
                                MediaQuery.of(context).size.height * .018),
                      )),
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
      ),
      Row(
        children: [
          Expanded(
            flex: 0,
            child: SizedBox(
              width: MediaQuery.of(context).size.width * .01,
            ),
          ),
          Expanded(
            flex: 0,
            child: Container(
              height: MediaQuery.of(context).size.height * .13,
              width: MediaQuery.of(context).size.width * .4,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover, image: AssetImage(image.toString())),
                  // color: Colors.white,
                  borderRadius: BorderRadius.circular(
                    MediaQuery.of(context).size.height * .1,
                  )),
            ),
          ),
        ],
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
    return Padding(
      padding: EdgeInsets.all(
        MediaQuery.of(context).size.height * .01,
      ),
      child: Container(
        height: MediaQuery.of(context).size.height * .1,
        width: MediaQuery.of(context).size.width * .5,
        // color: Colors.red,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * .3,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        MediaQuery.of(context).size.width * .08,
                      ),
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(widget.hotelImage.toString()))),
                ),
                Container(
                  // color: Colors.red,
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * .3,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: MediaQuery.of(context).size.width * .045,
                          vertical: MediaQuery.of(context).size.height * .020,
                        ),
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              click = !click;
                            });
                          },
                          child: Container(
                            height: MediaQuery.of(context).size.height * .045,
                            width: MediaQuery.of(context).size.width * .1,
                            decoration: BoxDecoration(
                                color: Colors.black54,
                                borderRadius: BorderRadius.circular(
                                  MediaQuery.of(context).size.width * .04,
                                )),
                            child: Center(
                                child: click == false
                                    ? Icon(
                                        Icons.favorite_border_outlined,
                                        size:
                                            MediaQuery.of(context).size.height *
                                                .025,
                                        color: Colors.grey.shade100,
                                        // MediaQuery.of(context)
                                        //         .size
                                        //         .height *
                                        //     .03,
                                      )
                                    : Icon(
                                        Icons.favorite,
                                        size:
                                            MediaQuery.of(context).size.height *
                                                .025,
                                        color: const Color.fromARGB(
                                            255, 36, 250, 129),
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
            SizedBox(
              height: MediaQuery.of(context).size.height * .02,
            ),
            Text(
              widget.hotelName.toString(),
              style: TextStyle(
                color: Colors.grey.shade200,
                wordSpacing: MediaQuery.of(context).size.width * .005,
                fontSize: MediaQuery.of(context).size.height * .019,
              ),
            ),
            Row(
              children: [
                const Icon(
                  Icons.location_on_outlined,
                  color: Colors.grey,
                ),
                Text(
                  widget.hotelLoc.toString(),
                  style: TextStyle(
                    color: Colors.grey,
                    wordSpacing: MediaQuery.of(context).size.width * .005,
                    fontSize: MediaQuery.of(context).size.height * .018,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
