import 'package:card_swiper/card_swiper.dart';
import 'package:emaya/src/core/constants/colors.dart';
import 'package:emaya/src/features/produit/presentation/pages/promotions_page.dart';
import 'package:emaya/src/features/produit/presentation/widgets/produit_promotion_widget.dart';
import 'package:emaya/src/features/produit/presentation/widgets/produit_vente_widget.dart';
import 'package:flutter/material.dart';

class ProduitVentePage extends StatefulWidget {
  const ProduitVentePage({super.key});

  @override
  State<ProduitVentePage> createState() => _ProduitVentePageState();
}

class _ProduitVentePageState extends State<ProduitVentePage> {
  final List<String> _imagesMaya = [
    'ferme1.jpg',
    'ferme2.jpg',
    'ferme3.jpg',
    'ferme4.jpg'
  ];
  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: screenSize.height * 0.20,
              child: Swiper(
                itemBuilder: (BuildContext context, int index) {
                  return Image.asset(_imagesMaya[index]);
                },
                autoplay: true,
                itemCount: _imagesMaya.length,
                pagination: SwiperPagination(
                  alignment: Alignment.bottomCenter,
                  builder: DotSwiperPaginationBuilder(
                    color: Theme.of(context).scaffoldBackgroundColor,
                    activeColor: Colors.red,
                  ),
                ),
              ),
            ),
            SizedBox(
              child: TextButton(
                onPressed: () {},
                child: const Text('Voir tout'),
              ),
            ),
            Row(
              children: [
                RotatedBox(
                  quarterTurns: -1,
                  child: Row(
                    children: [
                      Text('Promotions'),
                      const Icon(Icons.discount_outlined),
                    ],
                  ),
                ),
                const SizedBox(),
                Flexible(
                  child: SizedBox(
                    height: screenSize.height * 0.24,
                    child: ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      padding: EdgeInsets.zero,
                      itemBuilder: (_, int index) {
                        return const ProduitPromotionWidget();
                      },
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding:
                  const EdgeInsets.only(top: 8, left: 8, right: 8, bottom: 6),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Nos produits'),
                  TextButton(
                    onPressed: () {},
                    child: Text('Afficher tout'),
                  ),
                ],
              ),
            ),
            GridView.builder(
              itemCount: 8,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              padding: EdgeInsets.zero,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 8,
                crossAxisSpacing: 8,
                childAspectRatio: 300 / 250,
              ),
              itemBuilder: (_, int index) {
                return const ProduitVenteWidget();
              },
            ),
          ],
        ),
      ),
    );
  }
}
