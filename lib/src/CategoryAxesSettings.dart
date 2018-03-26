@JS()
library CategoryAxesSettings;

import "package:js/js.dart";

/// CategoryAxesSettings settings set's settings common for all CategoryAxes of StockPanels.
/// If you change a property after the chart is initialized, you should call stockChart.validateNow() method in
/// order for it to work. If there is no default value specified, default value of CategoryAxis class will be used.
@JS()
class CategoryAxesSettings {
  // @Ignore
  CategoryAxesSettings.fakeConstructor$();

  /// Specifies whether number of gridCount is specified automatically, according to the axis size.
  /// @default true
  external bool get autoGridCount;
  external set autoGridCount(bool v);

  /// Axis opacity.
  external num get axisAlpha;
  external set axisAlpha(num v);

  /// Axis color.
  external String get axisColor;
  external set axisColor(String v);

  /// Height of category axes. Set it to 0 if you set inside property to true.
  /// @default 28
  external num get axisHeight;
  external set axisHeight(num v);

  /// Thickness of the axis.
  external num get axisThickness;
  external set axisThickness(num v);

  /// Text color.
  external String get color;
  external set color(String v);

  /// Length of a dash.
  external num get dashLength;
  external set dashLength(num v);

  /// Date formats of different periods.
  /// Possible period values:
  /// fff - milliseconds,
  /// ss - seconds,
  /// mm - minutes,
  /// hh - hours,
  /// DD - days,
  /// MM - months,
  /// WW - weeks,
  /// YYYY - years
  /// Check this page for date formatting strings.
  external List<dynamic> get dateFormats;
  external set dateFormats(List<dynamic> v);

  /// If you want data points to be placed at equal intervals (omiting dates with no data),
  /// set equalSpacing to true.
  external bool get equalSpacing;
  external set equalSpacing(bool v);

  /// Fill opacity. Every second space between grid lines can be filled with fillColor.
  external num get fillAlpha;
  external set fillAlpha(num v);

  /// Fill color. Every second space between grid lines can be filled with color.
  /// Set fillAlpha to a value greater than 0 to see the fills.
  external String get fillColor;
  external set fillColor(String v);

  /// Text size.
  external String get fontSize;
  external set fontSize(String v);

  /// Opacity of grid lines.
  external num get gridAlpha;
  external set gridAlpha(num v);

  /// Color of grid lines.
  external String get gridColor;
  external set gridColor(String v);

  /// Approximate number of grid lines.
  /// You should set autoGridCount to false in order this property not to be ignored.
  /// @default 10
  external num get gridCount;
  external set gridCount(num v);

  /// Thickness of grid lines.
  external num get gridThickness;
  external set gridThickness(num v);

  /// Periods to which data will be gruoped in case there are more data items in
  /// the selected period than specified in maxSeries property.
  /// ["ss", "10ss", "30ss", "mm", "10mm", "30mm", "hh", "DD", "WW", "MM", "YYYY"]
  external List<dynamic> get groupToPeriods;
  external set groupToPeriods(List<dynamic> v);

  /// Specifies whether values should be placed inside or outside of plot area.
  external bool get inside;
  external set inside(bool v);

  /// Rotation angle of a label.
  external num get labelRotation;
  external set labelRotation(num v);

  /// Maximum series shown at a time.
  /// In case there are more data points in the selection than maxSeries,
  /// the chart will group data to longer periods, for example - you have 250 days in the selection,
  /// and maxSeries is 150 - the chart will group data to weeks.
  /// @default 150
  external num get maxSeries;
  external set maxSeries(num v);

  /// Specifies the shortest period of your data.
  /// fff - millisecond,
  /// ss - second,
  /// mm - minute,
  /// hh - hour,
  /// DD - day,
  /// MM - month,
  /// YYYY - year
  /// @default "DD"
  external String get minPeriod;
  external set minPeriod(String v);

  /// top or "bottom".
  external String get position;
  external set position(String v);

  /// Specifies whether the graph should start on axis or not.
  /// In case you display columns, it is recommended to set this to false.
  /// startOnAxis can be set to true only if equalSpacing is set to true.
  external bool get startOnAxis;
  external set startOnAxis(bool v);

  /// Tick length.
  external num get tickLength;
  external set tickLength(num v);
}
