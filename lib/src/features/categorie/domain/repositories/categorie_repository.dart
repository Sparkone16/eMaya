import 'package:emaya/src/core/constants/colors.dart';
import 'package:emaya/src/features/categorie/domain/entities/categorie_entity.dart';

abstract class CategorieRepositoryFake {
  
  static final _lesCategories = [
    CategorieEntityFake('Fruits', 'fruits.png', AppColor.black),
    CategorieEntityFake('Légumes', 'veg.png', AppColor.black),
    CategorieEntityFake('Aromatiques', 'spices.png', AppColor.black),
    CategorieEntityFake('Graines', 'grains.png', AppColor.black),
    CategorieEntityFake('Noix', 'nuts.png', AppColor.black),
    CategorieEntityFake('Salades', 'spinach.png', AppColor.black),
    CategorieEntityFake('Fruits', 'fruits.png', AppColor.black),
    CategorieEntityFake('Fruits', 'fruits.png', AppColor.black),
  ];

  static CategorieEntityFake getCategorie(int index) {
    return _lesCategories[index];
  }
}
