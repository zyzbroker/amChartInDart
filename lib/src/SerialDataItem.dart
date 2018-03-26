@JS()
library SerialDataItem;

import "package:js/js.dart";

/// SerialDataItem holds all the information about each series.
/// When working with a chart, you do not create SerialDataItem Objects or change it's properties directly.
/// Consider properties of a SerialDataItem read-only - change values in chart's data provider if you need to.
/// When serial chart parses dataProvider, it generates "chartData" array.
/// Objects of this array are SerialDataItem Objects.
@JS()
class SerialDataItem {
  // @Ignore
  SerialDataItem.fakeConstructor$();

  /// You can access each GraphDataItem using this Object.
  /// The data structure is: graphDataItem = serialDataItem.axes[axisId].graphs[graphId].
  external Object get axes;
  external set axes(Object v);

  /// category value. String if parseDates is false, Date if true.
  external dynamic get category;
  external set category(dynamic v);

  /// Timestamp of a series date. Avalable only if parseDates property of CategoryAxis is set to true.
  external num get time;
  external set time(num v);

  /// Coordinate (horizontal or vertical, depends on chart's rotate property) of the series.
  external num get x;
  external set x(num v);
}
