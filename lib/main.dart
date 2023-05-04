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
      title: 'Conheça o mundo',
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
                  color: Color.fromARGB(165, 60, 60, 5).withOpacity(1.0),
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
                    padding: EdgeInsets.only(top: 215),
                    child: Text(
                      "CONHEÇA O PIAUÍ",
                      style: TextStyle(
                        fontSize: 30,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    )),
              )
            ],
          ),
          Container(
            height: MediaQuery.of(context).size.height,
            child: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: ListView(children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Container(
                    height: 200,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 222, 188, 15).withOpacity(1.0),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Stack(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(
                                'assets/images/cachoeira_urubu.jpg',
                                fit: BoxFit.fill,
                                //color: const Color.fromARGB(255, 13, 105, 255)
                                //  .withOpacity(1.0),
                                // colorBlendMode: BlendMode.softLight,
                              ),
                            ),
                            const Center(
                              child: Padding(
                                  padding: EdgeInsets.only(top: 120, left: 10),
                                  child: Text(
                                    "Cachoeira do urubú",
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  )),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                )
              ]),
            ),
          )
        ],
      ),
    );
  }
}
