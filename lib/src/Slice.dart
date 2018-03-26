@JS()
library Slice;

import "package:js/js.dart";

/// Slice is an item of AmPieChart's chartData Array and holds all the information about the slice.
/// When working with a pie chart, you do not create slices or change it's properties directly,
/// instead you set array of data using dataProvider property.
/// Consider properties of a Slice read-only - change values in chart's data provider if you need to.
@JS()
class Slice {
  // @Ignore
  Slice.fakeConstructor$();

  /// Opacity of a slice.
  external num get alpha;
  external set alpha(num v);

  /// Color of a slice.
  external String get color;
  external set color(String v);

  /// Original Object from data provider.
  external Object get dataContext;
  external set dataContext(Object v);

  /// Slice description.
  external String get description;
  external set description(String v);

  /// Specifies whether the slice is hidden
  external bool get hidden;
  external set hidden(bool v);

  /// Percent value of a slice.
  external num get percents;
  external set percents(num v);

  /// Specifies whether the slice is pulled or not.
  external bool get pulled;
  external set pulled(bool v);

  /// Slice title
  external String get title;
  external set title(String v);

  /// Url of a slice
  external String get url;
  external set url(String v);

  /// Value of a slice
  external num get value;
  external set value(num v);

  /// specifies whether this slice has a legend entry
  external bool get visibleInLegend;
  external set visibleInLegend(bool v);
}
