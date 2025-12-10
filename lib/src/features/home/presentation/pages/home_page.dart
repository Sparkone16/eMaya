import 'package:flutter/material.dart';
import 'package:emaya/src/features/categorie/presentation/pages/categories_page.dart';
import 'package:emaya/src/features/panier/presentation/pages/panier_page.dart';
import 'package:emaya/src/features/produit/presentation/pages/produit_page.dart';
import 'package:emaya/src/features/user/presentation/pages/user_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        selectedIndex: currentPageIndex,
        destinations: const <Widget>[

          NavigationDestination(
            selectedIcon: Icon(Icons.home),
            icon: Icon(Icons.home_outlined),
            label: 'Accueil',
          ),

          NavigationDestination(
            icon: Icon(Icons.category_sharp),
            label: 'Catégories',
          ),

          NavigationDestination(
            icon: Badge(
              label: Text('2'),
              child: Icon(Icons.shopping_cart),
            ),
            label: 'Panier',
          ),

          NavigationDestination(
            icon: Icon(Icons.manage_accounts),
            label: 'Utilisateur',
          ),

        ],
      ),

      body: <Widget>[
        /// page produit
        const ProduitPage(),

        /// page liste des catégories
        const CategoriePage(),

        /// page contenu du panier
        const PanierPage(),

        ///  page user
        const UserPage(),
      ][currentPageIndex],

    );
  }
}
