import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:travelinguiapp/models/place.dart';

import 'hotelbookingpage.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: const [
          FirstContainer(),
          SizedBox(height: 15),
          FlightsAndHotels(),
          SizedBox(height: 15),
          PupularDestination(),
        ]),
      ),
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors.white,
          primaryColor: Color(0xff6155cc),
        ),
        child: BottomNavigationBar(items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Color(0xff6155cc),
            ),
            label: 'home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, color: Color(0xff6155cc)),
            label: 'user',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite, color: Color(0xff6155cc)),
            label: 'favr',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.cases_outlined, color: Color(0xff6155cc)),
            label: 'case',
          ),
        ]),
      ),
    );
  }
}

class PupularDestination extends StatelessWidget {
  const PupularDestination({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text("Popular Destinations",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800)),
              InkWell(
                onTap: () => showModalBottomSheet(
                  backgroundColor: Colors.white.withOpacity(.8),
                  shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(25))),
                  elevation: 10,
                  context: context,
                  builder: (context) => sheetBuilder(),
                ),
                child: Text(
                  "See All",
                  style: TextStyle(color: Colors.blue.shade300),
                ),
              ),
            ],
          ),
          Container(
            height: 880,
            child: GridView.builder(
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisSpacing: 5,
                crossAxisSpacing: 5,
                childAspectRatio: .8,
                crossAxisCount: 2,
                mainAxisExtent: 200,
              ),
              itemCount: places.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  margin: EdgeInsets.all(2),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image(
                        image: AssetImage(places[index].image),
                        fit: BoxFit.cover),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class sheetBuilder extends StatelessWidget {
  const sheetBuilder({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Container(
              margin: EdgeInsets.all(6),
              height: 5,
              width: 50,
              decoration: BoxDecoration(
                  color: Colors.black, borderRadius: BorderRadius.circular(20)),
            ),
          ),
          // SizedBox(height: 10),
          const Text(
            'Chooosw Your Filter',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800),
          ),
          const Text(
            'Bdget',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
          ),
          Text('Hotel Class',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800)),

          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(
                  Icons.star,
                  color: Colors.yellow.shade800,
                ),
                Icon(
                  Icons.star,
                  color: Colors.yellow.shade800,
                ),
                Icon(
                  Icons.star,
                  color: Colors.yellow.shade800,
                ),
                Icon(
                  Icons.star,
                  color: Colors.yellow.shade800,
                ),
                Icon(
                  Icons.star,
                  color: Colors.grey,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20, top: 10),
            child: Container(
              height: 60,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: Colors.white),
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
                      padding: const EdgeInsets.only(left: 10.0, right: 5),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text('Facilities',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 16)),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20, top: 10),
            child: Container(
              height: 60,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: Colors.white),
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
                        Icons.calendar_month,
                        color: Color(0xff3ec8bc),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0, right: 5),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text('Property Type',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 16)),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 20.0,
              right: 20,
              top: 10,
            ),
            child: Container(
              height: 60,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: Colors.white),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          color: Color(0xfffde4e4),
                          borderRadius: BorderRadius.circular(20)),
                      child: const Icon(
                        Icons.calendar_month,
                        color: Color(0xfff77777),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0, right: 5),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text('Sort By',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 16)),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 50,
            decoration: BoxDecoration(
                boxShadow: const [
                  BoxShadow(
                      offset: Offset(0, 3), color: Colors.grey, blurRadius: 10),
                ],
                borderRadius: BorderRadius.circular(50),
                color: Color(0xff765ed8)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text('Apply',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w800))
              ],
            ),
          ),
          SizedBox(height: 10),
          Container(
            height: 50,
            decoration: BoxDecoration(
                boxShadow: const [
                  BoxShadow(
                      offset: Offset(0, 3), color: Colors.grey, blurRadius: 10),
                ],
                borderRadius: BorderRadius.circular(50),
                color: Color(0xffe4e3f3)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(width: 10),
                Text('Reset',
                    style: TextStyle(
                        color: Color(0xff765ed8),
                        fontSize: 16,
                        fontWeight: FontWeight.w800))
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class FlightsAndHotels extends StatelessWidget {
  const FlightsAndHotels({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          children: [
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HotelBookingPage(),
                    ));
              },
              child: Container(
                height: 80,
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xfff3e1d8),
                ),
                child: const Icon(
                  Icons.person,
                  color: Color(0xfff9b387),
                  size: 40,
                ),
              ),
            ),
            const Text("Hotels",
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 14,
                    fontWeight: FontWeight.w700)),
          ],
        ),
        Column(
          children: [
            Container(
              height: 80,
              width: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color(0xfff1d9dd),
              ),
              child: const Icon(
                Icons.flight,
                color: Color(0xfff68484),
                size: 38,
              ),
            ),
            const Text("Flights",
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 14,
                    fontWeight: FontWeight.w700)),
          ],
        ),
        Column(
          children: [
            Container(
              height: 80,
              width: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color(0xffcceaea),
              ),
              child: const Icon(
                Icons.flight_takeoff,
                color: Color(0xffa0dfdb),
                size: 40,
              ),
            ),
            const Text("All",
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 14,
                    fontWeight: FontWeight.w700)),
          ],
        ),
      ],
    );
  }
}

class FirstContainer extends StatelessWidget {
  const FirstContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
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
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text("Hi, James!",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              fontWeight: FontWeight.w700)),
                      Text("where you want to go next ?",
                          style: TextStyle(color: Colors.white, fontSize: 14)),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.notification_add_outlined,
                    color: Colors.white,
                  ),
                ),
                Container(
                  height: 80,
                  width: 80,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Icon(
                    Icons.person,
                    size: 40,
                    color: Color(0xff8262e0),
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          right: 30,
          left: 30,
          child: Container(
            height: 50,
            width: 400,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: Colors.white),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: const [
                  Icon(Icons.search),
                  SizedBox(
                    width: 10,
                  ),
                  Text("Search Your Destination",
                      style: TextStyle(color: Colors.grey, fontSize: 14)),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
