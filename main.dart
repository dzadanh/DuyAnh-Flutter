import 'package:flutter/material.dart';
import 'package:hello_world/test.dart';

void main(){
  runApp(MyHomePage());
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

class MyHomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
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
        body: ListView(
          children: [
            Card(
              margin: EdgeInsets.all(10),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              color: Colors.white,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    behavior: HitTestBehavior.translucent,
                    onTap: (){
                      showDialog(
                          context: context,
                          builder: (context) => Dialog(
                            backgroundColor: Colors.transparent,
                            child: InteractiveViewer(
                              child: Image.network(
                                'https://anphat.com.vn/media/product/46137_laptop_lenovo_ideapad_slim_3_14iah8_83eq0005vn__5_.jpg',
                                fit: BoxFit.contain,
                              ),
                            )
                          )
                      );
                    },
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(2),
                      child: Image.network(
                        'https://anphat.com.vn/media/product/46137_laptop_lenovo_ideapad_slim_3_14iah8_83eq0005vn__5_.jpg',
                        width: 180,
                        height: 150,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.all(5),
                          child: Text(
                            'Laptop Lenovo Ideapad Slim 3 - 15IRH10 i7 13620H/16GB/512GB/15.3"FHD/Win11',
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(2),
                          child: Text(
                            'No.00915514 | 0 đánh giá | 0 bình luận',
                            style: TextStyle(fontSize: 7),
                          ),
                        ),
                        Text('Mua ngay với giá:', style: TextStyle(fontSize: 10, color: Colors.deepPurple),),
                        Text('18.490.000 ₫', style: TextStyle(fontWeight: FontWeight.bold),),
                        Row(
                          children: [
                            FavoriteButton(),
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
            ),
            Card(
              margin: EdgeInsets.all(10),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              color: Colors.white,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(2),
                    child: Image.network(
                      'https://cdn2.fptshop.com.vn/unsafe/750x0/filters:quality(100)/macbook_air_13_m3_midnight_1_368063bb53.png',
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
                          padding: EdgeInsets.all(5),
                          child: Text(
                            'MacBook Air 13 M3 2024 8CPU/8GPU/16GB/256GB',
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(2),
                          child: Text(
                            'No.00912977 | 0 đánh giá | 0 bình luận',
                            style: TextStyle(fontSize: 7),
                          ),
                        ),
                        Text('Mua ngay với giá:', style: TextStyle(fontSize: 10, color: Colors.deepPurple),),
                        Text('26.090.000 ₫', style: TextStyle(fontWeight: FontWeight.bold),),
                        Row(
                          children: [
                            FavoriteButton(),
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
            ),
            Card(
              margin: EdgeInsets.all(10),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              color: Colors.white,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(2),
                    child: Image.network(
                      'https://cdn2.fptshop.com.vn/unsafe/750x0/filters:quality(100)/macbook_air_13_m2_midnight_1_35053fbcf9.png',
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
                          padding: EdgeInsets.all(5),
                          child: Text(
                            'Macbook Air 13 M2 2024 8CPU/8GPU/16GB/256GB',
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(2),
                          child: Text(
                            'No.00912970 | 0 đánh giá | 0 bình luận',
                            style: TextStyle(fontSize: 7),
                          ),
                        ),
                        Text('Mua ngay với giá:', style: TextStyle(fontSize: 10, color: Colors.deepPurple),),
                        Text('23.090.000 ₫', style: TextStyle(fontWeight: FontWeight.bold),),
                        Row(
                          children: [
                            FavoriteButton(),
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
            ),
            Card(
              margin: EdgeInsets.all(10),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              color: Colors.white,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(2),
                    child: Image.network(
                      'https://cdn2.fptshop.com.vn/unsafe/750x0/filters:quality(100)/macbook_pro_14_m4_space_black_1_8891ba3512.png',
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
                          padding: EdgeInsets.all(5),
                          child: Text(
                            'MacBook Pro 14 M4 2024 10CPU/10GPU/16GB/512GB',
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(2),
                          child: Text(
                            'No.00912940 | 0 đánh giá | 0 bình luận',
                            style: TextStyle(fontSize: 7),
                          ),
                        ),
                        Text('Mua ngay với giá:', style: TextStyle(fontSize: 10, color: Colors.deepPurple),),
                        Text('39.990.000 ₫', style: TextStyle(fontWeight: FontWeight.bold),),
                        Row(
                          children: [
                            FavoriteButton(),
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
            ),
            Card(
              margin: EdgeInsets.all(10),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              color: Colors.white,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(2),
                    child: Image.network(
                      'https://cdn2.fptshop.com.vn/unsafe/750x0/filters:quality(100)/macbook_air_15_m3_starlight_1_6065e6fbae.png',
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
                          padding: EdgeInsets.all(5),
                          child: Text(
                            'MacBook Air 15 M3 2024 8CPU/10GPU/16GB/256GB',
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(2),
                          child: Text(
                            'No.00912951 | 0 đánh giá | 0 bình luận',
                            style: TextStyle(fontSize: 7),
                          ),
                        ),
                        Text('Mua ngay với giá:', style: TextStyle(fontSize: 10, color: Colors.deepPurple),),
                        Text('30.590.000 ₫', style: TextStyle(fontWeight: FontWeight.bold),),
                        Row(
                          children: [
                            FavoriteButton(),
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
            ),
            Card(
              margin: EdgeInsets.all(10),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              color: Colors.white,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(2),
                    child: Image.network(
                      'https://cdn2.fptshop.com.vn/unsafe/750x0/filters:quality(100)/Acer_Aspire_Lite_15_AL_15_bac_1_6ed4b0867d.jpg',
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
                          padding: EdgeInsets.all(5),
                          child: Text(
                            'Laptop Acer Aspire Lite 15 AL15-41P-R3U5 R7 5700U/16GB/512GB/15.6"FHD/Win11',
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(2),
                          child: Text(
                            'No.00916544 | 0 đánh giá | 0 bình luận',
                            style: TextStyle(fontSize: 7),
                          ),
                        ),
                        Text('Mua ngay với giá:', style: TextStyle(fontSize: 10, color: Colors.deepPurple),),
                        Text('12.990.000 ₫', style: TextStyle(fontWeight: FontWeight.bold),),
                        Row(
                          children: [
                            FavoriteButton(),
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
            ),
            Card(
              margin: EdgeInsets.all(10),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              color: Colors.white,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(2),
                    child: Image.network(
                      'https://cdn2.fptshop.com.vn/unsafe/750x0/filters:quality(100)/dell_latitude_15_3540_9950b79986.png',
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
                          padding: EdgeInsets.all(5),
                          child: Text(
                            'Laptop Dell Latitude L3540 i5 1235U/16GB/512GB/15.6" FHD/Win11',
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(2),
                          child: Text(
                            'No.00912484 | 0 đánh giá | 0 bình luận',
                            style: TextStyle(fontSize: 7),
                          ),
                        ),
                        Text('Mua ngay với giá:', style: TextStyle(fontSize: 10, color: Colors.deepPurple),),
                        Text('16.990.000 ₫', style: TextStyle(fontWeight: FontWeight.bold),),
                        Row(
                          children: [
                            FavoriteButton(),
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
            ),
            GridView.count(
              crossAxisCount: 2,
              crossAxisSpacing: 5,
              mainAxisSpacing: 2,
              shrinkWrap: true, // Cho phép GridView tự động co giãn theo nội dung
              physics: NeverScrollableScrollPhysics(),
              padding: EdgeInsets.all(10),
              children: [
                Container(
                  width: 200,
                  height: 300,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
                  child: Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(2),
                        child: Image.network(
                          'https://anphat.com.vn/media/product/46137_laptop_lenovo_ideapad_slim_3_14iah8_83eq0005vn__5_.jpg',
                          width: 200,
                          height: 180,
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
                          child: Text('18.490.000 ₫', style: TextStyle(fontWeight: FontWeight.bold),),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 150, left: 10),
                        child: FavoriteButton()
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 140, left: 40),
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
                      Container(
                        padding: EdgeInsets.only(top: 140, left: 80),
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
                ),
                Container(
                  width: 200,
                  height: 300,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
                  child: Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(2),
                        child: Image.network(
                          'https://cdn2.fptshop.com.vn/unsafe/750x0/filters:quality(100)/macbook_air_13_m3_midnight_1_368063bb53.png',
                          width: 200,
                          height: 180,
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
                          child: Text('26.090.000 ₫', style: TextStyle(fontWeight: FontWeight.bold),),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 150, left: 10),
                        child: FavoriteButton(),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 140, left: 40),
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
                      Container(
                        padding: EdgeInsets.only(top: 140, left: 80),
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
                ),
                Container(
                  width: 200,
                  height: 300,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
                  child: Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(2),
                        child: Image.network(
                          'https://cdn2.fptshop.com.vn/unsafe/750x0/filters:quality(100)/macbook_air_13_m2_midnight_1_35053fbcf9.png',
                          width: 200,
                          height: 180,
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
                          child: Text('23.090.000 ₫', style: TextStyle(fontWeight: FontWeight.bold),),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 150, left: 10),
                        child: FavoriteButton(),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 140, left: 40),
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
                      Container(
                        padding: EdgeInsets.only(top: 140, left: 80),
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
                ),
                Container(
                  width: 200,
                  height: 300,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
                  child: Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(2),
                        child: Image.network(
                          'https://cdn2.fptshop.com.vn/unsafe/750x0/filters:quality(100)/macbook_pro_14_m4_space_black_1_8891ba3512.png',
                          width: 200,
                          height: 180,
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
                          child: Text('39.990.000 ₫', style: TextStyle(fontWeight: FontWeight.bold),),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 150, left: 10),
                        child: FavoriteButton(),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 140, left: 40),
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
                      Container(
                        padding: EdgeInsets.only(top: 140, left: 80),
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
                ),
                Container(
                  width: 200,
                  height: 300,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
                  child: Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(2),
                        child: Image.network(
                          'https://cdn2.fptshop.com.vn/unsafe/750x0/filters:quality(100)/macbook_air_15_m3_starlight_1_6065e6fbae.png',
                          width: 200,
                          height: 180,
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
                          child: Text('30.590.000 ₫', style: TextStyle(fontWeight: FontWeight.bold),),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 150, left: 10),
                        child: FavoriteButton(),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 140, left: 40),
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
                      Container(
                        padding: EdgeInsets.only(top: 140, left: 80),
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
                ),
                Container(
                  width: 200,
                  height: 300,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
                  child: Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(2),
                        child: Image.network(
                          'https://cdn2.fptshop.com.vn/unsafe/750x0/filters:quality(100)/Acer_Aspire_Lite_15_AL_15_bac_1_6ed4b0867d.jpg',
                          width: 200,
                          height: 180,
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
                          child: Text('12.990.000 ₫', style: TextStyle(fontWeight: FontWeight.bold),),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 155, left: 10),
                        child: FavoriteButton(),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 145, left: 40),
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
                      Container(
                        padding: EdgeInsets.only(top: 145, left: 80),
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
                )
              ],
            )
          ],
        )
      ),
    );
  }
}
