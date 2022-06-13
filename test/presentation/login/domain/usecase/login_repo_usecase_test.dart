// import 'package:easysalon_users_app/presentation/login/domain/usecase/login_repo_usecase.dart';
// import 'package:either_dart/either.dart';
// import 'package:flutter_test/flutter_test.dart';
// import 'package:mixup/index.dart';
// import 'package:mockito/mockito.dart';

// import '../repositories/login_repository_test.mocks.dart';

// void main() {
//   late LoginRepoUseCase useCase;
//   late MockLoginRepository mockAuthRepository;

//   setUp(() {
//     mockAuthRepository = MockLoginRepository();
//     useCase = LoginRepoUseCase(repository: mockAuthRepository);
//   });
//     test('Invalid Email', () async {
//     when(
//       mockAuthRepository.loginRepo(
//         mobileNumber: '0944010499',
//         password: 'duong1234',
//       ),
//     ).thenAnswer((_) async => Left(FetchError(message: "",httpStatus: 402)));
//     final result = await useCase(mobileNumber: '0944010499', password: 'password');
//     expect(result.isRight, true);
//     final ex = result.fold((l) => l, (r) => null);
//     expect(ex, true);
//   });
// }
