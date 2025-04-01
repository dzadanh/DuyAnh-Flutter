import 'package:flutter/material.dart';
import 'uses.dart';
import 'sanpham.dart';
import 'giohang.dart';

class Product{
  final String name;
  final double price;
  final String image;

  Product({required this.name, required this.price, required this.image});
}

List<Product> products = [
  Product(
    name: 'Laptop Lenovo Ideapad Slim 3 - 15IRH10 i7 13620H/16GB/512GB/15.3"FHD/Win11',
    price: 18.49,
    image: 'https://anphat.com.vn/media/product/46137_laptop_lenovo_ideapad_slim_3_14iah8_83eq0005vn__5_.jpg',
  ),
  Product(
    name: 'Macbook Air 13 M2 2024 8CPU/8GPU/16GB/256GB',
    price: 23.09,
    image: 'https://cdn2.fptshop.com.vn/unsafe/750x0/filters:quality(100)/macbook_air_13_m2_midnight_1_35053fbcf9.png',
  ),
  Product(
    name: 'MacBook Pro 14 M4 2024 10CPU/10GPU/16GB/512GB',
    price: 39.99,
    image: 'https://cdn2.fptshop.com.vn/unsafe/750x0/filters:quality(100)/macbook_pro_14_m4_space_black_1_8891ba3512.png',
  ),
  Product(
    name: 'MacBook Air 15 M3 2024 8CPU/10GPU/16GB/256GB',
    price: 30.59,
    image: 'https://cdn2.fptshop.com.vn/unsafe/750x0/filters:quality(100)/macbook_air_15_m3_starlight_1_6065e6fbae.png',
  ),
  Product(
    name: 'Laptop Acer Aspire Lite 15 AL15-41P-R3U5 R7 5700U/16GB/512GB/15.6"FHD/Win11',
    price: 12.99,
    image: 'https://cdn2.fptshop.com.vn/unsafe/750x0/filters:quality(100)/2022_3_7_637822560588852335_acer-aspire-3-a315-58-bac-1.jpg',
  ),
  Product(
    name: 'Laptop Dell Latitude L3540 i5 1235U/16GB/512GB/15.6" FHD/Win11',
    price: 16.99,
    image: 'https://anphat.com.vn/media/product/46137_laptop_lenovo_ideapad_slim_3_14iah8_83eq0005vn__5_.jpg',
  ),
  Product(
    name: 'Laptop Lenovo Ideapad Slim 3 - 15IRH10 i7 13620H/16GB/512GB/15.3"FHD/Win11',
    price: 18.49,
    image: 'https://anphat.com.vn/media/product/46137_laptop_lenovo_ideapad_slim_3_14iah8_83eq0005vn__5_.jpg',
  ),
  Product(
    name: 'Macbook Air 13 M2 2024 8CPU/8GPU/16GB/256GB',
    price: 23.09,
    image: 'https://cdn2.fptshop.com.vn/unsafe/750x0/filters:quality(100)/macbook_air_13_m2_midnight_1_35053fbcf9.png',
  )
];

class Laptop extends StatefulWidget{
  final List<Product> cart;
  Laptop({required this.cart});
  
  @override
  _LaptopState createState() => _LaptopState();
}

class _LaptopState extends State<Laptop>{
  
  void _addToCart(Product product){
    setState(() {
      widget.cart.add(product);
    });
  }

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
        Column(
          children: [
            Padding(
              padding: EdgeInsets.all(10),
              child: Row(
                children: [
                  IconButton(
                      onPressed: (){
                        Navigator.pop(context);
                      },
                      icon: Icon(Icons.home, size: 30, color: Colors.black,)
                  ),
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
                        ),
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
            Expanded(
              child: isListView
                  ? ListView.builder(
                  itemCount: products.length,
                  itemBuilder: (context,index){
                    final product = products[index];
                    return InkWell(
                      onTap: (){
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Sanpham(
                                  name: product.name,
                                  price: product.price,
                                  image: product.image,
                                )
                            ),
                        );
                      },
                      child: Card(
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
                                      product.image,
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
                                            product.name,
                                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                                          ),
                                        ),
                                        Text('Mua ngay với giá:', style: TextStyle(fontSize: 12, color: Colors.deepPurple),),
                                        Text('${product.price}0.000 ₫', style: TextStyle(fontWeight: FontWeight.bold),),
                                        Row(
                                          children: [
                                            SizedBox(width: 20,),
                                            Builder(
                                              builder: (context) => IconButton(
                                                  onPressed: () => _addToCart(product),
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
                  final product = products[index];
                  return InkWell(
                    onTap: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Sanpham(
                                name: product.name,
                                price: product.price,
                                image: product.image,
                            )
                          )
                      );
                    },
                    child: Container(
                      width: 200,
                      height: 350,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.white),
                      child: Stack(
                        children: [
                          Positioned(
                            top: 40,
                            child: Image.network(
                              product.image,
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
                              child: Text('${product.price}0.000 ₫', style: TextStyle(fontWeight: FontWeight.bold),),
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
                                    onPressed: () => _addToCart(product),
                                    icon: Icon(Icons.add_shopping_cart, color: Colors.blue,)
                                )
                            ),
                          ),
                          Positioned(
                            bottom: -10,
                            right: 10,
                            child: Builder(
                                builder: (context) => TextButton(
                                    onPressed: () => _addToCart(product),
                                    child: Text('Mua ngay ->', style: TextStyle(color: Colors.red),)
                                )
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        )
    );
  }
}
