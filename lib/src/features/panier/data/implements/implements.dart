
    import '../sources/sources.dart';
    import '../../domain/repositories/repositories.dart';
    
    class PanierRepositoryImp implements PanierRepository{

        final PanierRemoteDataSource remoteDataSource;
        PanierRepositoryImp({required this.remoteDataSource});
      
        // ... example ...
        //
        // Future<User> getUser(String userId) async {
        //     return remoteDataSource.getUser(userId);
        //   }
        // ...
    }
    