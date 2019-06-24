import 'package:flutter/material.dart';


class BasicPage extends StatelessWidget {
  //const BasicPage({Key key}) : super(key: key);

  final titleStyle = TextStyle(
    fontSize: 20.0,
    fontWeight: FontWeight.bold
  );


  final subTitleStyle = TextStyle(
    fontSize: 18.0,
    color: Colors.grey
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            _createImage(),
            _createTitle(),
            _createActions(),
            _createText(),
            _createText(),
            _createText(),
            _createText(),

          ],
        ),

      )
    );
  }

  Widget _createTitle () {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Paisaje de arbol', style: titleStyle,),
                  SizedBox(height: 7.0),
                  Text('Lindo lugar', style: subTitleStyle,),
                ],
              ),
            ),
            Icon( Icons.star, color:Colors.red, size: 30.0, ),
            Text ('41', style: TextStyle(fontSize: 20.0),)
          ],
        ),
      ),
    );
  }

  Widget _createActions () {

    return Row (
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        _action(Icons.call, 'CALL'),
        _action(Icons.near_me, 'ROUTE'),
        _action(Icons.share, 'SHARE'),
      ],
    );
  }

  Widget _action ( IconData icon, String text) {

    return Column(
      children: <Widget>[
        Icon (icon, color: Colors.blue, size: 40.0,),
        SizedBox(height: 5.0,),
        Text (text, style: TextStyle( fontSize: 15.0, color: Colors.blue),)
      ],
    );
  }

  Widget _createText () {
    
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 40.0),
        child: Text (
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
          textAlign: TextAlign.justify,
        ),
      ),
    );

  }

  Widget _createImage() {

    return Container(
      width: double.infinity,
      child: Image(
        image: NetworkImage('https://images.unsplash.com/photo-1469827160215-9d29e96e72f4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80'),
        height: 250.0,
        fit: BoxFit.cover,
      ),
    );
  }


}