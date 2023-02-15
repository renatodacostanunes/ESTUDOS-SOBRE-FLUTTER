import 'package:vakinha_burger/app/models/product_model.dart';

abstract class ProducsRepository {
  Future<List<ProductModel>> findAllProducts();
}
