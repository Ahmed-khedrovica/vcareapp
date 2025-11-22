enum Flavor { development, production }

class FlavorConfig {
  final Flavor flavor;
  final String baseUrl;
  final String name;

  static FlavorConfig? _instance;

  FlavorConfig._({
    required this.flavor,
    required this.baseUrl,
    required this.name,
  });

  factory FlavorConfig({
    required Flavor flavor,
    required String baseUrl,
    required String name,
  }) {
    _instance ??= FlavorConfig._(flavor: flavor, baseUrl: baseUrl, name: name);
    return _instance!;
  }

  static FlavorConfig get instance {
    if (_instance == null) {
      throw Exception("FlavorConfig is not initialized");
    }
    return _instance!;
  }

  static bool isDevelopment() => instance.flavor == Flavor.development;
  static bool isProduction() => instance.flavor == Flavor.production;
}
