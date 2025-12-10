import 'package:emaya/src/features/categorie/domain/repositories/categorie_repository.dart';
import 'package:flutter/material.dart';
import 'package:emaya/src/core/constants/colors.dart';

class CategoriesPage extends StatelessWidget {
  const CategoriesPage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Categorie'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          itemCount: 8,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemBuilder: (_, int index) {
            return InkWell(
              onTap: () {},
              onLongPress: () {},
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: AppColor.darkCardColor,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(12),
                  
                ),
                margin: const EdgeInsets.all(4),
                child: Column(
                  children: [
                    Container(
                      height: screenWidth * 0.3,
                      width: screenWidth * 0.3,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/cat/${CategorieRepositoryFake.getCategorie(index).getImageNom()}'),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Text(
                      CategorieRepositoryFake.getCategorie(index).getLibelle(),
                      style: Theme.of(context).textTheme.labelSmall,

                    ),
                  ],
                ),
              ),
            );
          }
        ),
      ),
    );
  }
}
