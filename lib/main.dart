import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main () => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  MaterialApp(
      title: 'myapp',
      home: Scaffold(
        appBar:
        AppBar(
          title: Text('flutter is cool', textDirection: TextDirection.ltr),
          leading: Icon(
            Icons.headset
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.ac_unit),
              tooltip: 'hi!',
              onPressed: (){},
            ),
            IconButton(
              icon: Icon(Icons.camera),
              tooltip: 'bye!',
              onPressed: ()=>{},
            )
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          items:[
            BottomNavigationBarItem(
                icon:Icon(Icons.shopping_cart),
                title:Text('add',textDirection: TextDirection.ltr,),
                activeIcon: Icon(Icons.shopping_basket)
            ),
            BottomNavigationBarItem(
                icon:Icon(Icons.add_circle_outline),
                title:Text('add',textDirection: TextDirection.ltr,),
                activeIcon: Icon(Icons.add_circle)
            ),
            BottomNavigationBarItem(
                icon:Icon(Icons.mail_outline),
                title:Text('add',textDirection: TextDirection.ltr,),
                activeIcon: Icon(Icons.mail)
            )
          ]
        )
        ,
        body: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: <Widget>[
              Text('hello world!',
                textDirection: TextDirection.ltr,
              ),
              TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'please insert text',

                ),
              ),
              Checkbox(
                value: false,
                onChanged: (bool value){

                },
              ),
              Radio<int>(
                value: 0,
                groupValue: 0,
                onChanged: (_){

                },
              ),
              Switch(
                value: true,
                onChanged: (bool value){

                },
              ),
              ButtonBar(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  RaisedButton(
                    child: const Text(
                      'Raised',
                      textDirection: TextDirection.ltr,
                    ),
                    onPressed: (){

                    },
                  ),
                  RaisedButton(
                    child: const Text(
                      'Disabled',
                      textDirection: TextDirection.ltr,
                    ),
                    onPressed: null,
                  )
                ],
              ),
              ButtonBar(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  FlatButton(
                    child: const Text(
                      'Flat',
                      textDirection: TextDirection.ltr,
                    ),
                    onPressed: (){

                    },
                  ),
                  FlatButton(
                    child: const Text(
                      'Disabled',
                      textDirection: TextDirection.ltr,
                    ),
                    onPressed: null,
                  )
                ],
              ),
              ButtonBar(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  OutlineButton(
                    child: const Text(
                      'Flat',
                      textDirection: TextDirection.ltr,
                    ),
                    onPressed: (){

                    },
                  ),
                  OutlineButton(
                    child: const Text(
                      'Disabled',
                      textDirection: TextDirection.ltr,
                    ),
                    onPressed: null,
                  )
                ],
              )

            ],
          ),
        ),
      ),
    );
  }}
