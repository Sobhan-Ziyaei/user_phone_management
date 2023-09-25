
import 'package:objectbox/objectbox.dart';
import 'package:user_phone_management/models/user.dart';
import 'package:user_phone_management/models/user_sim.dart';

@Entity()
class UserPhone {
  @Id()
  int id ;

  final owner = ToOne<User>();
  final sims = ToMany<UserSim>();

  UserPhone({this.id = 0});


}