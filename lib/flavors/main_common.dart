import 'package:vcareapp/flavors/flavor_config.dart';

void mainCommon({
  required Flavor flavor,
  required String baseUrl,
  required String name,
}) {
  FlavorConfig.setup(
    flavor: flavor,
    baseUrl: baseUrl,
    name: name,
  );
}
