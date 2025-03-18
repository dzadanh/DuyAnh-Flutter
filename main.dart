import 'package:flutter/material.dart';

void main(){
  runApp(MyCode());
}

class MyCode extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            title: Center(
              child: Text(
                'vnExpress',
                style: TextStyle(
                  color: Colors.pinkAccent,
                  fontSize: 30,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
          ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 20, top: 7),
                    child: Icon(
                      Icons.home_filled,
                      size: 30,
                      color: Colors.red,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 20, top: 7),
                    child: Icon(
                      Icons.notifications,
                      size: 30,
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
              Padding(
                  padding: EdgeInsets.symmetric(vertical: 50, horizontal: 20),
                child: Container(
                  width: double.infinity,
                  height: 200,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Image.network(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQxqVQRoWhnAYlL-S-OxIIxav2tlPrbTTjoqw&s',
                          width: MediaQuery.of(context).size.width*0.3,
                          height: MediaQuery.of(context).size.width*0.3,
                          fit: BoxFit.cover
                        ),
                      ),
                      SizedBox(width: 10,),
                      Column(
                        children: [
                          Expanded(
                            flex: 2,
                            child: Center(
                              child: Container(
                              width: MediaQuery.of(context).size.width*0.5,
                              child: Text(
                                  'Ông Putin đồng ý ngừng tấn công hạ tầng năng lượng Ukraine trong 30 ngày',
                                maxLines: 3,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Center(
                              child: Container(
                                width: MediaQuery.of(context).size.width*0.5,
                                child: Builder(
                                  builder: (context) {
                                    return Center(
                                      child: TextButton(
                                          onPressed: () {
                                            print('pressed');
                                            ScaffoldMessenger
                                                .of(context)
                                                .showSnackBar(
                                                SnackBar(
                                                  content: Text(
                                                    'Ông Putin bày tỏ ủng hộ những đề xuất chấm dứt xung đột tại Ukraine, trong đó có ngững bắn 30 ngày, với điều kiện chúng phải hướng đến hoà bình lâu dài',
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                  backgroundColor: Colors.deepPurple,
                                                  duration: Duration(seconds: 7),
                                                )
                                            );
                                          },
                                          child: Text(
                                            'Xem thêm ->',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 17,
                                            ),
                                          )
                                      ),
                                    );
                                  }
                                ),
                              ),
                            ),
                          )
                        ]
                      )
                    ],
                  )
                ),
              ),

              Padding(
                padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
                child: Container(
                    width: double.infinity,
                    height: 200,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Image.network(
                              'https://bcp.cdnchinhphu.vn/334894974524682240/2024/3/25/1711359793890249-1711359840455149196147.jpg',
                              width: MediaQuery.of(context).size.width*0.3,
                              height: MediaQuery.of(context).size.width*0.3,
                              fit: BoxFit.cover
                          ),
                        ),
                        SizedBox(width: 10,),
                        Column(
                            children: [
                              Expanded(
                                flex: 2,
                                child: Center(
                                  child: Container(
                                    width: MediaQuery.of(context).size.width*0.5,
                                    child: Text(
                                      'Xây dựng đề án về doanh nghiệp công nghệ chiến lược',
                                      maxLines: 3,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Center(
                                  child: Container(
                                    width: MediaQuery.of(context).size.width*0.5,
                                    child: Builder(
                                        builder: (context) {
                                          return Center(
                                            child: TextButton(
                                                onPressed: () {
                                                  print('pressed');
                                                  ScaffoldMessenger
                                                      .of(context)
                                                      .showSnackBar(
                                                      SnackBar(
                                                        content: Text(
                                                          'Thủ tướng nhấn mạnh: "Làm có trọng tâm, trọng điểm, không dàn trải, không nửa vời, làm việc nào ra việc đó, làm việc nào dứt việc đó"',
                                                          style: TextStyle(
                                                            color: Colors.white,
                                                          ),
                                                        ),
                                                        backgroundColor: Colors.deepPurple,
                                                        duration: Duration(seconds: 7),
                                                      )
                                                  );
                                                },
                                                child: Text(
                                                  'Xem thêm ->',
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 17,
                                                  ),
                                                )
                                            ),
                                          );
                                        }
                                    ),
                                  ),
                                ),
                              )
                            ]
                        )
                      ],
                    )
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
