import 'package:flutter/material.dart';
import 'package:hello_world/t.dart';

void main(){
  runApp(MyApp());
}

class FavoriteButton extends StatefulWidget{
  @override
  _FavoriteButtonState createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton>{
  bool checkFav = false;
  @override
  Widget build(BuildContext context){
    return GestureDetector(
      onTap: (){
        setState(() {
          checkFav = !checkFav;
        });
      },
      child: Icon(
        checkFav ? Icons.favorite : Icons.favorite_border,
        color: checkFav ? Colors.red : Colors.black,
      ),
    );
  }
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyProduct(),
    );
  }
}

class MyProduct extends StatefulWidget{
  @override
  _MyProductState createState() => _MyProductState();
}

class _MyProductState extends State<MyProduct>{
  List<Map<String, String>> products = [
    {
      "name": 'Laptop Lenovo Ideapad Slim 3 - 15IRH10 i7 13620H/16GB/512GB/15.3"FHD/Win11',
      "price": '18.490.000 ₫',
      "image": 'https://anphat.com.vn/media/product/46137_laptop_lenovo_ideapad_slim_3_14iah8_83eq0005vn__5_.jpg',
    },
    {
      "name": 'Macbook Air 13 M2 2024 8CPU/8GPU/16GB/256GB',
      "price": '23.090.000 ₫',
      "image": 'https://cdn2.fptshop.com.vn/unsafe/750x0/filters:quality(100)/macbook_air_13_m2_midnight_1_35053fbcf9.png',
    },
    {
      "name": 'MacBook Pro 14 M4 2024 10CPU/10GPU/16GB/512GB',
      "price": '39.990.000 ₫',
      "image": 'https://cdn2.fptshop.com.vn/unsafe/750x0/filters:quality(100)/macbook_pro_14_m4_space_black_1_8891ba3512.png',
    },
    {
      "name": 'LMacBook Air 15 M3 2024 8CPU/10GPU/16GB/256GB',
      "price": '30.590.000 ₫',
      "image": 'https://cdn2.fptshop.com.vn/unsafe/750x0/filters:quality(100)/macbook_air_15_m3_starlight_1_6065e6fbae.png',
    },
    {
      "name": 'Laptop Acer Aspire Lite 15 AL15-41P-R3U5 R7 5700U/16GB/512GB/15.6"FHD/Win11',
      "price": '12.990.000 ₫',
      "image": 'https://cdn2.fptshop.com.vn/unsafe/750x0/filters:quality(100)/2022_3_7_637822560588852335_acer-aspire-3-a315-58-bac-1.jpg',
    },
    {
      "name": 'Laptop Dell Latitude L3540 i5 1235U/16GB/512GB/15.6" FHD/Win11',
      "price": '16.990.000 ₫',
      "image": 'https://cdn2.fptshop.com.vn/unsafe/750x0/filters:quality(100)/dell_latitude_15_3540_9950b79986.png',
    },
    {
      "name": 'Laptop Lenovo Ideapad Slim 3 - 15IRH10 i7 13620H/16GB/512GB/15.3"FHD/Win11',
      "price": '18.490.000 ₫',
      "image": 'https://anphat.com.vn/media/product/46137_laptop_lenovo_ideapad_slim_3_14iah8_83eq0005vn__5_.jpg',
    },
    {
      "name": 'Macbook Air 13 M2 2024 8CPU/8GPU/16GB/256GB',
      "price": '23.090.000 ₫',
      "image": 'https://cdn2.fptshop.com.vn/unsafe/750x0/filters:quality(100)/macbook_air_13_m2_midnight_1_35053fbcf9.png',
    },
    {
      "name": 'MacBook Pro 14 M4 2024 10CPU/10GPU/16GB/512GB',
      "price": '39.990.000 ₫',
      "image": 'https://cdn2.fptshop.com.vn/unsafe/750x0/filters:quality(100)/macbook_pro_14_m4_space_black_1_8891ba3512.png',
    },
  ];

