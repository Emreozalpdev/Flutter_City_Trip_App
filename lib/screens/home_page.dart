import 'package:city_trip/utils.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:glass_kit/glass_kit.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appBarMethod(),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: helloTextMethod(),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: welcomeTextMethod(),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40.0),
                child: searchRow(),
              ),
              SizedBox(
                height: 80,
                child: filterRow(),
              ),
              categoriesTextRow(),
              SizedBox(
                height: 150,
                child: categoriesCardList(),
              ),
              SizedBox(
                height: 40.0,
                child: topDestinasiTextRow(),
              ),
              SizedBox(
                height: 250,
                child: topDestinasiCardList(),
              )
            ],
          ),
        ));
  }

  ListView topDestinasiCardList() {
    return ListView(scrollDirection: Axis.horizontal, children: [
      Padding(
        padding: const EdgeInsetsDirectional.all(8.0),
        child: Container(
          width: 240,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('assets/images/im1.jpg'),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 140.0),
            child: GlassContainer(
              child: ListTile(
                trailing: Icon(
                  Icons.favorite,
                  color: Colors.red,
                ),
                leading: Padding(
                  padding: const EdgeInsets.only(top: 25.0),
                  child: Icon(
                    Icons.fmd_good_sharp,
                    //size: 30,
                    color: Colors.black,
                  ),
                ),
                title: Text(
                  'Pantai Ubud',
                  style: GoogleFonts.kanit(fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  'Bali, Indonesia',
                  style: GoogleFonts.kanit(
                      fontWeight: FontWeight.bold, fontSize: 13.0),
                ),
              ),
              height: 70,
              width: 225,
              blur: 1,
              color: Color.fromARGB(255, 0, 255, 76),
              gradient: LinearGradient(
                colors: [
                  Colors.white.withOpacity(0.40),
                  Colors.white.withOpacity(0.10)
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderColor: Colors.purple,
              borderGradient: LinearGradient(
                colors: [
                  Colors.white.withOpacity(0.60),
                  Colors.white.withOpacity(0.10),
                  Colors.lightBlueAccent.withOpacity(0.05),
                  Colors.lightBlueAccent.withOpacity(0.6)
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                stops: [0.0, 0.39, 0.40, 1.0],
              ),
            ),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: 240,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/images/im2.jpg'),
              )),
          child: Padding(
            padding: const EdgeInsets.only(top: 140.0),
            child: GlassContainer(
              child: ListTile(
                trailing: Icon(
                  Icons.favorite,
                  color: Colors.red,
                ),
                leading: Padding(
                  padding: const EdgeInsets.only(top: 25.0),
                  child: Icon(
                    Icons.fmd_good_sharp,
                    //size: 30,
                    color: Colors.black,
                  ),
                ),
                title: Text(
                  'Gunung Fuji',
                  style: GoogleFonts.kanit(fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  'Nganjuk, Japan',
                  style: GoogleFonts.kanit(
                      fontWeight: FontWeight.bold, fontSize: 13.0),
                ),
              ),
              height: 70,
              width: 225,
              blur: 1,
              color: Color.fromARGB(255, 0, 255, 76),
              gradient: LinearGradient(
                colors: [
                  Colors.white.withOpacity(0.40),
                  Colors.white.withOpacity(0.10)
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderColor: Colors.purple,
              borderGradient: LinearGradient(
                colors: [
                  Colors.white.withOpacity(0.60),
                  Colors.white.withOpacity(0.10),
                  Colors.lightBlueAccent.withOpacity(0.05),
                  Colors.lightBlueAccent.withOpacity(0.6)
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                stops: [0.0, 0.39, 0.40, 1.0],
              ),
            ),
          ),
        ),
      ),
    ]);
  }

  Row topDestinasiTextRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Text("Top Destinasi",
              style: GoogleFonts.kanit(
                  fontSize: 20.0, fontWeight: FontWeight.bold)),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 10.0),
          child: Text("Lihat semua",
              style: GoogleFonts.kanit(fontSize: 10.0, color: Colors.black54)),
        )
      ],
    );
  }

  ListView categoriesCardList() {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: [
        Card(
          child: Container(
            width: 130,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/im1.jpg'),
                )),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                'Nouveautés',
                style: GoogleFonts.kanit(
                  color: Colors.black,
                ),
              ),
            ),
          ),
          margin: EdgeInsets.only(left: 20.0, right: 10.0, top: 5.0),
        ),
        Card(
          child: Container(
            width: 130,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/im6.jpg'),
                )),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                'Nouveautés',
                style: GoogleFonts.kanit(
                  color: Colors.black,
                ),
              ),
            ),
          ),
          margin: EdgeInsets.only(left: 10.0, right: 10.0, top: 5.0),
        ),
        Card(
          child: Container(
            width: 130,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/images/im3.jpg'),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                'Nouveautés',
                style: GoogleFonts.kanit(
                  color: Colors.black,
                ),
              ),
            ),
          ),
          margin: EdgeInsets.only(left: 10.0, right: 10.0, top: 5.0),
        ),
        Card(
          child: Container(
            width: 130,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/im2.jpg'),
                )),
            child: Padding(
              padding: EdgeInsetsDirectional.all(10.0),
              child: Text(
                'Nouveautés',
                style: GoogleFonts.kanit(
                  color: Colors.black,
                ),
              ),
            ),
          ),
          margin: EdgeInsets.only(left: 10.0, right: 20.0, top: 5.0),
        ),
      ],
    );
  }

  Row categoriesTextRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Text("Categories",
              style: GoogleFonts.kanit(
                  fontWeight: FontWeight.bold, fontSize: 20.0)),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 10.0),
          child: Text(
            "Lihat semua",
            style: GoogleFonts.kanit(fontSize: 10.0, color: Colors.black54),
          ),
        )
      ],
    );
  }

  Row filterRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ElevatedButton(
          onPressed: () {},
          child: Text(
            "All",
            style: TextStyle(color: Colors.black),
          ),
          style: ButtonStyle(
            elevation: MaterialStateProperty.resolveWith((states) => 0),
            backgroundColor:
                MaterialStateColor.resolveWith((states) => Colors.grey),
          ),
        ),
        ElevatedButton(
          style: ButtonStyle(
            elevation: MaterialStateProperty.resolveWith((states) => 0),
            backgroundColor:
                MaterialStateColor.resolveWith((states) => Colors.transparent),
          ),
          onPressed: () {},
          child: Text(
            "Nearby",
            style: TextStyle(color: Colors.grey[400]),
          ),
        ),
        ElevatedButton(
          onPressed: () {},
          child: Text(
            "Popular",
            style: TextStyle(color: Colors.grey[400]),
          ),
          style: ButtonStyle(
            elevation: MaterialStateProperty.resolveWith((states) => 0),
            backgroundColor:
                MaterialStateColor.resolveWith((states) => Colors.transparent),
          ),
        ),
        ElevatedButton(
          onPressed: () {},
          child: Text(
            "Best Deals",
            style: TextStyle(color: Colors.grey[400]),
          ),
          style: ButtonStyle(
            elevation: MaterialStateProperty.resolveWith((states) => 0),
            backgroundColor:
                MaterialStateColor.resolveWith((states) => Colors.transparent),
          ),
        ),
      ],
    );
  }

  Row searchRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SizedBox(
          width: 290.0,
          child: TextField(
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.search),
              hintText: hintText,
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(12.0)),
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: IconButton(
            onPressed: () {},
            icon: Icon(Icons.filter_list),
            color: Colors.white,
          ),
        ),
      ],
    );
  }

  Padding welcomeTextMethod() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: 60,
        child: Text(
          welcomeText,
          style: GoogleFonts.kanit(fontSize: 22.0, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  Padding helloTextMethod() {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, top: 2.0),
      child: SizedBox(
        height: 25,
        child: Text(
          helloText,
          style: GoogleFonts.uchen(
            fontSize: 18.0,
            color: Colors.black54,
          ),
        ),
      ),
    );
  }

  AppBar appBarMethod() {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      leading: appBarLeadingIcon(),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 8.0, top: 6.0),
          child: appBarrAvatar(),
        ),
      ],
    );
  }

  ClipRRect appBarrAvatar() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(25.0),
      child: Image.asset(
        'assets/images/avatar.png',
        height: 50.0,
        width: 50.0,
        fit: BoxFit.cover,
      ),
    );
  }

  IconButton appBarLeadingIcon() {
    return IconButton(
      onPressed: () {},
      icon: Icon(Icons.menu),
      color: Colors.black54,
    );
  }
}
