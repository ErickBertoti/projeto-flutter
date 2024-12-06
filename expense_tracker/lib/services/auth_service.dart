// lib/services/auth_service.dart
class AuthService {
  static Map<String, String> _users = {};

  static void register(String email, String password) {
    _users[email] = password;
  }

  static void login(String email, String password) {
    if (_users.containsKey(email) && _users[email] == password) {
      // Login successful
    } else {
      // Login failed
    }
  }

  static void logout() {
    // Implement logout functionality
  }
}