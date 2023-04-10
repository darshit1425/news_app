import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Tab_screen extends StatefulWidget {
  const Tab_screen({Key? key}) : super(key: key);

  @override
  State<Tab_screen> createState() => _Tab_screenState();
}

class _Tab_screenState extends State<Tab_screen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 6,
        child: SafeArea(
          child: Scaffold(
            backgroundColor: Colors.black,
            appBar: AppBar(
              centerTitle: false,
              // leading: Icon(Icons.search_outlined),
              actions: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(Icons.menu),
                ),
              ],

              elevation: 0,
              title: Text(
                "24/7 News",
                style: GoogleFonts.lato(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: Colors.white),
              ),
              bottom: TabBar(
                indicatorColor: Colors.white,
                isScrollable: true,
                // labelColor: Colors.black,

                tabs: [
                  Tab(
                    child: Text(
                      "TOP NEWS",
                      style: GoogleFonts.lato(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Tab(
                    child: Text(
                      "COUNTRY",
                      style: GoogleFonts.lato(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Tab(
                    child: Text(
                      "HEALTH",
                      style: GoogleFonts.lato(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Tab(
                    child: Text(
                      "BUSINESS",
                      style: GoogleFonts.lato(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Tab(
                    child: Text(
                      "ENTERTAINMENT",
                      style: GoogleFonts.lato(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Tab(
                    child: Text(
                      "SPORTS",
                      style: GoogleFonts.lato(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),  Tab(
                    child: Text(
                      "TECHNOLOGY",
                      style: GoogleFonts.lato(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
              // backgroundColor: Colors.deepPurple.shade300,
              backgroundColor: Color(0xff353535),
            ),
            body: TabBarView(
              children: [
                // Home_Screen(),
                // Shopping_Screen(),
                // Food_Screen(),
                // Education_Screen(),
                // Ott_Screen(),
                // Social_Screen(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
