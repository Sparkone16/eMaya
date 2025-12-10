import 'package:flutter/material.dart';

    class CategorieEntityFake {
        // ...
        final String libelle;
        final String imageNom;
        final Color couleur;

        CategorieEntityFake(this.libelle, this.imageNom, this.couleur);
        String getLibelle() {
          return libelle;
        }
        String getImageNom() {
          return imageNom;
        }
        Color getCouleur() {
          return couleur;
        }

        // An entity represents a real-world object with a distinct identity. 
    }
    