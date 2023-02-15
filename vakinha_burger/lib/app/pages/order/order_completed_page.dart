import 'package:flutter/material.dart';
import 'package:vakinha_burger/app/core/ui/helpers/size_extensions.dart';
import 'package:vakinha_burger/app/core/ui/styles/text_styles.dart';
import 'package:vakinha_burger/app/core/ui/widgets/delivery_button.dart';

class OrderCompletedPage extends StatelessWidget {
  const OrderCompletedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: context.percentHeight(.20)),
            Image.asset('assets/images/logo_rounded.png'),
            const SizedBox(height: 20.0),
            Text(
              textAlign: TextAlign.center,
              'Pedido realizado com sucesso, em breve você receberá a confirmação do seu pedido',
              style: context.textStyles.textExtraBold.copyWith(
                fontSize: 18.0,
              ),
            ),
            const SizedBox(height: 40.0),
            DeliveryButton(
              width: context.percentWidth(.8),
              label: 'Fechar',
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
