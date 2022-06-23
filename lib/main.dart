import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    var _aspectRatio;
    double aspt(double height) {
      var _crossAxisSpacing = 8;
      var _screenWidth = MediaQuery.of(context).size.width;
      var _crossAxisCount = 2;
      var _width =
          (_screenWidth - ((_crossAxisCount - 1) * _crossAxisSpacing)) /
              _crossAxisCount;
      var cellHeight = height;
      return _aspectRatio = _width / cellHeight;
    }

    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Neumorphic(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                    style: NeumorphicStyle(
                        lightSource: LightSource.top,
                        shadowLightColor: Colors.white.withOpacity(0.9),
                        shadowDarkColor: Colors.grey.withOpacity(0.8),
                        color: Colors.grey.withOpacity(0.15),
                        border: NeumorphicBorder(
                            isEnabled: true,
                            color: Colors.grey.withOpacity(0.3)),
                        depth: 20),
                    child: Row(
                      children: const <Widget>[
                        Icon(Icons.menu),
                        SizedBox(width: 10),
                        Expanded(
                            child: Text(
                          "Cake Factory",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        )),
                        Icon(Icons.more_vert)
                      ],
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        children: [
                          Neumorphic(
                            style: NeumorphicStyle(
                                boxShape: NeumorphicBoxShape.circle()),
                            child: Icon(
                              Icons.abc_rounded,
                              size: size.width * 0.2,
                            ),
                          ),
                          SizedBox(
                            height: size.height * 0.01,
                          ),
                          const Text(
                            "Pound Cake",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: Color.fromARGB(255, 32, 129, 124)),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Neumorphic(
                            style: NeumorphicStyle(
                                boxShape: NeumorphicBoxShape.circle()),
                            child: Icon(
                              Icons.abc_rounded,
                              size: size.width * 0.2,
                            ),
                          ),
                          SizedBox(
                            height: size.height * 0.01,
                          ),
                          Text(
                            "Pound Cake",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: Color.fromARGB(255, 32, 129, 124)),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Neumorphic(
                            style: NeumorphicStyle(
                                boxShape: NeumorphicBoxShape.circle()),
                            child: Icon(
                              Icons.abc_rounded,
                              size: size.width * 0.2,
                            ),
                          ),
                          SizedBox(
                            height: size.height * 0.01,
                          ),
                          Text(
                            "Pound Cake",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: Color.fromARGB(255, 32, 129, 124)),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Neumorphic(
                            style: NeumorphicStyle(
                                boxShape: NeumorphicBoxShape.circle()),
                            child: Icon(
                              Icons.abc_rounded,
                              size: size.width * 0.2,
                            ),
                          ),
                          SizedBox(
                            height: size.height * 0.01,
                          ),
                          Text(
                            "Pound Cake",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: Color.fromARGB(255, 32, 129, 124)),
                          )
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            CarouselSlider.builder(
                itemCount: 4,
                itemBuilder: ((context, index, realIndex) {
                  return Neumorphic(
                    child: SizedBox(
                        width: double.infinity, child: Icon(Icons.abc_rounded)),
                  );
                }),
                options: CarouselOptions(
                  height: size.height * 0.2,
                  aspectRatio: 16 / 9,
                  viewportFraction: 0.8,
                  initialPage: 0,
                  enableInfiniteScroll: true,
                  reverse: false,
                  autoPlay: false,
                  autoPlayInterval: Duration(seconds: 3),
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enlargeCenterPage: true,
                  scrollDirection: Axis.horizontal,
                )),
            SizedBox(
              height: size.height * 0.03,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 5,
                    mainAxisSpacing: 5,
                    childAspectRatio: aspt(200),
                  ),
                  itemCount: 6,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Neumorphic(
                        style: NeumorphicStyle(
                            lightSource: LightSource.topLeft,
                            depth: 7,
                            shape: NeumorphicShape.concave,
                            boxShape: NeumorphicBoxShape.beveled(
                                BorderRadius.circular(10)),
                            shadowDarkColor: Colors.white,
                            shadowLightColor: Colors.grey.withOpacity(0.9),
                            color: Color(0xFFE1E1E1)),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Neumorphic(
                                      style: NeumorphicStyle(
                                        shadowLightColor: Colors.white,
                                        depth: 10,
                                        shape: NeumorphicShape.convex,
                                        shadowDarkColor: Colors.grey,
                                        color: Colors.white.withOpacity(0.4),
                                        boxShape: NeumorphicBoxShape.circle(),
                                      ),
                                      child: Container(
                                        height: size.width * 0.2,
                                        width: size.width * 0.2,
                                      )),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Expanded(
                                      child: Column(
                                    children: <Widget>[
                                      Row(
                                        children: [
                                          Container(
                                            height: 10,
                                            width: 10,
                                            decoration: BoxDecoration(
                                                color: Colors.green,
                                                shape: BoxShape.circle),
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Text(
                                            "Veg",
                                            style: TextStyle(
                                                color: Colors.green,
                                                fontWeight: FontWeight.bold),
                                          )
                                        ],
                                      ),
                                      Text("\$ 111.0"),
                                      Text("5 *"),
                                    ],
                                  ))
                                ],
                              ),
                              NeumorphicButton(
                                child: Text(
                                  "Carrot Cake",
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 32, 129, 124)),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  }),
            )
          ],
        ),
      )),
    );
  }
}
