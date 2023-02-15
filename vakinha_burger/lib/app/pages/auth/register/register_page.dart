import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vakinha_burger/app/core/ui/styles/text_styles.dart';
import 'package:vakinha_burger/app/core/ui/widgets/delivery_appbar.dart';
import 'package:vakinha_burger/app/core/ui/widgets/delivery_button.dart';
import 'package:vakinha_burger/app/pages/auth/register/register_controller.dart';
import 'package:vakinha_burger/app/pages/auth/register/register_state.dart';
import 'package:validatorless/validatorless.dart';

import '../../../core/ui/base_state/base_state.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends BaseState<RegisterPage, RegisterController> {
  final _formKey = GlobalKey<FormState>();

  final _nameEC = TextEditingController();
  final _emailEC = TextEditingController();
  final _passwordEC = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _nameEC.dispose();
    _emailEC.dispose();
    _passwordEC.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<RegisterController, RegisterState>(
      listener: (context, state) {
        state.status.matchAny(
          any: () => hideLoader(),
          register: () => showLoader(),
          error: () => showError('Erro ao registrar usuário'),
          success: () {
            hideLoader();
            showSuccess('Cadastro realizado com sucesso');
            Navigator.pop(context);
          },
        );
      },
      child: Scaffold(
        appBar: DeliveryAppbar(),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Cadastro', style: context.textStyles.textTitle),
                  Text(
                    'Preencha os campos abaixo para criar o seu cadastro.',
                    style: context.textStyles.textMedium.copyWith(
                      fontSize: 13.0,
                    ),
                  ),
                  const SizedBox(height: 30.0),
                  TextFormField(
                    decoration: const InputDecoration(labelText: 'Nome'),
                    validator: Validatorless.required('Nome Obrigatório'),
                    controller: _nameEC,
                  ),
                  const SizedBox(height: 30.0),
                  TextFormField(
                    decoration: const InputDecoration(labelText: 'Email'),
                    validator: Validatorless.multiple([
                      Validatorless.required('Email obrigatório'),
                      Validatorless.email('E-mail inválido'),
                    ]),
                    controller: _emailEC,
                  ),
                  const SizedBox(height: 30.0),
                  TextFormField(
                    decoration: const InputDecoration(labelText: 'Senha'),
                    validator: Validatorless.multiple([
                      Validatorless.required('Senha obrigatória'),
                      Validatorless.min(6, 'Senha deve conter pelo menos 6 caracteres'),
                    ]),
                    controller: _passwordEC,
                  ),
                  const SizedBox(height: 30.0),
                  TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Confirmar Senha',
                    ),
                    obscureText: true,
                    validator: Validatorless.multiple([
                      Validatorless.required('Confirme a senha'),
                      Validatorless.compare(_passwordEC, 'As senhas são diferentes'),
                    ]),
                  ),
                  const SizedBox(height: 30.0),
                  Center(
                    child: DeliveryButton(
                      label: 'Cadastrar',
                      onPressed: () {
                        final valid = _formKey.currentState?.validate() ?? false;
                        if (valid) {
                          controller.register(_nameEC.text, _emailEC.text, _passwordEC.text);
                        }
                      },
                      width: double.infinity,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
