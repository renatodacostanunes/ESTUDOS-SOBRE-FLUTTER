import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:list_favorite/controller.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
  Controller store = Controller();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Observer(
          builder: (context) {
            return Column(
              children: [
                Expanded(
                  flex: 5,
                  child: ListView(
                    children: store.myListObj.map((element) {
                      return ListTile(
                        title: Text(element.name),
                        trailing: element.isFavorite
                            ? IconButton(
                                icon: const Icon(Icons.favorite),
                                onPressed: () => store.favorite(element))
                            : IconButton(
                                icon: const Icon(Icons.favorite_border),
                                onPressed: () => store.favorite(element),
                              ),
                      );
                    }).toList(),
                  ),
                ),
                const Text("SOMENTE FAVORITOS"),
                Expanded(
                  flex: 4,
                  child: ListView(
                    children: store.myListObj
                        .map((element) => element.isFavorite
                            ? ListTile(
                                title: Text(element.name),
                                trailing: element.isFavorite
                                    ? IconButton(
                                        icon: const Icon(Icons.favorite),
                                        onPressed: () =>
                                            store.favorite(element))
                                    : IconButton(
                                        icon: const Icon(Icons.favorite_border),
                                        onPressed: () =>
                                            store.favorite(element),
                                      ),
                              )
                            : Container())
                        .toList(),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: ElevatedButton(
                    onPressed: store.hasThreeFavorites
                        ? () => store.removeAllFavorites()
                        : null,
                    child: const Text("MobX VAGABUNGO"),
                  ),
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
