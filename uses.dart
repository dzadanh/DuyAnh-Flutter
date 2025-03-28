import 'package:flutter/material.dart';

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