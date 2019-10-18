import 'package:chat_app/models/user.dart';
import 'package:chat_app/models/settings.dart';

class StateModel {
  bool isLoading;
  String token;
  String userId;
  Result user;
  Settings settings;

  StateModel({
    this.isLoading = false,
    this.token,
    this.user,
    this.settings,
    this.userId,
  });
}