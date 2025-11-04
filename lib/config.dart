// lib/config.dart

class Environments {
  static const PRODUCTION = 'PRODUCTION';
  static const QAS = 'QAS';
  static const DEV = 'DEV';
}

class ConfigEnvironments {
  // Return current environment
  static Map<String, String> getEnvironments() {
    // Change this to switch environments
    return {'env': Environments.QAS}; 
  }
}
