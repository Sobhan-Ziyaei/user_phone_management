
import 'package:objectbox/objectbox.dart';
import 'package:user_phone_management/models/user.dart';
import 'package:user_phone_management/models/user_phone.dart';

@Entity()
class UserSim {
  @Id()
  int id ;

  final phoneOwner = ToOne<UserPhone>();
  final userOwner = ToOne<User>();

  UserSim({this.id = 0}) ;
}