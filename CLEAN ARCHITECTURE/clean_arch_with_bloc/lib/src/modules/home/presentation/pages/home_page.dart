import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../blocs/user/user_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final UserBloc bloc = Modular.get<UserBloc>();

  @override
  void initState() {
    bloc.add(GetUsers());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: BlocBuilder<UserBloc, UserState>(
          bloc: bloc,
          builder: (context, state) {
            return state.when(
              failure: (message) => Center(
                child: Text("Erro ao buscar dados... $message"),
              ),
              loading: () => const Center(
                child: CircularProgressIndicator(),
              ),
              success: (users) => Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(
                    child: ListView.builder(
                      shrinkWrap: true,
                      physics: const BouncingScrollPhysics(),
                      itemCount: users.length,
                      itemBuilder: (context, index) {
                        return Center(
                          child: Text(
                            users[index].name,
                            style: const TextStyle(fontSize: 28),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
              initial: () => Container(),
            );
          },
        ),
      ),
    );
  }
}
