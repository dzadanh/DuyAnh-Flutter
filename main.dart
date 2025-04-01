import 'package:flutter/material.dart';
import 'laptop.dart';
import 'giohang.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(cart: [],),
    );
  }
}

class HomeScreen extends StatefulWidget{
  final List<Product> cart;
  HomeScreen({required this.cart});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(
          title: Wrap(
            children: [
              Text(
                'F',
                style: TextStyle(fontWeight: FontWeight.bold, fontStyle: FontStyle.italic, color: Colors.blue),
              ),
              Text(
                'P',
                style: TextStyle(fontWeight: FontWeight.bold, fontStyle: FontStyle.italic, color: Colors.orange),
              ),
              Text(
                'T',
                style: TextStyle(fontWeight: FontWeight.bold, fontStyle: FontStyle.italic, color: Colors.green),
              ),
              SizedBox(width: 10,),
              Text(
                'Shop',
                style: TextStyle(fontSize: 17, color: Colors.white, fontWeight: FontWeight.bold),
              ),
              Baseline(
                baseline: 17, // Điều chỉnh vị trí xuống dưới
                baselineType: TextBaseline.alphabetic,
                child: Text(
                  '.com.vn',
                  style: TextStyle(fontSize: 12, color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          backgroundColor: Colors.red,
        ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(10),
            child: Row(
              children: [
                Icon(Icons.home, size: 30, color: Colors.black,),
                SizedBox(width: 70,),
                Icon(Icons.search, size: 30,),
                SizedBox(width: 30,),
                Container(
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Colors.black.withOpacity(0.7)),
                  padding: EdgeInsets.all(6),
                  child: Center(
                    child: Icon(Icons.person, color: Colors.white,),
                  ),
                ),
                SizedBox(width: 30,),
                ElevatedButton(
                    onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CartScreen(cart: widget.cart),
                        )
                    ),
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
                    child: Row(
                      children: [
                        Icon(Icons.shopping_cart, color: Colors.white,),
                        SizedBox(width: 5,),
                        Text('Giỏ hàng', style: TextStyle(color: Colors.white),)
                      ],
                    )
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: InkWell(
                onTap: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Laptop(cart: [],),
                      )
                  );
                },
                child: Container(
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.grey.shade300)
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Positioned(
                        left: 40,
                        child: Text('Laptop', style: TextStyle(fontSize: 30, color: Colors.black, fontWeight: FontWeight.bold),),
                      ),
                      SizedBox(width: 30,),
                      Image.network(
                        'https://i5.walmartimages.com/asr/1ba66cba-c16d-45b1-b051-536ddbc0ea94.f9c34f840f118549ad2fdbdfd931f3ae.jpeg',
                        width: 200,
                        height: 150,
                        fit: BoxFit.cover,
                      )
                    ],
                  ),
                )
            ),
          ),
          Row(
            children: [
              Padding(
                  padding: EdgeInsets.all(10),
                child: InkWell(
                    onTap: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Laptop(cart: [],),
                          )
                      );
                    },
                    child: Container(
                      padding: EdgeInsets.all(15),
                      width: 180,
                      height: 100,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.grey.shade300)
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Positioned(
                            left: 40,
                            child: Text('iPhone', style: TextStyle(fontSize: 15, color: Colors.black, fontWeight: FontWeight.bold),),
                          ),
                          SizedBox(width: 10,),
                          Image.network(
                            'https://cdn2.fptshop.com.vn/unsafe/750x0/filters:quality(100)/2023_9_20_638307989548944936_iphone-15-promax-xanh-1.jpg',
                            width: 70,
                            height: 80,
                            fit: BoxFit.cover,
                          )
                        ],
                      ),
                    )
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: InkWell(
                    onTap: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Laptop(cart: [],),
                          )
                      );
                    },
                    child: Container(
                      padding: EdgeInsets.all(15),
                      width: 180,
                      height: 100,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.grey.shade300)
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Positioned(
                            left: 40,
                            child: Text('Tủ lạnh', style: TextStyle(fontSize: 15, color: Colors.black, fontWeight: FontWeight.bold),),
                          ),
                          SizedBox(width: 10,),
                          Image.network(
                            'https://cdn2.fptshop.com.vn/unsafe/750x0/filters:quality(100)/2024_6_10_638536307431904817_casper-458-lit-rs-460pg-5.jpg',
                            width: 70,
                            height: 80,
                            fit: BoxFit.cover,
                          )
                        ],
                      ),
                    )
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: InkWell(
              onTap: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Laptop(cart: [],),
                    )
                );
              },
              child: Container(
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.grey.shade300)
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Positioned(
                      left: 40,
                      child: Text('Phụ kiện', style: TextStyle(fontSize: 30, color: Colors.black, fontWeight: FontWeight.bold),),
                    ),
                    SizedBox(width: 30,),
                    Image.network(
                      'https://cdn2.fptshop.com.vn/unsafe/640x0/filters:quality(100)/Phu_kien_41434d66e5.png',
                      width: 170,
                      height: 150,
                      fit: BoxFit.cover,
                    )
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: InkWell(
              onTap: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Laptop(cart: [],),
                    )
                );
              },
              child: Container(
                padding: EdgeInsets.all(15),
                width: 180,
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.grey.shade300)
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Positioned(
                      left: 40,
                      child: Text('SIM FPT', style: TextStyle(fontSize: 15, color: Colors.black, fontWeight: FontWeight.bold),),
                    ),
                    SizedBox(width: 10,),
                    Image.network(
                      'https://cdn2.fptshop.com.vn/unsafe/180x0/filters:quality(100)/sim_fpt_thumb_2_d50e064a42.png',
                      width: 70,
                      height: 80,
                      fit: BoxFit.cover,
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

//do tạo chi tiết từng sản phẩm mất hơi nhiều thời gian nên em dùng chung phần chi tiết các sản phẩm khác giống với laptop
