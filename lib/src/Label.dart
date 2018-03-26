@JS()
library Label;

import "package:js/js.dart";

/// Creates a label on the chart which can be placed anywhere, multiple can be assigned.
@JS()
class Label {
  // @Ignore
  Label.fakeConstructor$();

  /// @Default 'left'
  external String get align;
  external set align(String v);

  /// @Default 1
  external num get alpha;
  external set alpha(num v);

  /// Specifies if label is bold or not.
  external bool get bold;
  external set bold(bool v);

  /// Color of a label
  external String get color;
  external set color(String v);

  /// Unique id of a Label. You don't need to set it, unless you want to.
  external String get id;
  external set id(String v);

  /// Rotation angle.
  external num get rotation;
  external set rotation(num v);

  /// Text size
  external num get size;
  external set size(num v);

  /// Text of a label
  external String get text;
  external set text(String v);

  /// URL which will be access if user clicks on a label.
  external String get url;
  external set url(String v);

  /// X position of a label.
  external dynamic /*num|String*/ get x;
  external set x(dynamic /*num|String*/ v);

  /// y position of a label.
  external dynamic /*num|String*/ get y;
  external set y(dynamic /*num|String*/ v);
}
