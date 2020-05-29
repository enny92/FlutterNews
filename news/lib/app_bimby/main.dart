import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Card.dart';
import 'Actions.dart';


class BimbyHome extends StatefulWidget {
  BimbyHome({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _BimbyHomeState createState() => _BimbyHomeState();
}

class _BimbyHomeState extends State<BimbyHome> {
  double _bottomBarHeight = 40;

  @override
  Widget build(BuildContext context) {
    /*final bloc = Provider.of<BimbyBloc>(context, listen: false);*/
    return new Scaffold(
      /*appBar: AppBarBimby(
        title: widget.title,
        appBar: AppBar(automaticallyImplyLeading: false,),
        notifyParent: _refreshMenu,
      ),*/
      body: Stack(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(16),
            color: Colors.grey[300],
            child: Column(children: <Widget>[
              ContainerBimby(
                  Row(
                    children: <Widget>[
                      Text(
                        "Ciao ",
                        style: Theme.of(context).textTheme.headline1,
                      ),
                      Flexible(
                        child: Text(
                          "ilvana crollini :)".toUpperCase(),
                          style: Theme.of(context).textTheme.headline2,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      )
                    ],
                  ),
                  true),
              SizedBox(height: 10),
              Stack(children: <Widget>[
                ContainerBimby(
                    Row(
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "Lista clienti",
                              style: Theme.of(context).textTheme.headline4,
                            ),
                            Text(
                              "Accedi alla lista clienti, consulta i \n"
                                  "dettagli e crea la tua lista da lavorare.",
                              maxLines: 2,
                              style: Theme.of(context).textTheme.headline3,
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          "",
                          style: TextStyle(color: Colors.green, fontSize: 32),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                      ],
                    ),
                    true),
                Positioned(
                  right: 0,
                  bottom: 0,
                  top: 0,
                  child: GestureDetector(
                    /*onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ListaClienti(
                                title: "CLIENTI",
                              )));
                    },*/
                    child: Container(
                      padding: EdgeInsets.all(6),
                      color: Colors.green,
                      child: Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ])
            ]),
          ),
          AnimatedOpacity(
            opacity: 0.0,
            duration: Duration(milliseconds: 100),
            child: Container(
              height: 100,
              width: double.infinity,
              child: Column(
                children: <Widget>[
                  Container(
                    padding:
                    EdgeInsets.symmetric(vertical: 16.5, horizontal: 20),
                    height: 50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: Colors.white,
                          width: 1.0,
                        ),
                      ),
                    ),
                    child: InkWell(
                      child: Text(
                        "CLIENTI",
                        style: Theme.of(context).textTheme.subtitle1,
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Card(
                                )));
                      },
                    ),
                  ),
                  Container(
                    padding:
                    EdgeInsets.symmetric(vertical: 16.5, horizontal: 20),
                    height: 50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: Colors.white,
                          width: 1.0,
                        ),
                      ),
                    ),
                    child: InkWell(
                      child: Text(
                        "TORNA AL PORTALE",
                        style: Theme.of(context).textTheme.subtitle1,
                      ),
                    ),
                  )
                ],
              ),
              color: Colors.grey[200],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: AnimatedContainer(
            height: _bottomBarHeight,
            color: Theme.of(context).accentColor,
            duration: Duration(milliseconds: 500),
            child: GestureDetector(onTap: _changeHeight, child: _dynamicRow())),
      ),
    );
  }

  void _changeHeight() {
    var height = 40.0;
    if (_bottomBarHeight == 40) {
      height = 120.0;
    } else {
      height = 40.0;
    }
    setState(() {
      _bottomBarHeight = height;
    });
  }

  _refreshMenu() {
    setState(() {});
  }

  Widget _dynamicRow() {
    if (_bottomBarHeight == 40) {
      return Container(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: Row(children: <Widget>[
          Text(
            "Vorwerk Bimby ®",
            style: Theme.of(context).textTheme.headline5,
          ),
          Expanded(
            child: Container(),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                "Apri footer",
                style: TextStyle(color: Colors.white, fontSize: 12),
              ),
              Icon(
                Icons.keyboard_arrow_down,
                color: Colors.white,
              ),
            ],
          ),
        ]),
      );
    } else {
      return Container(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: Column(
          children: <Widget>[
            Row(children: <Widget>[
              Text(
                "Vorwerk Bimby ®",
                style: Theme.of(context).textTheme.headline5,
              ),
              Expanded(
                child: Container(),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Chiudi footer",
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  ),
                  Icon(
                    Icons.keyboard_arrow_up,
                    color: Colors.white,
                  ),
                ],
              ),
            ]),
            SizedBox(
              height: 8,
            ),
            Row(
              children: <Widget>[
                InkWell(
                  child: Text(
                    "Termini e condizioni",
                    style: Theme.of(context).textTheme.headline6,
                  ),
                ),
                Expanded(
                  child: Container(),
                ),
                Text(
                  "Social Media:",
                  style: Theme.of(context).textTheme.headline6,
                )
              ],
            ),
            SizedBox(
              height: 8,
            ),
            Row(
              children: <Widget>[
                InkWell(
                  child: Text(
                    "Bimby.it",
                    style: Theme.of(context).textTheme.headline6,
                  ),
                ),
                Expanded(
                  child: Container(),
                ),
                InkWell(
                  child: Text(
                    "",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                InkWell(
                  child: Text(
                    "",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                InkWell(
                  child: Text(
                    "",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                InkWell(
                  child: Text(
                    "",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                InkWell(
                  child: Text(
                    "",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 8,
            ),
            Row(
              children: <Widget>[
                InkWell(
                  child: Text(
                    "Cookidoo®",
                    style: Theme.of(context).textTheme.headline6,
                  ),
                ),
              ],
            )
          ],
        ),
      );
    }
  }
}

class ContainerBimby extends StatelessWidget {
  final Widget child;
  final bool padding;
  ContainerBimby(this.child, this.padding);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding ? EdgeInsets.all(16) : EdgeInsets.zero,
      decoration: new BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: Colors.grey[200],
          width: 1,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey[300],
            blurRadius: 1.0,
            spreadRadius: 2.0,
            offset: Offset(
              0.0, // horizontal, move right 10
              1.0, // vertical, move down 10
            ),
          )
        ],
        borderRadius: new BorderRadius.all(const Radius.circular(0.0)),
      ),
      child: child,
    );
  }
}





