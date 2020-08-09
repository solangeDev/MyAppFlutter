import 'package:flutter/material.dart';

void main() => runApp(MiApp());

class MiApp extends StatelessWidget {
  const MiApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mi App',
      //widget que se va a mostrar (widget principal)
      home: Inicio(),
    );
  }
}

/// **** Widget Inicio ******/
///
class Inicio extends StatefulWidget {
  Inicio({Key key}) : super(key: key);

  @override
  _InicioState createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  @override
  //estructura de la pagina
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Mi App'),
        ),
        //Column y Row recibe un array de hijos
        //por defecto la columna toma todo el alto de la pantalla
        drawer: Container(
          width: 500.0,
          child: DrawerWidget(),
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [InputPassword(), InputText()],
        )
        /*Row(
          //alineacion como flex de los elementos
          mainAxisAlignment: MainAxisAlignment.center, //alinear eje princial
          crossAxisAlignment: CrossAxisAlignment.center, //eje secundario,
          //si no queremos que tome todo el alto de la pantalla si no el alto del contenido
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Container(
              //padding: EdgeInsets.all(5.0),
              //height: 50.0,
              //toma todo el ancho del width
              width: MediaQuery.of(context).size.width *
                  0.5, //medira la mitad de la pantalla,
              child: Text('Grilla 1', textAlign: TextAlign.center),
            ),
            RaisedButton(
              //cuando esta el onpresed null sera como un disabled
              onPressed: () => () {
                var t = DateTime.now();
                print(t);
              },
              child: Row(
                children: <Widget>[
                  Icon(Icons.accessibility_new),
                  Text("Nuevo Boton")
                ],
              ),
            ),
          ],
        )*/
        /*Center(
          child: RaisedButton(
            //cuando esta el onpresed null sera como un disabled
            onPressed: () => () {
              var t = DateTime.now();
              print(t);
            },
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Icon(Icons.accessibility_new),
                Text("Nuevo Boton")
              ],
            ),
          ),
        )*/
        );
  }
}

class InputPassword extends StatelessWidget {
  const InputPassword({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350.0,
      padding: EdgeInsets.all(5.0),
      child: TextField(
        obscureText: true,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: 'Password',
        ),
      ),
    );
  }
}

class InputText extends StatelessWidget {
  const InputText({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350.0,
      padding: EdgeInsets.all(5.0),
      child: TextField(
        obscureText: false,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: 'Name',
        ),
      ),
    );
  }
}

class Form extends StatelessWidget {
  const Form({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const <Widget>[InputText(), InputPassword()],
    );
  }
}

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: const <Widget>[
          InputText(),
          InputPassword(),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
          ),
        ],
      ),
    );
  }
}
