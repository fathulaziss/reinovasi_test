part of 'extensions.dart';

extension FirebaseUserExtension on auth.User {
  User convertToUser({String name}) => User(this.uid, this.email, name: name);

  Future<User> fromFireStore() async => await UserServices.getUser(this.uid);
}
