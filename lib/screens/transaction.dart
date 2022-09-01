import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TransactionPage extends StatefulWidget {
 // TransactionPage({Key  key}) : super(key: key);

  @override
  State<TransactionPage> createState() => _TransactionPageState();
}

class _TransactionPageState extends State<TransactionPage> {
  TextEditingController taskController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          toolbarHeight: 62,
          backgroundColor:Colors.white,
          leading: IconButton(
            icon: Icon(
              Icons.chevron_left,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          title: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Text(
                  'EASY ',
                  style: TextStyle(
                        fontFamily: 'Inter',
                        color: Colors.black,
                        fontWeight: FontWeight.w800,
                      ),
                ),
                Text(
                  'CHEEZ',
                  style: TextStyle(
                        fontFamily: 'Inter',
                        color: Color(0xFFEA9700),
                        fontWeight: FontWeight.w800,
                      ),
                ),
              ],
            ),
          
          centerTitle: true,
        ),
        body: Stack(
          children: [
            Positioned(
              top: 90,
              child: Column(
                children:[
                  Container(
                  child:Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                      child: Text(
                        'Order Sent',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'Inter',
                              fontSize: 24,
                            ),
                      ),
                  ),
               ),   
                 Container(
                    width: MediaQuery.of(context).size.width * 1.01,
                            height: MediaQuery.of(context).size.height *0.3,
                        child: Image.asset(
                          'assets/images/cart.png',
                        ),
                      
                    ),
                 Row(
                   mainAxisSize: MainAxisSize.max,
                   crossAxisAlignment: CrossAxisAlignment.center,
                   children:[ 
                    Text(
                        'Order status  : ',
                        style: TextStyle(
                              fontFamily: 'Inter',
                              color: Colors.black,
                              fontSize: 12,
                              fontWeight: FontWeight.normal,
                            ),
                      ),
                    
                      Text(
                        'Pending',
                        style: TextStyle(
                              fontFamily: 'Inter',
                              color: Color(0xFFEA9700),
                              fontSize: 12,
                              fontWeight: FontWeight.normal,
                            ),
                      ),  
                  ],
                ),
                Padding(padding: EdgeInsetsDirectional.fromSTEB(0, 90, 0, 0),
                  child:Text(
                        'Your order has been successfully sent to nearby stores',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w500,
                            ),
                   ),  
              ),
              Row( 
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [  
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                        child:TextButton(
                          child: Text(
                            "Cancel Order",
                            style: TextStyle(fontSize: 14)
                          ),
                          style: ButtonStyle(
                            padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(25)),
                            foregroundColor: MaterialStateProperty.all<Color>(Colors.red),
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(40.0),
                                side: BorderSide(color: Colors.red)
                              )
                            )
                          ),
                          onPressed: () {
                            print('Cancel Button pressed');
                          }
                        ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 30, 0, 0),
                     child:TextButton(
                        child: Text(
                          "View Transaction",
                          style: TextStyle(fontSize: 14)
                        ),
                        style: ButtonStyle(
                          padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(25)),
                          foregroundColor: MaterialStateProperty.all<Color>(Colors.grey),
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40.0),
                              side: BorderSide(color: Colors.grey)
                            )
                          )
                        ),
                        onPressed: () {
                          print('View transaction Button pressed');
                        }
                      ),
                    ),  
                  ],
              ),
                 
                 
                
                ],
              ),   
            ),
             
          ],
        )
      );
  }
}