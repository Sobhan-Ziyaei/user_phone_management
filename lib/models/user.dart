

import 'package:objectbox/objectbox.dart';
import 'package:user_phone_management/models/user_phone.dart';
import 'package:user_phone_management/models/user_sim.dart';

@Entity()
class User{
  @Id()
  int id  ;
  String name ;

  final phones = ToMany<UserPhone>() ;
  final sims = ToMany<UserSim>() ;

  User({this.id = 0 , required this.name}) ;
}