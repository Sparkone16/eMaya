
    import '../sources/sources.dart';
    import '../../domain/repositories/categorie_repository.dart';
    
    class CategorieRepositoryImp implements CategorieRepositoryFake{

        final CategorieRemoteDataSource remoteDataSource;
        CategorieRepositoryImp({required this.remoteDataSource});
      
        // ... example ...
        //
        // Future<User> getUser(String userId) async {
        //     return remoteDataSource.getUser(userId);
        //   }
        // ...
    }
    