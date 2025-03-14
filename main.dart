import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.cyan,
            title: Center(
              child: Text(
                'Chào mừng đến với Flutter!',
                style: TextStyle(
                  fontSize: 27,
                ),
              ),
            ),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 50),
                child: Align(
                  alignment: Alignment.center,
                  child: Image.network(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSbSyENhI2KiFhVrTdQDpEkb1pLsKLT0s_PLg&s',
                    width: 400,
                    height: 300,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 40),
                child: Align(
                  alignment: Alignment.center,
                  child: Image.asset(
                    'assets/1.png',
                    width: 400,
                    height: 300,
                    fit: BoxFit.cover,
                  )
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 70),
                child: Align(
                  alignment: Alignment.center,
                  child: Builder(
                    builder: (context){
                      return Center(
                        child: ElevatedButton(
                            onPressed: (){
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(
                                    'Hello, this is Snackbar',
                                  ),
                                  duration: Duration(seconds: 2),
                                )
                              );
                            },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue
                          ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Nhấn vào đây',
                                  style: TextStyle(
                                    color: Colors.limeAccent,
                                    fontSize: 29,
                                  ),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Icon(
                                  Icons.arrow_forward,
                                  color: Colors.black,
                                  size: 40,
                                )
                              ],
                            ),
                        ),
                      );
                    },
                  ),
              )
              )
            ],
          ),
        )
    ),
  ));
}
