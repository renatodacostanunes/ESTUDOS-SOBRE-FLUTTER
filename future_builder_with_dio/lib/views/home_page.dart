import 'package:flutter/material.dart';

import '../controllers/home_controller.dart';
import '../models/animal_model.dart';
import '../widgets/custom_button.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final HomeController _homeController = HomeController.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FutureBuilder<List<Animal>?>(
              future: _homeController.getAnimals(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const SizedBox(
                    height: 120.0,
                    width: 120.0,
                    child: CircularProgressIndicator(),
                  );
                }
                if (snapshot.hasError || snapshot.data == null) {
                  return SizedBox(
                      height: 120,
                      width: 120,
                      child: Text(
                        "${snapshot.error}",
                        textAlign: TextAlign.center,
                      ));
                }
                if (snapshot.connectionState == ConnectionState.done &&
                    snapshot.hasData) {
                  return Image.network(
                    snapshot.data![0].image,
                    fit: BoxFit.fill,
                    loadingBuilder: (BuildContext context, Widget child,
                        ImageChunkEvent? loadingProgress) {
                      if (loadingProgress == null) {
                        return ClipRRect(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(120.0)),
                          child: SizedBox(
                            height: 120,
                            width: 120,
                            child: child,
                          ),
                        );
                      }
                      return SizedBox(
                        height: 120,
                        width: 120,
                        child: CircularProgressIndicator(
                          valueColor: const AlwaysStoppedAnimation<Color>(
                            Colors.grey,
                          ),
                          value: loadingProgress.expectedTotalBytes != null
                              ? loadingProgress.cumulativeBytesLoaded /
                                  loadingProgress.expectedTotalBytes!
                              : null,
                        ),
                      );
                    },
                  );
                }

                return const SizedBox(
                    height: 120,
                    width: 120,
                    child: Center(
                      child: Text(
                        "Algum problema desconhecido :@",
                        textAlign: TextAlign.center,
                      ),
                    ));
              },
            ),
            const SizedBox(height: 50),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CustomButton(
                  title: "Get Animals",
                  function: () => setState(() {
                    _homeController.getAnimalsFast();
                  }),
                  color: Colors.green,
                ),
                CustomButton(
                  title: "Get Animals with delay",
                  function: () => setState(() {
                    _homeController.getAnimalsWithDelay();
                  }),
                  color: Colors.blue,
                ),
                CustomButton(
                  title: "Get Error",
                  function: () => setState(() {
                    _homeController.getError();
                  }),
                  color: Colors.red,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
