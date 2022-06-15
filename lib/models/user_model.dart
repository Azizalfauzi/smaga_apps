part of 'models.dart';

class UserModel extends Equatable {
  final String id;
  final String email;
  final String name;
  final String nis;
  final String kelas;

  const UserModel({
    required this.id,
    required this.email,
    required this.name,
    this.nis = '',
    this.kelas = '',
  });
  @override
  List<Object?> get props => [
        id,
        email,
        name,
        nis,
        kelas,
      ];
}