  bool isListView = false;

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
        actions: [
          IconButton(
              onPressed: (){
                setState(() {
                  isListView = !isListView;
                });
              },
              icon: Icon(isListView ? Icons.list : Icons.grid_view, color: Colors.white,),
          )
        ],
      ),
      body:
      isListView
        ? ListView.builder(
          itemCount: products.length,
          itemBuilder: (context,index){
            return Card(
              margin: EdgeInsets.all(10),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              color: Colors.white,
              child: Stack(
                children:[
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(2),
                        child: Image.network(
                          products[index]["image"]!,
                          width: 180,
                          height: 150,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 5, right: 25),
                              child: Text(
                                products[index]["name"]!,
                                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                              ),
                            ),
                            Text('Mua ngay với giá:', style: TextStyle(fontSize: 12, color: Colors.deepPurple),),
                            Text(products[index]["price"]!, style: TextStyle(fontWeight: FontWeight.bold),),
                            Row(
                              children: [
                                SizedBox(width: 20,),
                                Builder(
                                  builder: (context) => IconButton(
                                      onPressed: (){
                                        ScaffoldMessenger.of(context).showSnackBar(
                                            SnackBar(
                                              content: Text('đã thêm vào giỏ hàng',),
                                              duration: Duration(seconds: 2),
                                            )
                                        );
                                      },
                                      icon: Icon(Icons.add_shopping_cart, color: Colors.blue,)
                                  ),
                                ),
                                SizedBox(width: 15,),
                                Builder(
                                    builder: (context) => ElevatedButton(
                                      onPressed: (){
                                        ScaffoldMessenger.of(context).showSnackBar(
                                            SnackBar(
                                              content: Text('đã thanh toán'),
                                              duration: Duration(seconds: 2),
                                            )
                                        );
                                      },
                                      style: ElevatedButton.styleFrom(
                                        padding: EdgeInsets.symmetric(horizontal: 10,),
                                        minimumSize: Size.zero,
                                        backgroundColor: Colors.red,
                                      ),
                                      child: Text('Mua ngay', style: TextStyle(color: Colors.white),),
                                    )
                                )
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  Positioned(
                    top: 5,
                    right: 5,
                    child: FavoriteButton(),
                  )
                ]
              ),
            );
          }
        )
          : GridView.builder(
        itemCount: products.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 5,
          mainAxisSpacing: 5,
        ),
        padding: EdgeInsets.all(10),
        itemBuilder: (context, index){
          return Container(
            width: 200,
            height: 350,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.white),
            child: Stack(
              children: [
                Positioned(
                  top: 40,
                  child: Image.network(
                    products[index]["image"]!,
                    width: 200,
                    height: 120,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  left: 5,
                  top: 5,
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 4, horizontal: 4),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: Colors.cyan.withOpacity(0.7),
                    ),
                    child: Text(products[index]["price"]!, style: TextStyle(fontWeight: FontWeight.bold),),
                  ),
                ),
                Positioned(
                  top: 5,
                  right: 5,
                  child: FavoriteButton(),
                ),
                Positioned(
                  bottom: -10,
                  left: 5,
                  child: Builder(
                      builder: (context) => IconButton(
                          onPressed: (){
                            ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text('đã thêm vào giỏ hàng'),
                                )
                            );
                          },
                          icon: Icon(Icons.add_shopping_cart, color: Colors.blue,)
                      )
                  ),
                ),
                Positioned(
                  bottom: -10,
                  right: 10,
                  child: Builder(
                      builder: (context) => TextButton(
                          onPressed: (){
                            ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text('đã thanh toán!'),
                                )
                            );
                          },
                          child: Text('Mua ngay ->', style: TextStyle(color: Colors.red),)
                      )
                  ),
                )
              ],
            ),
          );
        },
      )
    );
  }
}
