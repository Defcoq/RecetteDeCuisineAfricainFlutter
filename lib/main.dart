import 'package:flutter/material.dart';
import 'package:recettecuisine/detail_recette.dart';
import 'recette.dart';


void main() {
  runApp(const RecetteCuisineApp());
}

class RecetteCuisineApp extends StatelessWidget {
  const RecetteCuisineApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  // 1
  @override
  Widget build(BuildContext context) {
    // 2
    final ThemeData theme = ThemeData();
    // 3
    return MaterialApp(
      // 4
      title: 'Recette de plats africain',
      // 5
      theme: theme.copyWith(
        colorScheme: theme.colorScheme.copyWith(
          primary: Colors.grey,
          secondary: Colors.black,
        ),
      ),
      // 6
      home: const MyHomePage(title: 'Recette de plats africain'),
    );
  }

}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // 1
    return Scaffold(
      // 2
      appBar: AppBar(
        title: Text(widget.title),
      ),
      // 3
      body: SafeArea(
        // A faire : remplacer le  child: Container()
        // 4
        child: ListView.builder(
          // 5
          itemCount: Recette.samples.length,
          // 6
          itemBuilder: (BuildContext context, int index) {
            // 7
            return GestureDetector(
              // 8
              onTap: () {
                // 9
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      // 10
                      return DetailRecette(recette: Recette.samples[index]);
                    },
                  ),
                );
              },
              // 11
              child: buildRecetteCuisineCard(Recette.samples[index]),
            );
          },
        ),
      ),
    );
  }

// A faire: Ajouter buildRecetteCuisineCard() ici
  Widget buildRecetteCuisineCard(Recette recette) {
    return Card(
      // 1
      elevation: 2.0,
      // 2
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      // 3
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        // 4
        child: Column(
          children: <Widget>[
            Image(image: AssetImage(recette.imageUrl)),
            // 5
            const SizedBox(
              height: 14.0,
            ),
            // 6
            Text(
              recette.label,
              style: const TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w700,
                fontFamily: 'Palatino',
              ),
            )
          ],
        ),
      ),
    );
  }
}
