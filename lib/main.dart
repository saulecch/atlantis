import 'package:flutter/material.dart';

void main() {
  runApp(Atlantis());
}

class Atlantis extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Atlantis',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: const TextTheme(
          headline3: TextStyle(
              fontSize: 40.0, fontWeight: FontWeight.bold, color: Colors.black),
          headline5: TextStyle(
              fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.black),
          headline6: TextStyle(fontSize: 16.0, color: Colors.black),
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
                ElevatedButton(
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
