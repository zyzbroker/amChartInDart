@JS()
library ValueAxesSettings;

import "package:js/js.dart";

/// ValueAxesSettings settings sets settings for all ValueAxes.
/// If you change a property after the chart is initialized,
/// you should call stockChart.validateNow() method in order for it to work.
/// If there is no default value specified, default value of ValueAxis class will be used.
@JS()
class ValueAxesSettings {
  // @Ignore
  ValueAxesSettings.fakeConstructor$();

  /// Specifies whether number for gridCount is specified automatically, according to the axis size.
  /// @default true
  external bool get autoGridCount;
  external set autoGridCount(bool v);

  /// Axis opacity.
  external num get axisAlpha;
  external set axisAlpha(num v);

  /// Axis color.
  external String get axisColor;
  external set axisColor(String v);

  /// Thickness of the axis.
  external num get axisThickness;
  external set axisThickness(num v);

  /// Label color.
  external String get color;
  external set color(String v);

  /// Length of a dash. By default, the grid line is not dashed.
  external num get dashLength;
  external set dashLength(num v);

  /// Fill opacity. Every second space between grid lines can be filled with color.
  external num get fillAlpha;
  external set fillAlpha(num v);

  /// Fill color. Every second space between grid lines can be filled with color.
  /// Set fillAlpha to a value greater than 0 to see the fills.
  external String get fillColor;
  external set fillColor(String v);

  /// Opacity of grid lines.
  external num get gridAlpha;
  external set gridAlpha(num v);

  /// Color of grid lines.
  external String get gridColor;
  external set gridColor(String v);

  /// Approximate number of grid lines. autoGridCount should be set to false,
  /// otherwise this property will be ignored.
  external num get gridCount;
  external set gridCount(num v);

  /// Thickness of grid lines.
  external num get gridThickness;
  external set gridThickness(num v);

  /// Specifies whether guide values should be included when calculating min and max of the axis.
  external bool get includeGuidesInMinMax;
  external set includeGuidesInMinMax(bool v);

  /// If true, the axis will include hidden graphs when calculating min and max values.
  external bool get includeHidden;
  external set includeHidden(bool v);

  /// Specifies whether values should be placed inside or outside plot area.
  /// In case you set this to false, you'll have to adjust marginLeft or marginRight in
  /// [[PanelsSettings]] in order labels to be visible.
  /// @default true
  external bool get inside;
  external set inside(bool v);

  /// Specifies whether values on axis can only be integers or both integers and doubles.
  external bool get integersOnly;
  external set integersOnly(bool v);

  /// Frequency at which labels should be placed.
  external num get labelFrequency;
  external set labelFrequency(num v);

  /// Specifies whether value labels are displayed.
  external bool get labelsEnabled;
  external set labelsEnabled(bool v);

  /// Set to true if value axis is logarithmic, false otherwise.
  external bool get logarithmic;
  external set logarithmic(bool v);

  /// The distance of the axis to the plot area, in pixels. Useful if you have more then one axis on the same side.
  external num get offset;
  external set offset(num v);

  /// Position of the value axis. Possible values are "left" and "right".
  external String get position;
  external set position(String v);

  /// Set to true if value axis is reversed (smaller values on top), false otherwise.
  external bool get reversed;
  external set reversed(bool v);

  /// Specifies if first label of value axis should be displayed.
  external bool get showFirstLabel;
  external set showFirstLabel(bool v);

  /// Specifies if last label of value axis should be displayed.
  external bool get showLastLabel;
  external set showLastLabel(bool v);

  /// Stacking mode of the axis. Possible values are: "none", "regular", "100%", "3d".
  external String get stackType;
  external set stackType(String v);

  /// Tick length.
  external num get tickLength;
  external set tickLength(num v);

  /// Unit which will be added to the value label.
  external String get unit;
  external set unit(String v);

  /// Position of the unit. Possible values are "left" or "right".
  external String get unitPosition;
  external set unitPosition(String v);
}
