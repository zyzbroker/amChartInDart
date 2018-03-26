@JS()
library Title;

import "package:js/js.dart";

@JS()
class Title {
  // @Ignore
  Title.fakeConstructor$();

  /// @default 1
  external num get alpha;
  external set alpha(num v);

  /// Specifies if the tile is bold or not.
  /// @default false
  external bool get bold;
  external set bold(bool v);

  /// Text color of a title.
  external String get color;
  external set color(String v);

  /// Unique id of a Title. You don't need to set it, unless you want to.
  external String get id;
  external set id(String v);

  /// Text size
  external num get size;
  external set size(num v);

  /// Text of a label
  external String get text;
  external set text(String v);
}
