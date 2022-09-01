import 'dart:io';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart';
import 'package:pftask/screens/transaction.dart';
//import 'package:image_picker_example/widget/image_widget.dart';
import 'package:pftask/view/addTask.dart';
import 'package:pftask/view/transactionpage.dart';

class HomePage extends StatefulWidget {
  String value;
  HomePage({required this.value});
  @override
  State<HomePage> createState() => _HomePageState(value);
}

class _HomePageState extends State<HomePage> {
  String value;
  _HomePageState(this.value);
  File? image;
  Future pickImage() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.gallery);
      if (image == null) return;
      final imageTemp = File(image.path);
      //final imageperm = await saveImagePermanently(image.path);
      setState(() => this.image = imageTemp);
    } on PlatformException catch (e) {
      print("Failed to plan image:$e");
    }
  }

  Future pickImageC() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.camera);
      if (image == null) return;
      final imageTemp = File(image.path);
      //final imageperm = await saveImagePermanently(image.path);
      setState(() => this.image = imageTemp);
    } on PlatformException catch (e) {
      print("Failed to plan image:$e");
    }
  }

  // final List<String> tasks = [];

  // void addTask() {
  //   Padding(
  //     padding: const EdgeInsets.all(8.0),
  //     child: Container(
  //       height: 200,
  //       color: Colors.white,
  //     ),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              //passing this to our root
              Navigator.of(context).pop();
            },
          ),
          shadowColor: Colors.white,
          centerTitle: true,
          flexibleSpace: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage('images/download.jpg'),
              fit: BoxFit.fill,
            )),
          ),
        ),
        body: Stack(
          children: [
            Positioned(
              left: 0,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Text(
                    "Category >" + value,
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 50,
              child: image != null
                  ? Center(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(30, 20, 30, 50),
                        child: Container(
                            width: MediaQuery.of(context).size.width * 0.95,
                            height: MediaQuery.of(context).size.height * 0.3,
                            child: Image.file(image!)),
                      ),
                    )
                  : Column(
                      children: [
                        Container(
                            width: MediaQuery.of(context).size.width * 0.95,
                            height: MediaQuery.of(context).size.height * 0.3,
                            child: Image(
                              image: AssetImage("images/b2.png"),
                            )),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            child: Text(
                              "No List Yet",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          child: Text(
                            "start by creating one",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: 10,
                            ),
                          ),
                        )
                      ],
                    ),
            ),

            //   Navigator.push(
            // context,
            // MaterialPageRoute(
            //   builder: (context) => AddTask(cakeImage: image)(

            //   ),
            // ),
            //   ),
            // itemCount: tasks.length,
            // itemBuilder: (context, index) {
            //   // return Text(tasks[index]);
            //   return ListTile(
            //     title: Image.file(
            //       File('tasks[index]'),
            //     ),
            //   );
            // },

            Positioned(
              bottom: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Container(
                  //   height: 50,
                  //   width: MediaQuery.of(context).size.width * 0.76,
                  //   decoration: BoxDecoration(
                  //     border: Border.all(color: Colors.black, width: 2.0),
                  //     borderRadius: BorderRadius.circular(20),
                  //   ),
                  //   child: TextFormField(
                  //     controller: taskController,
                  //     decoration: const InputDecoration(
                  //       border: InputBorder.none,
                  //       hintText: "e.g. Add anything",
                  //       contentPadding: EdgeInsets.all(10.0),
                  //     ),
                  //   ),
                  // ),
                  InkWell(
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: Text(
                                'Choose option',
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    color: Colors.blue),
                              ),
                              content: SingleChildScrollView(
                                child: ListBody(
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        pickImageC();
                                      },
                                      splashColor: Colors.purpleAccent,
                                      child: Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Icon(
                                              Icons.camera,
                                              color: Colors.purpleAccent,
                                            ),
                                          ),
                                          Text('Camera',
                                              style: TextStyle(
                                                fontSize: 18,
                                                color: Colors.black,
                                                fontWeight: FontWeight.w500,
                                              ))
                                        ],
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () {
                                        pickImage();
                                      },
                                      splashColor: Colors.purpleAccent,
                                      child: Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Icon(
                                              Icons.image,
                                              color: Colors.purpleAccent,
                                            ),
                                          ),
                                          Text('Gallery',
                                              style: TextStyle(
                                                fontSize: 18,
                                                color: Colors.black,
                                                fontWeight: FontWeight.w500,
                                              ))
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            );
                          });
                    },
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.12,
                      width: MediaQuery.of(context).size.width * 0.50,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(20, 10, 20, 30),
                        child: Icon(
                          Icons.camera_enhance_rounded,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),

                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            var transactionPage2 = TransactionPage;
                            var transactionPage = transactionPage2;
                            return TransactionPage();
                          },
                        ),
                      );
                    },
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.12,
                      width: MediaQuery.of(context).size.width * 0.50,

                      decoration: BoxDecoration(
                        color: Colors.grey,
                      ),
                      // child: Column(
                      //   children: [
                      //     Padding(
                      //       padding: EdgeInsets.fromLTRB(20, 10, 20, 30),
                      //       child:Icon(
                      //           Icons.shopping_bag_rounded,
                      //           color: Colors.white,
                      //         ),

                      // ),

                      // RichText(
                      //     text: TextSpan(children: [
                      //   WidgetSpan(
                      //       child: Icon(
                      //     Icons.shopping_bag_rounded,
                      //     color: Colors.white,
                      //   )),
                      //   TextSpan(
                      //       text: "Take a photo",
                      //       style: TextStyle(
                      //         color: Colors.white,
                      //       ))
                      // ])),

                      //   ],
                      // ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(20, 10, 20, 30),
                        child: Icon(
                          Icons.shopping_bag_rounded,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ));
  }
}

// Future<File> saveImagePermanently(String imagepath) async {
//   final directory = await getApplicationDocumentsDirectory();
//   final name = basename(imagepath);
//   final image = File('${directory.path}/$name');
//   return File(imagepath).copy(image.path);
// }
