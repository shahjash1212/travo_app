import 'package:flutter/material.dart';

import 'loginpage.dart';

class HotelBookingPage extends StatelessWidget {
  const HotelBookingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 20),
                height: 280,
                decoration: const BoxDecoration(
                  color: Color(0xff7b60db),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: const [
                            Text("Hotel Booking",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 26,
                                    fontWeight: FontWeight.w700)),
                            SizedBox(height: 20),
                            Text(
                                "Choose your favourite hotel and enjoy the service",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 14)),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SafeArea(
                  child: BackButton(
                color: Colors.white,
              )),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20, top: 20),
            child: Container(
              height: 100,
              decoration: BoxDecoration(boxShadow: const [
                BoxShadow(
                    offset: Offset(0, 4), color: Colors.grey, blurRadius: 10)
              ], borderRadius: BorderRadius.circular(10), color: Colors.white),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          color: Color(0xffffebdf),
                          borderRadius: BorderRadius.circular(20)),
                      child: const Icon(
                        Icons.pin_drop,
                        color: Color(0xfffe9c5e),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text('Destination',
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 14)),
                          Text('South Korea',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700)),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20, top: 20),
            child: Container(
              height: 100,
              decoration: BoxDecoration(boxShadow: const [
                BoxShadow(
                    offset: Offset(0, 4), color: Colors.grey, blurRadius: 10)
              ], borderRadius: BorderRadius.circular(10), color: Colors.white),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          color: Color(0xffffebdf),
                          borderRadius: BorderRadius.circular(20)),
                      child: const Icon(
                        Icons.calendar_month,
                        color: Color(0xfffe9c5e),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text('Select Date',
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 14)),
                          Text('13 Feb -18 Feb 2021',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700)),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20, top: 20),
            child: Container(
              height: 100,
              decoration: BoxDecoration(boxShadow: const [
                BoxShadow(
                    offset: Offset(0, 4), color: Colors.grey, blurRadius: 10)
              ], borderRadius: BorderRadius.circular(10), color: Colors.white),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          color: Color(0xffd8f4f2),
                          borderRadius: BorderRadius.circular(20)),
                      child: const Icon(
                        Icons.bed_sharp,
                        color: Color(0xff3ec8bc),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text('Guest and Room',
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 14)),
                          Text('2 Guest,1 Room',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700)),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20, top: 30),
            child: InkWell(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AddCard(),
                ),
              ),
              child: Container(
                height: 50,
                width: 400,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Color(0xff7b60db),
                ),
                child: const Center(
                  child: Text("Seach",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w400)),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
