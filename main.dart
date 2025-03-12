import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
              backgroundColor: Colors.cyan,
            title: Center(
                child: Text('About Flutter')
            )
          ),
            body: Stack(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 50, top: 50),
                  child: Text(
                    'Flutter & Dart',
                    style: TextStyle(
                      fontSize: 40  ,
                      color: Colors.blue,
                    ),
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(left: 10, top: 120),
                  child: Text(
                    'Flutter là một SDK phát triển ứng dụng di động nguồn mở được tạo ra bởi Google. Nó được sử dụng để phát triển ứng ứng dụng cho Android và iOS. Ứng dụng Flutter được viết bằng ngôn ngữ Dart và tận dụng nhiều tính năng nâng cao của ngôn ngữ này.',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(left: 150, top: 680),
                  child: ElevatedButton(
                      onPressed: (){},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue
                    ),
                    child: Text(
                        'press this button',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(left: 800, top: 50),
                  child: IconButton(
                      onPressed: (){},
                      icon: Icon(Icons.find_replace_rounded),
                    color: Colors.blue,
                    iconSize: 40,

                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 80, top: 330),
                  child: Image.network(
                    'https://cdn.prod.website-files.com/654366841809b5be271c8358/659efd7c0732620f1ac6a1d6_why_flutter_is_the_future_of_app_development%20(1).webp',
                    width: 300,
                    height: 230,
                    fit: BoxFit.cover,
                  ),
                )
              ],
            ),
          )
        )
    )
  );
}
