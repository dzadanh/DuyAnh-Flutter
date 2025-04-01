import 'package:flutter/material.dart';

class Sanpham extends StatelessWidget{
  final String name;
  final double price;
  final String image;

  Sanpham({required this.name, required this.price, required this.image});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Chi tiết sản phẩm'),
        backgroundColor: Colors.red,
        leading: IconButton(
            onPressed: (){
              showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    backgroundColor: Colors.white,
                    title: Text('Bạn muốn quay lại?'),
                    actions: [
                      TextButton(
                          onPressed: (){
                            Navigator.pop(context);
                          },
                          child: Text('Không', style: TextStyle(fontSize: 19),),
                      ),
                      TextButton(
                          onPressed: (){
                            Navigator.pop(context);
                            Navigator.pop(context);
                          },
                          child: Text('Có', style: TextStyle(fontSize: 19),),
                      )
                    ],
                  )
              );
            },
            icon: Icon(Icons.arrow_back, size: 27,),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Text(
              name,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20,),
            Image.network(
              image,
              width: 600,
              height: 400,
            ),
            SizedBox(height: 40,),
            Row(
              children: [
                Text('Mua ngay với giá:', style: TextStyle(color: Colors.grey[600], fontSize: 20),),
                SizedBox(width: 5,),
                Text('${price} ₫', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),)
              ],
            ),
          ],
        ),
      ),
    );
  }
}