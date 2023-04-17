import 'package:flutter/material.dart';

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
      theme: ThemeData(primarySwatch: Colors.cyan),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size(0, 96),
        child: Padding(
          padding: const EdgeInsets.all(28),
          child: AppBar(
            backgroundColor: const Color(0xffF5F5F5),
            elevation: 0,
            leading: CircleAvatar(
              child: Image.asset('images/Ellipse 2.png'),
            ),
            title: const Text(
              'Find Flames',
              style: TextStyle(
                color: Color(0xffFF5F8F),
              ),
            ),
            centerTitle: true,
            actions: [
              Image.asset(
                'images/Vector.png',
              )
            ],
          ),
        ),
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            Container(
              height: 240,
              color: Colors.white,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      StackWidget(
                        imageAsset: 'images/yush.png',
                        childName: 'Likes',
                        icons: Icons.favorite,
                        noOfLikes: 20.toString(),
                      ),
                      StackWidget(
                        imageAsset: 'images/person.png',
                        childName: 'Tony',
                      ),
                      StackWidget(
                        imageAsset: 'images/person.png',
                        childName: 'James',
                      ),
                      StackWidget(
                        imageAsset: 'images/person.png',
                        childName: 'Jordan',
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 40),
              child: TextField(
                decoration: InputDecoration(
                    prefixIcon: const Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Icon(
                        Icons.search,
                      ),
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30)),
                    hintText: 'Search'),
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10)),
                color: Color(0xffFFFFFF),
              ),
              height: 280,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView(
                  children: [
                    ListTile(
                      leading: CircleAvatar(
                        radius: 30,
                        child: Image.asset('images/Ellipse 2.png'),
                      ),
                      title: const Text('Jordan'),
                      subtitle: const Text('Hii!'),
                      trailing: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Text('11:30'),
                          const SizedBox(
                            height: 4,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.pink),
                            child: const Text(
                              ' 1 ',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 30),
                      child: Divider(),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        radius: 30,
                        child: Image.asset('images/Ellipse 2.png'),
                      ),
                      title: Text('Tim'),
                      subtitle: Text('Hii!'),
                      trailing: Text('11:30'),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 30),
                      child: Divider(),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        radius: 30,
                        child: Image.asset('images/Ellipse 2.png'),
                      ),
                      title: const Text('James'),
                      subtitle: const Text(
                        'Typing...',
                        style: TextStyle(fontStyle: FontStyle.italic),
                      ),
                      trailing: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Text('11:30'),
                          const SizedBox(
                            height: 4,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.pink),
                            child: const Text(
                              '9+',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
            color: Colors.black54,
          ),
          label: '',
        ),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.web,
              color: Colors.black54,
            ),
            label: ''),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.calendar_month,
              color: Colors.black54,
            ),
            label: 'Home'),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.message,
              color: Colors.black54,
            ),
            label: 'Home'),
      ]),
    );
  }
}

class StackWidget extends StatelessWidget {
  final String childName;
  final String imageAsset;
  IconData? icons;
  String? noOfLikes;

  StackWidget({required this.childName, required this.imageAsset, this.icons, this.noOfLikes});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      width: 130,
      height: 200,
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: SizedBox.fromSize(
              size: Size.fromRadius(90),
              child: Image.asset(
                imageAsset,
                fit: BoxFit.contain,
              ),
            ),
          ),
          Container(
            // width: double.infinity,

            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              // color: Colors.pink,
              color: const Color.fromARGB(100, 22, 44, 33),
            ),
            height: 180,
            width: 125,
            child: SizedBox.fromSize(
              size: Size.fromRadius(90),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Icon(icons, color: Colors.white, size: 40,),
                  const SizedBox(height: 10,),
                  Text(
                    noOfLikes ?? '',
                    style: const TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 20,
            right: 20,
            bottom: 0,
            top: 170,
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xffFCFCFC),
                borderRadius: BorderRadius.circular(10),
              ),
              width: 120,
              alignment: Alignment.center,
              height: 5,
              child: Text(childName),
            ),
          ),
        ],
      ),
    );
  }
}
