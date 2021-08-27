import 'package:flutter/material.dart';
import 'package:pixel_perfect/pixel_perfect.dart';

void main() {
  runApp(Atlantis());
}

class Atlantis extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Atlantis',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: const TextTheme(
          headline3: TextStyle(
              fontSize: 40.0, fontWeight: FontWeight.bold, color: Colors.black),
          headline5: TextStyle(
              fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.black),
          headline6: TextStyle(
              fontSize: 14.5, fontWeight: FontWeight.w500, color: Colors.grey),
          subtitle1: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.black,
              letterSpacing: -1),
        ),
      ),
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PixelPerfect(
      assetPath: 'assets/Home.jpg',
      scale: 375 / MediaQuery.of(context).size.width,
      child: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              TopBar(),
              SearchBar(),
            ],
          ),
        ),
      ),
    );
  }
}

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 35.0, vertical: 28),
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        color: Colors.white,
        child: Container(
          height: 52,
          child: Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: TextField(
              decoration: InputDecoration(
                suffixIcon: Icon(Icons.tune),
                hintText: 'Search residence',
                hintStyle: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 16,
                    letterSpacing: 0.5),
                border: InputBorder.none,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class TopBar extends StatelessWidget {
  const TopBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 35.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 16.0,
              ),
              Text(
                'Location',
                style: Theme.of(context).textTheme.headline6,
              ),
              SizedBox(
                height: 2,
              ),
              Row(
                children: [
                  Icon(
                    Icons.location_pin,
                    size: 18,
                    color: Colors.blue,
                  ),
                  Text(
                    'Surabaya, East Java',
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                ],
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Image.asset(
              'assets/Profile.jpg',
              height: 55,
            ),
          ),
        ],
      ),
    );
  }
}

class StartScreen extends StatelessWidget {
  const StartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(
                  'https://images.unsplash.com/photo-1587663298189-6e05e9017fd5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxjb2xsZWN0aW9uLXRodW1ibmFpbHx8NTI1OTUwfHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=750&q=60'),
              fit: BoxFit.fill),
        ),
        child: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 100.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Lets find your',
                        style: Theme.of(context).textTheme.headline5,
                      ),
                      Text(
                        'Paradise',
                        style: Theme.of(context).textTheme.headline3,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Find with us your dream home',
                        style: Theme.of(context).textTheme.headline6,
                      ),
                      Text(
                        'quickly and precisely',
                        style: Theme.of(context).textTheme.headline6,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 50.0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      minimumSize:
                          Size(MediaQuery.of(context).size.width * 0.9, 50),
                      textStyle: Theme.of(context).textTheme.headline6,
                    ),
                    onPressed: () {},
                    child: const Text('Get started'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
