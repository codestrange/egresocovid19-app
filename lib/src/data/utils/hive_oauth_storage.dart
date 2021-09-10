import 'dart:convert';
import 'dart:developer';

import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';
import 'package:oauth_dio/oauth_dio.dart';

@LazySingleton(as: OAuthStorage)
class HiveOauthStorage extends OAuthStorage {
  HiveOauthStorage(@Named('oauth') this.box);

  final Box<String> box;

  @override
  Future<void> clear() => box.clear();

  @override
  Future<OAuthToken?> fetch() async {
    try {
      final raw = box.get('token');
      if (raw == null) {
        return null;
      }
      final json = jsonDecode(raw) as Map<String, dynamic>;
      final token = OAuthToken.fromMap(json);
      return token;
    } catch (e) {
      log(e.toString());
      return null;
    }
  }

  @override
  Future<OAuthToken> save(OAuthToken token) async {
    try {
      final json = token.toMap();
      final raw = jsonEncode(json);
      await box.put('token', raw);
      return token;
    } catch (e) {
      log(e.toString());
      return token;
    }
  }
}
