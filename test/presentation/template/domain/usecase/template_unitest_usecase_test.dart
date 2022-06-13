// import 'package:easysalon_users_app/presentation/login/domain/usecase/login_repo_usecase.dart';
// import 'package:either_dart/either.dart';
// import 'package:flutter_test/flutter_test.dart';
// import 'package:mockito/mockito.dart';

// import '../../../login/domain/usecase/login_repo_usecase_test.mocks.dart';

// void main() {
//   late LoginRepoUseCase useCase;
//   late MockLoginRepository mockAuthRepository;
//   setUp(() {
//     mockAuthRepository = MockLoginRepository();
//     // useCase = MockLoginRepository();
//   });
//   test('register user by email usecase from Auth', () async {
//     when(
//       mockAuthRepository.loginRepo(
//         mobileNumber: 'hovanduong@gmail.com',
//         password: 'password',
//       ),
//     ).thenAnswer((_) async => Right(false));
//     final result =
//         await useCase(
//         mobileNumber: 'hovanduong@gmail.com', password: 'password');
//     expect(result.isRight, true);
//   });
// }
