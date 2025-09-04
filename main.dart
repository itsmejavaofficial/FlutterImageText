import 'package:flutter/material.dart';

/* The purpose of this syntax is to import the Flutter Material Design Library widgets
tools for building the Material Design UI (google design system)

import - dart keyword to include external libararies

package:flutter - refers to the material package that comes with flutter

This is Essential for building flutter apps w/ a standard UI.
 */

void main() { // Entry point of a flutter app
  runApp( const MyApp()); // runApp() that initialize the app and attached the root widget(MyApp) to the screen,
  //creates an instance of the Myapp widget, that marked const for compile-time (immutable)
}

class MyApp extends StatelessWidget {
  //MyApp is a custom class that extends StatelessWidget
  //statelesswidget - base class for widgets that do not hold mutable state
  const MyApp({super.key}); //constructor

@override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hello Flutter',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const MyHomePage(), // initial screen
    );
  }

}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Anime'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/movie.jpg',
            width: 500,
            height: 400),
            const SizedBox(height: 20),
            const Text(
                'Demon Slayer: Kimetsu no Yaiba Infinity Castle',
                style:TextStyle(fontSize: 30)
            ),

            const Text(
              """The Demon Slayer Corps plunges into the Infinity Castle to defeat Muzan. Shinobu engages in a fierce fight against Doma, the Upper-Rank 2 demon. Poison doesn't work on him, so she finds herself in an intense struggle. Will she be able to defeat the demon who killed her older sister?! Then another demon appears before Zenitsu and blocks his way.

              Tanjiro and Tomioka confront Akaza, the Upper-Rank 3 demon. Against Akaza's overwhelming strength, the two find themselves unable to do anything but defend themselves. With the situation looking grim, Tanjiro awakens to the "Transparent World" his father once told him about. Will this new knowledge allow Tanjiro to turn the tables and go on the offensive against Akaza?

              The Demon Slayers fight hard to get their blades closes to Muzan's neck! To avenge her family, Kanao must continue to battle Doma head-on, while Iguro and Kanroji find themselves slashing through the shifting rooms of Infinity Castle. Elsewhere, Tokito, Sanemi and Genya come face-to-face with a villain who recognizes Tokito, but Tokito doesn't know him. Who is this powerful adversary?

""",
            style:TextStyle(fontSize: 20),
            )
          ],
        )
      ),
    );
  }

  }

