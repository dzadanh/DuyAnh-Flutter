import 'package:flutter/material.dart';
import 'laptop.dart';

class CartScreen extends StatefulWidget {
  final List<Product> cart;

  CartScreen({required this.cart});

  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  void _removeFromCart(int index) {
    setState(() {
      widget.cart.removeAt(index); // Xóa sản phẩm khỏi giỏ hàng
    });
  }

  @override
  Widget build(BuildContext context) {
    double totalPrice = widget.cart.fold(0, (sum, item) => sum + item.price);

    return Scaffold(
      appBar: AppBar(
        title: Text("Giỏ hàng"),
        backgroundColor: Colors.red,
      ),
      body: widget.cart.isEmpty
          ? Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Chưa có sản phẩm nào trong giỏ hàng', style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),),
              ElevatedButton(
                  onPressed: () => Navigator.pop(context),
                  child: Text('Mua hàng', style: TextStyle(color: Colors.white, fontSize: 17),),
                style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
              )
            ],
          )
      )
          : Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: widget.cart.length,
              itemBuilder: (context, index) {
                final product = widget.cart[index];
                return Card(
                  color: Colors.white,
                  child: ListTile(
                    leading: Image.network(product.image, width: 50),
                    title: Text(product.name),
                    subtitle: Text("${product.price}0.000 ₫", style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),),
                    trailing: IconButton(
                      icon: Icon(Icons.remove_circle),
                      onPressed: () => _removeFromCart(index),
                    ),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 20),
            child: Text(
              "Tổng tiền: ${totalPrice.toStringAsFixed(3)}.000 ₫",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 60),
            child: ElevatedButton(
                onPressed: (){},
                style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                child: Text('Xác nhận đơn', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),)
            ),
          )
        ],
      ),
    );
  }
}
