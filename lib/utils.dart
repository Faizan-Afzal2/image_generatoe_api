import 'package:flutter/material.dart';

Color purple = Colors.purple;
Color yellow = Color.fromARGB(255, 223, 193, 45);
Color black = Color.fromARGB(255, 16, 16, 16);
Color white = Color.fromARGB(255, 243, 243, 243);
Color lgrey = Color.fromARGB(255, 198, 198, 198);
Color dgrey = Color.fromARGB(255, 151, 151, 151);
Color blue = Color.fromARGB(255, 34, 123, 159);

// double deviceHeight= MediaQuery
double deviceHeight = 100;
double deviceWidth = 1700;
SizedBox hspace= SizedBox(width: 10,);
SizedBox vspace= SizedBox(height: 10,);

class MyAppBar extends StatelessWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
        decoration: BoxDecoration(
            border:
                Border.symmetric(vertical: BorderSide(width: 1, color: black)),
            color: white,
            gradient: LinearGradient(colors: [purple,yellow])
            ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(Icons.menu,size: 30,color: white,weight: 900,),
            Text("Image Generator",
            style: TextStyle(
              color: white,
              fontSize: 28,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w500
            ),),
            Icon(Icons.settings,size: 26,color: white,),
            
          ],
        ));
  }
}

class MyTextField extends StatelessWidget {
  final String label;
  final String hint;
  final TextInputType type;
  final TextEditingController controller;
  final void Function(String)? onSubmit;

  MyTextField({
    required this.label,
    required this.hint,
    required this.type,
    required this.controller,
    this.onSubmit
  });

  @override
  Widget build(BuildContext context) {
    return  Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextField(
                            controller: controller,
                            keyboardType: type,
                            style: TextStyle(color: lgrey,
                            fontStyle: FontStyle.italic),
                            decoration: InputDecoration(
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: lgrey
                                    ), 
                                    // borderRadius: BorderRadius.circular(8)// Border color when focused
                              ),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: lgrey,
                                    ), // Border color when focused
                              ),
                              label: Text(label,
                              style: TextStyle(
                                color: lgrey,
                                fontSize: 16
                              ),),
                              hintText: hint,
                              hintStyle: TextStyle(
                                color: white
                                ,fontStyle: FontStyle.italic
                              ),
                              focusColor: lgrey,
                            ),
                            cursorColor: lgrey,
                            onSubmitted: onSubmit,
                          ),
                          
                        );
  }
}
