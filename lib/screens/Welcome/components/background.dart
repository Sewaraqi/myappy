import 'package:flutter/material.dart';
import '../../../constants.dart';

class Background extends StatelessWidget {
  final Widget child;
  const Background({Key? key, required this.child,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: double.infinity,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget> [
          Positioned(top:0 , left:0, child: Image.asset("assets/images/main_top.png",width:size.width*0.5),),
          // Positioned(top:0 , right:0, child: Image.asset("assets/images/test.jpg",width:size.width*0.5),),
          Positioned(bottom:0, right: 0, child: IconButton(iconSize:30.0, onPressed: (){print('clicked me');}, icon: Icon(Icons.phone),color: Colors.green,)),
          Positioned(bottom:0, left: 0, child:Image.asset("assets/images/main_bottom.png",width:size.width*0.35),), child,
        ],
      ),
    );
  }
}