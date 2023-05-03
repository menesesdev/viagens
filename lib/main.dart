import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Color.fromARGB(255, 13, 105, 255),
      body: ListView(
        children: <Widget>[
          Stack(
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20)),
                child: Image.asset(
                  'assets/images/capa.jpg',
                  fit: BoxFit.cover,
                  color:
                      const Color.fromARGB(255, 13, 105, 255).withOpacity(0.6),
                  colorBlendMode: BlendMode.softLight,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.arrow_back_ios_new_rounded),
                      color: Colors.white,
                    ),
                    DecoratedBox(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: FractionalOffset.topCenter,
                          end: FractionalOffset.bottomCenter,
                          colors: [
                            const Color(0xff0d69ff).withOpacity(0.0),
                            const Color(0xff0069ff).withOpacity(0.8),
                          ],
                        ),
                      ),
                    ),
                    DecoratedBox(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: FractionalOffset.topLeft,
                            end: FractionalOffset.bottomRight,
                            colors: [
                              const Color(0xff692eff).withOpacity(0.8),
                              const Color(0xff642cf4).withOpacity(0.8),
                              const Color(0xff602ae9).withOpacity(0.8),
                              const Color(0xff5224c8).withOpacity(0.8),
                              const Color(0xff5e29e5).withOpacity(0.8),
                            ],
                            stops: const [
                              0.0,
                              0.25,
                              0.5,
                              0.75,
                              1.0
                            ]),
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.search),
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
              const Center(
                child: Padding(
                    padding: EdgeInsets.only(top: 180),
                    child: Text(
                      "CONHEÇA O MUNDO",
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    )),
              )
            ],
          )
        ],
      ),
    );
  }
}
