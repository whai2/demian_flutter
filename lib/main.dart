import 'package:flutter/material.dart';
import 'package:demian/my_container.dart';
import 'package:demian/chat.dart';

void main() {
  runApp(const MyApp());
}

const seedColor = Color.fromARGB(255, 229, 233, 233);
const outPadding = 32.0;


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Demian',
      theme: ThemeData(
        /***
         * You can also do this instead of ColorScheme.fromSeed()
         */
        //colorSchemeSeed: seedColor,
        //brightness: Brightness.dark,
         colorScheme: ColorScheme.fromSeed(
             seedColor: seedColor, brightness: Brightness.light),
        ),
        home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State< MyHomePage> {
  //int _selected = 0;
  var selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: selectedIndex,
        children: [
          ChatPage(),
          //const Placeholder(),
          //const Placeholder(),
        ],
      ),
      //backgroundColor: const Color.fromARGB(0, 0, 0, 0),
      bottomNavigationBar: BottomNavigationBar(
            currentIndex: selectedIndex,
            elevation: 0,
            onTap: (selected) {
              setState(() {
                selectedIndex = selected;
              });
            },
            selectedItemColor: Theme.of(context).colorScheme.onPrimary,
            unselectedItemColor:
                Theme.of(context).colorScheme.onPrimaryContainer,
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home_outlined),
                  label: "",
                  backgroundColor: Colors.transparent),
              BottomNavigationBarItem(
                  icon: Icon(Icons.newspaper_outlined),
                  label: "",
                  backgroundColor: Colors.transparent),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person_outline),
                  label: "",
                  backgroundColor: Colors.transparent),
            ],
          ),
    );
  }
}

class _TopCard extends StatelessWidget {
  const _TopCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MyContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [Container(),]
      ),
    );
  }
}

class GeneratorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(outPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.ac_unit,
                        color: Theme.of(context).colorScheme.onPrimary,
                        size: 32,
                      ),
                      Expanded(child: Container()),
                    ],
                  ),
                  const SizedBox(
                    height: outPadding,
                  ),
                  
                  const SizedBox(
                    height: outPadding,
                  ),
                  const _TopCard(),
                  const SizedBox(
                    height: outPadding,
                  ),
                  
                  const SizedBox(
                    height: outPadding,
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        Flexible(
                            child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Flexible(
                              flex: 3,
                              child: MyContainer(
                                child: Container(),
                              ),
                            ),
                            const SizedBox(
                              height: outPadding,
                            ),
                            Flexible(
                              flex: 2,
                              child: MyContainer(
                                child: Container(),
                              ),
                            ),
                          ],
                        )),
                        const SizedBox(
                          width: outPadding,
                        ),
                        Flexible(
                            child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Flexible(
                              flex: 2,
                              child: MyContainer(
                                child: Container(),
                              ),
                            ),
                            const SizedBox(
                              height: outPadding,
                            ),
                            Flexible(
                              flex: 3,
                              child: MyContainer(
                                child: Container(),
                              ),
                            ),
                          ],
                        )),
                      ],
                    ),
                  ),
                  //const SizedBox(height: 16)
                ],
              ),
            ),
          );
  }
}

