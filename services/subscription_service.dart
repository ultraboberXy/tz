import 'package:shared_preferences/shared_preferences.dart';

class SubscriptionService {
  static const _key = 'is_subscribed';

  /// Проверяет, активна ли подписка.
  static Future<bool> isSubscribed() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool(_key) ?? false;
  }

  /// Эмулирует покупку – сохраняет статус подписки.
  static Future<void> purchase() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(_key, true);
  }
}