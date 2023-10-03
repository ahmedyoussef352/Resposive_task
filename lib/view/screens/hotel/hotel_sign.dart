import 'package:flutter/material.dart';

class HotelSign extends StatelessWidget {
  const HotelSign({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/burning-candle-table.jpg'))),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                color: Colors.black54,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height * .085,
                          width: MediaQuery.of(context).size.width * .18,
                          padding: EdgeInsets.symmetric(
                            vertical: MediaQuery.of(context).size.height * .012,
                          ),
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 36, 250, 129),
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(
                                    MediaQuery.of(context).size.width * .02,
                                  ),
                                  bottomLeft: Radius.circular(
                                    MediaQuery.of(context).size.width * .02,
                                  ),
                                  bottomRight: Radius.circular(
                                    MediaQuery.of(context).size.width * .13,
                                  ))),
                          child: Center(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  flex: 0,
                                  child: Text(
                                    "STA",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize:
                                          MediaQuery.of(context).size.height *
                                              .022,
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 0,
                                  child: Text(
                                    "YZ.",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize:
                                          MediaQuery.of(context).size.height *
                                              .022,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width * .08,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                flex: 0,
                                child: Text(
                                  'STAYZ',
                                  style: TextStyle(
                                    color: Colors.white,
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
                                  'book easy',
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
                            ],
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: MediaQuery.of(context).size.width * .06,
                        vertical: MediaQuery.of(context).size.height * .2,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 0,
                            child: Text(
                              'Book your hotels',
                              style: TextStyle(
                                color: Colors.grey.shade300,
                                fontSize:
                                    MediaQuery.of(context).size.height * .045,
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 0,
                            child: Text(
                              'Fast and Easly',
                              style: TextStyle(
                                color: Colors.grey.shade300,
                                fontSize:
                                    MediaQuery.of(context).size.height * .045,
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              Expanded(
                                flex: 0,
                                child: Text(
                                  'with',
                                  style: TextStyle(
                                    color: Colors.grey.shade300,
                                    fontSize:
                                        MediaQuery.of(context).size.height *
                                            .045,
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 0,
                                child: Text(
                                  ' STAYZ.',
                                  style: TextStyle(
                                    color:
                                        const Color.fromARGB(255, 20, 255, 122),
                                    fontWeight: FontWeight.w500,
                                    fontSize:
                                        MediaQuery.of(context).size.height *
                                            .05,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * .01,
                          ),
                          Expanded(
                            flex: 0,
                            child: Text(
                              'Find your hotel easly and travel',
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
                              'anywhere you want with us',
                              style: TextStyle(
                                color: Colors.grey,
                                wordSpacing:
                                    MediaQuery.of(context).size.width * .005,
                                fontSize:
                                    MediaQuery.of(context).size.height * .02,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Spacer(),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: MediaQuery.of(context).size.width * .06,
                        vertical: MediaQuery.of(context).size.height * .03,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 36, 250, 129),
                              borderRadius: BorderRadius.circular(
                                MediaQuery.of(context).size.width * .04,
                              ),
                            ),
                            child: TextButton(
                              onPressed: () {},
                              child: Center(
                                child: Text(
                                  "Sign up >",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize:
                                        MediaQuery.of(context).size.height *
                                            .025,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * .009,
                          ),
                          Text(
                            'already have an account? Login',
                            style: TextStyle(
                              color: Colors.grey,
                              wordSpacing:
                                  MediaQuery.of(context).size.width * .005,
                              fontSize:
                                  MediaQuery.of(context).size.height * .015,
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
