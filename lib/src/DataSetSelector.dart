@JS()
library DataSetSelector;

import "package:js/js.dart";

/// DataSetSelector is a tool for selecting data set's as main and for comparing with main data set.
@JS()
class DataSetSelector {
  // @Ignore
  DataSetSelector.fakeConstructor$();

  /// Text displayed in the "compare to" combobox (when position is "top" or "bottom"). Select...
  external String get comboBoxSelectText;
  external set comboBoxSelectText(String v);

  /// Text displayed near "compare to" list. Compare to:
  external String get compareText;
  external set compareText(String v);

  /// The maximum height of the Compare to field in pixels.
  /// @default 150
  external num get listHeight;
  external set listHeight(num v);

  /// Possible values: "right", "left", "top", "bottom". "top" and "bottom" positions has a limitation -
  /// only one data set can be selected for comparing.
  /// @default "left"
  external String get position;
  external set position(String v);

  /// Text displayed near "Select" dropDown. Select:
  external String get selectText;
  external set selectText(String v);

  /// Width of a Data set selector, when position is "left" or "right".
  /// @default 180
  external num get width;
  external set width(num v);
}
