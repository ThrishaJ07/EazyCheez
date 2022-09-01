import 'package:flutter/material.dart';
import 'package:pftask/view/addlist.dart';

import 'addlist.dart';

class HomePageWidget extends StatefulWidget {
  //const HomePageWidget({Key key}) : super(key: key);

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Color(0xFFFAFAFA),
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Text(
              'EASY',
              style: TextStyle(
                fontFamily: 'Inter',
                color: Color.fromARGB(255, 0, 0, 0),
                fontSize: 22,
                fontWeight: FontWeight.w800,
              ),
            ),
            Text(
              ' CHEEZ',
              style: TextStyle(
                fontFamily: 'Inter',
                color: Color(0xFFEA9700),
                fontWeight: FontWeight.w800,
              ),
            ),
          ],
        ),
        actions: [],
        centerTitle: false,
        elevation: 2,
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 4, 0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 56,
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(12, 20, 0, 0),
                      child: Text(
                        'Browse Categories',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontFamily: 'Inter',
                          color: Color(0xB3000000),
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(12, 0, 12, 0),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 222,
                      decoration: BoxDecoration(
                        color: Color(0xFFEEEEEE),
                      ),
                      child: Stack(
                        //mainAxisSize: MainAxisSize.max,
                        children: <Widget>[
                          Container(
                            width: MediaQuery.of(context).size.width,
                            height: 222,
                            decoration: BoxDecoration(
                              color: Color(0xFFEEEEEE),
                            ),
                            child: Image.asset(
                              'assets/images/grocery1.jpg',
                              width: 100,
                              height: 100,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Positioned(
                            bottom: 0,
                            child: InkWell(
                              onTap: () {
                                String value = "Grocery";
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        HomePage(value: value),
                                  ),
                                );
                              },
                              child: Container(
                                width: MediaQuery.of(context).size.width,
                                height: 50,
                                decoration: BoxDecoration(
                                  color: Color(0xFFEEEEEE).withOpacity(0.8),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Text(
                                    'Grocery',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontFamily: 'Inder',
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(12, 20, 12, 0),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 222,
                      decoration: BoxDecoration(
                        color: Color(0xFFEEEEEE),
                      ),
                      child: Stack(
                        //mainAxisSize: MainAxisSize.max,
                        children: <Widget>[
                          Container(
                            width: MediaQuery.of(context).size.width,
                            height: 222,
                            decoration: BoxDecoration(
                              color: Color(0xFFEEEEEE),
                            ),
                            child: Image.asset(
                              'assets/images/medical.jpg',
                              width: 100,
                              height: 100,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Positioned(
                            bottom: 0,
                            child: InkWell(
                              onTap: () {
                                String value = "Medical";
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        HomePage(value: value),
                                  ),
                                );
                              },
                              child: Container(
                                width: MediaQuery.of(context).size.width,
                                height: 50,
                                decoration: BoxDecoration(
                                  color: Color(0xFFEEEEEE).withOpacity(0.8),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Text(
                                    'Medical',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontFamily: 'Inder',
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(12, 20, 12, 0),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 222,
                      decoration: BoxDecoration(
                        color: Color(0xFFEEEEEE),
                      ),
                      child: Stack(
                        //mainAxisSize: MainAxisSize.max,
                        children: <Widget>[
                          Container(
                            width: MediaQuery.of(context).size.width,
                            height: 222,
                            decoration: BoxDecoration(
                              color: Color(0xFFEEEEEE),
                            ),
                            child: Image.asset(
                              'assets/images/labour.jpg',
                              width: 100,
                              height: 100,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Positioned(
                            bottom: 0,
                            child: InkWell(
                              onTap: () {
                                String value = "Labour";
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        HomePage(value: value),
                                  ),
                                );
                              },
                              child: Container(
                                width: MediaQuery.of(context).size.width,
                                height: 50,
                                decoration: BoxDecoration(
                                  color: Color(0xFFEEEEEE).withOpacity(0.8),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Text(
                                    'Lobour',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontFamily: 'Inder',
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(12, 20, 12, 0),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 222,
                      decoration: BoxDecoration(
                        color: Color(0xFFEEEEEE),
                      ),
                      child: Stack(
                        //mainAxisSize: MainAxisSize.max,
                        children: <Widget>[
                          Container(
                            width: MediaQuery.of(context).size.width,
                            height: 222,
                            decoration: BoxDecoration(
                              color: Color(0xFFEEEEEE),
                            ),
                            child: Image.asset(
                              'assets/images/restaurant.jpg',
                              width: 100,
                              height: 100,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Positioned(
                            bottom: 0,
                            child: InkWell(
                              onTap: () {
                                String value = "Restaurant";
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        HomePage(value: value),
                                  ),
                                );
                              },
                              child: Container(
                                width: MediaQuery.of(context).size.width,
                                height: 50,
                                decoration: BoxDecoration(
                                  color: Color(0xFFEEEEEE).withOpacity(0.8),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Text(
                                    'Restaurant',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontFamily: 'Inder',
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
