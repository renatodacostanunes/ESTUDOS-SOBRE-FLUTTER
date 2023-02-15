import 'package:equatable/equatable.dart';

class User extends Equatable {
  final int id;
  final String name;
  final String username;
  final String email;
  final String? phone;
  final String? website;

  const User({
    required this.id,
    required this.name,
    required this.username,
    required this.email,
    this.phone,
    this.website,
  });

  @override
  List<Object?> get props => [id, name, username, email, phone, website];
}

// A entidade é a representação do nosso objeto, não devo ter métodos aqui
// que dependam de nada de fora, como apis, fromMap, toMap, somente as que 
// depender só da entidade que pode ficar aqui
