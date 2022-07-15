import "package:flutter/material.dart";

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.blue,
          elevation: 10,
          title: Center(
              child: Container(
            width: 200,
            color: Colors.red,
            child: Text(
              "BIT APP",
              style: TextStyle(fontSize: 16, color: Colors.yellow),
              textAlign: TextAlign.left,
            ),
          )),
          leading: Icon(
            Icons.home,
            color: Colors.deepOrange,
            size: 30,
          ),
          actions: [
            Icon(
              Icons.home,
              color: Colors.deepOrange,
              size: 30,
            ),
            Icon(
              Icons.home,
              color: Colors.deepOrange,
              size: 30,
            ),
          ],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 100,
            ),
            Text(
              "HELLO DEVELOPERS",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
            SizedBox(height: 50),
            form(context, "name:"),
            form(context, "password:"),
            SizedBox(height: 60),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    color: Colors.deepPurple,
                    borderRadius: BorderRadius.circular(12)),
                child: Center(
                  child: Text(
                    'SIGN IN',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Not a member?',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Register',
              style: TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              '_________________________________________',
              style: TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.bold,
              ),
            ),
            Container(
                color: Colors.pink,
                height: 68,
                width: MediaQuery.of(context).size.width,
              child:Column(
                children:[Expanded(
                  flex:1,
                  child:Row(
                      children: [
                        Expanded(
                          flex:1,
                          child:Container(
                            color: Colors.yellow,
                            alignment: Alignment.center,
                            child: Text("box2"),
                          ),),
                        Expanded(
                          flex:1,
                          child:Container(
                            color: Colors.lightGreen,
                            alignment: Alignment.center,
                            child: Text("box3"),
                          ),),

                      ]

                  )


              ),Expanded(child:Container(
                  color: Colors.pink
                ))
              ]
            )
          ,
        ),]
      ),
    ));
  }

  Container form(BuildContext context, String text) {
    return Container(
        height: 68,
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.symmetric(vertical: 16, horizontal: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              text,
              style: TextStyle(fontSize: 16, color: Colors.black),
              textAlign: TextAlign.center,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 8),
              margin: EdgeInsets.symmetric(vertical: 8),
              width: 200,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(5),
              ),
              child: TextField(
                decoration:
                    InputDecoration(border: InputBorder.none, hintText: text),
              ),
            )
          ],
        ));
  }
}
