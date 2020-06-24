import 'package:flutter/material.dart';

class MyMaps extends StatefulWidget {
  @override
  _MyMapsState createState() => _MyMapsState();
}

class _MyMapsState extends State<MyMaps> {
  @override
  Widget build(BuildContext context) {
    Widget headerImageSection = Container(
      padding: const EdgeInsets.all(15),
      child: Image.network(
          'https://image.winudf.com/v2/image/Y29tLmFuZHJvbW8uZGV2NjYwNjE0LmFwcDcwNzYxN19zY3JlZW5fMl8xNTM0MTcxNDk1XzA4Mw/screen-2.jpg?fakeurl=1&type=.jpg'),
    );

    Widget titleSection = Container(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Text('Next, diagram each row. The first row,'),
                  Text('dasdsadsadsadsada'),
                ],
              ),
              Icon(Icons.star,
              color: Colors.red,),
              Text('58'),
            ],
          )
        ],
      ),
    );

    Widget buttonsSection = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: [
            IconButton(
              icon: Icon(Icons.call),
              onPressed: (){},
              color: Colors.blue,
            ),
            Text('CALL')
          ],
        ),
        Column(
          children: [
            IconButton(
              icon: Icon(Icons.near_me),
              onPressed: (){},
              color: Colors.blue,
            ),
            Text('ROUTE'),
          ],
        ),
        Column(
          children: [
            IconButton(
              icon: Icon(Icons.share),
              onPressed: (){},
              color: Colors.blue,
            ),
            Text('SHARE'),
          ],
        ),
      ],
    );
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Demo'),
      ),
      body: ListView(
        children: [
          Image(
            width: 600,
            height: 240,
            fit: BoxFit.cover,
            image: NetworkImage(
                'https://i.pinimg.com/originals/3e/52/9e/3e529e8f42dbb9946d2e85281533b2fe.jpg'),
          ),
          Container(padding: const EdgeInsets.all(10),child: titleSection),
          Container(padding: const EdgeInsets.all(10),child: buttonsSection),
          Container(padding: const EdgeInsets.all(10),
            child: Text('This guide then takes a step back to explain Flutter’s approach to layout, '
                'and shows how to place a single widget on the screen. '
                'After a discussion of how to lay widgets out horizontally and vertically, '
                'some of the most common layout widgets are coveredThis guide then takes a step back to explain Flutter’s approach to layout, '
                'and shows how to place a single widget on the screen. '
                'After a discussion of how to lay widgets out horizontally and vertically, '
                'some of the most common layout widgets are covered'),
          )
        ],
      ),
    );
  }
}
