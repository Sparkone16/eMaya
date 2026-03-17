import 'package:flutter/material.dart';
import 'package:flutter/services.dart'; // <--- INDISPENSABLE pour inputFormatters

class ItemPanierWidget extends StatefulWidget {
  const ItemPanierWidget({super.key});

  @override
  State<ItemPanierWidget> createState() => _ItemPanierWidgetState();
}

class _ItemPanierWidgetState extends State<ItemPanierWidget> {
  // 1. Déclaration du controller et des variables
  final TextEditingController _quantiteTextController = TextEditingController();
  int quantite = 1;
  final double prixUnitaire = 25.00;

  // 2. Initialisation
  @override
  void initState() {
    super.initState();
    _quantiteTextController.text = quantite.toString();
  }

  // 3. Nettoyage du controller
  @override
  void dispose() {
    _quantiteTextController.dispose();
    super.dispose();
  }

  // --- LOGIQUE MÉTIER ---

  void _incrementer() {
    setState(() {
      quantite++;
      _quantiteTextController.text = quantite.toString();
    });
  }

  void _decrementer() {
    if (quantite > 1) {
      setState(() {
        quantite--;
        _quantiteTextController.text = quantite.toString();
      });
    }
  }

  void _onTypeQuantity(String value) {
    if (value.isNotEmpty) {
      int? val = int.tryParse(value);
      // On vérifie que c'est un nombre valide et > 0
      if (val != null && val > 0) {
        setState(() {
          quantite = val;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    // Calcul du total dynamique
    double prixTotal = quantite * prixUnitaire;
    Size size = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: () {},
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      blurRadius: 5,
                      offset: const Offset(0, 5),
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    // --> image (Container ...)
                    Container(
                      height: 80,
                      width: 80,
                      margin: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Icon(Icons.image, size: 40, color: Colors.grey),
                    ),

                    // --> colonne : nom { - quantité + }
                    Expanded( // Ajout de Expanded pour éviter les overflow si le nom est long
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Nom Produit",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                          // Ligne quantité { - TextField + }
                          Row(
                            children: [
                              // BOUTON MOINS
                              IconButton(
                                onPressed: _decrementer,
                                icon: const Icon(Icons.remove_circle_outline, size: 20, color: Colors.red,),
                                padding: EdgeInsets.zero, // Réduit l'espace autour
                                constraints: const BoxConstraints(), // Réduit la taille clicable au minimum visuel
                              ),
                              
                              // TEXTFIELD QUANTITÉ
                              Container(
                                width: 40, // Largeur fixe pour le champ
                                padding: const EdgeInsets.symmetric(horizontal: 5),
                                child: TextField(
                                  controller: _quantiteTextController,
                                  textAlign: TextAlign.center,
                                  keyboardType: TextInputType.number,
                                  // Autorise seulement les chiffres 0-9
                                  inputFormatters: [
                                    FilteringTextInputFormatter.digitsOnly
                                  ],
                                  onChanged: _onTypeQuantity,
                                  decoration: const InputDecoration(
                                    isDense: true,
                                    contentPadding: EdgeInsets.zero,
                                  ),
                                ),
                              ),

                              // BOUTON PLUS
                              IconButton(
                                onPressed: _incrementer,
                                icon: const Icon(Icons.add_circle_outline, size: 20, color: Colors.green),
                                padding: EdgeInsets.zero,
                                constraints: const BoxConstraints(),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),

                    // --> colonne: icone_supprimer prix_total_item
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10), // Un peu plus d'espace
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end, // Aligner à droite
                        children: [
                          IconButton(
                            onPressed: (){}, // Action supprimer à définir
                            icon: const Icon(Icons.delete_outline, color: Colors.red)
                          ),
                          const SizedBox(height: 5),
                          // AFFICHAJE PRIX CALCULÉ
                          Text(
                            "${prixTotal.toStringAsFixed(2)} €",
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}