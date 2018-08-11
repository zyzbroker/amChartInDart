@JS()
library ExportSettings;

import "package:js/js.dart";

/// Seems like this is meant: https://github.com/amcharts/export
@JS()
class ExportSettings {
  // @Ignore
  ExportSettings.fakeConstructor$();
  external bool get enabled;
  external set enabled(bool v);
  external Object get libs;
  external set libs(Object v);
  external Object get menu;
  external set menu(Object v);
  external dynamic get config;
  external set config(dynamic v);
  external dynamic capture(dynamic config, void callback());
  external dynamic toJPG(dynamic config, void callback(dynamic config));
}
