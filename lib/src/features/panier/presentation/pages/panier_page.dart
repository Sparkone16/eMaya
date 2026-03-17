import 'package:flutter/material.dart';
import 'package:emaya/src/features/panier/presentation/widgets/item_panier_widget.dart';


class PanierPage extends StatelessWidget {
  const PanierPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Panier Page'), actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.delete,
          ),
        ),
      ]),
      body: Padding(
        padding: const EdgeInsets.only(
            left: 8.0,
            right: 8.0), // à compléter EdgeIsets gauche et droite à 8.0
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: 8,
                itemBuilder: (ctx, index) {
                  return const ItemPanierWidget(); // à compléter avec zone de texte
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
