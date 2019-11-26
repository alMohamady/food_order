import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget {

  final heroTag;
  final foodName;
  final foodPrice;

  DetailsPage(this.heroTag, this.foodName, this.foodPrice);

  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Color(0xFF7A9BEE),
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.white,
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Text('Details',
              style: TextStyle(
              fontFamily: 'Montserrat',
              fontSize: 18.0,
              color: Colors.white
        ),
        ),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.more_horiz),
            onPressed: () {},
            color: Colors.white,
          )
        ],
      ),
      body: ListView(
        children: [
          Stack(
            children: <Widget>[
                 Container(
                   height: MediaQuery.of(context).size.height - 82,
                   width: MediaQuery.of(context).size.width,
                   color: Colors.transparent,
                 ),
                 Positioned (
                   top: 75.0,
                   child: Container(
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.only(
                         topLeft: Radius.circular(45.0),
                         topRight: Radius.circular(45.0)
                       ),
                       color: Colors.white,
                     ),
                     height: MediaQuery.of(context).size.height - 100,
                     width: MediaQuery.of(context).size.width,
                   )
                 ),
                 Positioned(
                   top: 30,
                   left: (MediaQuery.of(context).size.width / 2) - 100,
                   child: Hero(
                     tag: widget.heroTag,
                     child: Container(
                       decoration: BoxDecoration(
                         image: DecorationImage(
                           image: AssetImage(widget.heroTag),
                           fit: BoxFit.cover
                         )
                       ),
                     ),
                   ),
                   height: 200,
                   width: 200,
                 )
            ],
          )
        ]
      ),
    );
  }
}