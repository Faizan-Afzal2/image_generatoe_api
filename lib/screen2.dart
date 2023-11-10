// import 'package:http/http.dart' as http;
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:image_generatoe_api/utils.dart';

class Screen extends StatefulWidget {
  const Screen({super.key});

  @override
  State<Screen> createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  TextEditingController text = TextEditingController();
  TextEditingController height = TextEditingController();
  TextEditingController width = TextEditingController();
  Image? image;
  bool isLoading=false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: black,
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(60),
          child: MyAppBar(),
        ),
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.all(10),
            child: Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                Center(
                  child: Container(
                    height: 400,
                    width: 310,
                    decoration: BoxDecoration(
                        // border: Border.all(width: 1, color: purple),
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                    child: Column(
                      children: [
                        MyTextField(
                          label: "Text",
                          hint: "Enter custom text for image",
                          type: TextInputType.text,
                          controller: text,
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        MyTextField(
                          label: "Height",
                          hint: "Enter custom height for image",
                          type: TextInputType.number,
                          controller: height,
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        MyTextField(
                          label: "width",
                          hint: "Enter custom width for image",
                          type: TextInputType.number,
                          controller: width,
                        ),
                        vspace,
                        vspace,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                isLoading=true;
                                setState(() {
                                  
                                });
                                 _getImage();
                                 },
                              style: ButtonStyle(
                                backgroundColor: MaterialStatePropertyAll(purple),
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                  ),
                                ),
                                padding:
                                    MaterialStateProperty.all(EdgeInsets.all(10)),
                                overlayColor: MaterialStateProperty.resolveWith(
                                  (states) {
                                    return states.contains(MaterialState.pressed)
                                        ? yellow
                                        : null;
                                  },
                                ),
                                 animationDuration: Duration(milliseconds: 10000)
                              ),
                              // style: ElevatedButton.styleFrom(
                              //   onPrimary: Colors.yellow,
                              // ),
                              // color: Colors.transparent,

                              child: Container(
                                width: 110,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Generate",
                                      style: TextStyle(
                                          color: white,
                                          fontSize: 20,
                                          fontStyle: FontStyle.italic),
                                    ),
                                    hspace,
                                    Icon(
                                      Icons.arrow_forward_ios_rounded,
                                      size: 15,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            
                            // IconButton(onPressed: (){}, icon: Icon(Icons.restart_alt,
                            // color: white,))
                            ElevatedButton(
                              onPressed: () => _resetAll(),
                              style: ButtonStyle(
                                backgroundColor: MaterialStatePropertyAll(purple),
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                  ),
                                ),
                                padding:
                                    MaterialStateProperty.all(EdgeInsets.all(10)),
                                overlayColor: MaterialStateProperty.resolveWith(
                                  (states) {
                                    return states.contains(MaterialState.pressed)
                                        ? yellow
                                        : null;
                                  },
                                ),
                                 animationDuration: Duration(milliseconds: 10000)
                              ),
                              // style: ElevatedButton.styleFrom(
                              //   onPrimary: Colors.yellow,
                              // ),
                              // color: Colors.transparent,

                              child: Container(  
                                width: 110,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Reset",
                                      style: TextStyle(
                                          color: white,
                                          fontSize: 20,
                                          fontStyle: FontStyle.italic),
                                    ),
                                    hspace,
                                    Icon(
                                      Icons.restore,
                                      size: 15,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            
                          ],
                        )

                      ],
                    ),
                  ),
                ),
                //  imageUrl!=null? Image.memory(): Container()
                image!=null? image!: Container(child: Text("Click generate to get an image",
                style: TextStyle(
                  color: white,fontStyle:
                  FontStyle.italic,
                ),),),
                isLoading? CircularProgressIndicator(backgroundColor: purple,color: yellow,): Container()
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future _getImage()async {
    // var url = Uri.parse("https://hub.dummyapis.com/image?text=${text.text}&height=${height.text}&width=${width.text}");
    // final response = await http.get(url);
    // imageUrl = response.body;
    // setState(() {
      
    // });
    image=Image.network("https://hub.dummyapis.com/image?text=${text.text}&height=${width.text}&width=${height.text}");
    setState(() {
      
    });
  }
  void _resetAll(){
    height.clear();
    width.clear();
    text.clear();
    image=null;
    setState(() {
      
    });
  }
}
