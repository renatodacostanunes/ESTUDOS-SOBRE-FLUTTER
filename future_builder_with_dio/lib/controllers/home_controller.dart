import 'package:dio/dio.dart';

import '../models/animal_model.dart';

class HomeController {
  HomeController._();
  static final instance = HomeController._();
  int seconds = 0;
  int totalAnimals = 1;

  Future<List<Animal>?> getAnimals() async {
    var dio = Dio();
    List<Animal> listAnimals = [];
    try {
      final response = await dio.get(
          'https://zoo-animal-api.herokuapp.com/animals/rand/$totalAnimals');
      for (final item in response.data) {
        Animal animal = Animal.fromMap(item);
        listAnimals.add(animal);
      }

      await Future.delayed(
        Duration(seconds: seconds),
      );
      return listAnimals;
    } on DioError catch (e) {
      throw Exception("Error: ${e.response!.statusCode ?? "Sem statusCode"}");
    } catch (e) {
      throw Exception("Erro desconhecido");
    }
  }

  dynamic getError() {
    seconds = 0;
    totalAnimals = 0;
    getAnimals();
  }

  dynamic getAnimalsWithDelay() {
    seconds = 3;
    totalAnimals = 1;
    getAnimals();
  }

  dynamic getAnimalsFast() {
    seconds = 0;
    totalAnimals = 1;
    getAnimals();
  }
}
