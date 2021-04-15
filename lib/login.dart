import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login',
      theme: ThemeData(
        primarySwatch: colorCustom,
      ),
      home: MyHomePage(title: 'Login'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  TextEditingController passwordController = new TextEditingController();
  TextEditingController emailController = new TextEditingController();

  String contrasena;
  String getEmail;

  @override
  Widget build(BuildContext context) {

    return Container(

      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage('assets/images/Fondo_PS.jpg'),
        fit: BoxFit.cover
        )
      ),
      child: Scaffold(
        appBar: AppBar(

          title: Text(widget.title),
        ),                

          body: Container(
            child: Column(
              children: <Widget>[
                Container(

                  height: 250,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(''),
                      fit: BoxFit.fill
                    )
                  ),

                  child: Stack(
                    children: <Widget>[
                      Positioned(
                        child: Container(
                          margin: EdgeInsets.only(top: 10),
                          child: Center(
                            child: Text("Iniciar sesión", style: TextStyle(color: Colors.black38, fontSize: 35, fontWeight: FontWeight.bold))
                          )
                        )
                      )
                    ],
                  )
                ),
                Padding(
                  padding: EdgeInsets.all(30.0),
                  child: Column(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromRGBO(9, 69, 203, 0.2),
                              blurRadius: 20.0,
                              offset: Offset(0, 10)
                            )
                          ]
                        ),
                        child: Column(children: <Widget>[
                          Container(
                            padding: EdgeInsets.all(8.0),
                            decoration: BoxDecoration(
                              border: Border(bottom: BorderSide(color: Colors.blueAccent[700]))
                            ),
                            child: TextField(
                              controller: emailController,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Correo electrónico",
                                hintStyle: TextStyle(color: Colors.grey[400])
                              ),
                            )
                          ),
                          Container(
                            padding: EdgeInsets.all(8.0),
                            child: TextField(
                              controller: passwordController,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Contraseña",
                                hintStyle: TextStyle(color: Colors.grey[400]),
                                
                              ),
                              obscureText: true
                            )
                          )
                        ],)
                      ),
                      SizedBox(height: 30,),
                      Container(
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          gradient: LinearGradient(
                            colors: [
                              Color.fromRGBO(9, 62, 203, 1),
                              Color.fromRGBO(9, 62, 203, 1)
                            ]
                          )
                        
                        ),
                        child: RaisedButton(
                          color: colorCustomButton,
                          child: Center(
                          child: Text("iniciar sesión", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        onPressed: () {

                          contrasena = passwordController.text;
                          getEmail = emailController.text;

                          showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                              title: Text('Sus datos:'),
                              content: Text("Usuario:  $getEmail Contraseña: $contrasena "),
                              actions: <Widget>[
                                FlatButton(
                                  child: Text("Ok"),
                                  onPressed: () {
                                   
                                  }
                                )
                              ]
                            )
                          );

                        },
                        ),
                      ),
                      SizedBox(height: 70,)
                    ],
                  )

                )
              ],
            )
          ),

          floatingActionButton: Row(

            children:[
              SizedBox(width: 20),
                FloatingActionButton(
                onPressed: (){
                  Navigator.pop(context);
                },
              child: Icon(Icons.arrow_back),
              ),
            ]
            
          ), 



      ),
    );
  }
}

// Parameters custom desing for the application

MaterialColor colorCustom = MaterialColor(0xFFF05E64, color);
MaterialColor colorCustomBackground = MaterialColor(0xFFF9F6EF, color);
MaterialColor colorCustomButton = MaterialColor(0x926F68, color);



Map<int, Color> color =
{
50:Color.fromRGBO(240,94,100, .1),
100:Color.fromRGBO(240,94,100, .2),
200:Color.fromRGBO(240,94,100, .3),
300:Color.fromRGBO(240,94,100, .4),
400:Color.fromRGBO(240,94,100, .5),
500:Color.fromRGBO(240,94,100,.6),
600:Color.fromRGBO(240,94,100, .7),
700:Color.fromRGBO(240,94,100, .8),
800:Color.fromRGBO(240,94,100, .9),
900:Color.fromRGBO(240,94,100, 1),
};