@JS()
library AxisBase;

import "package:js/js.dart";
import "Guide.dart" show Guide;

/// AxisBase is the base class for ValueAxis and CategoryAxis. It can not be instantiated explicitly.
@JS()
class AxisBase {
  // @Ignore
  AxisBase.fakeConstructor$();

  /// Specifies whether number of gridCount is specified automatically, acoarding to the axis size.
  /// @default true
  external bool get autoGridCount;
  external set autoGridCount(bool v);

  /// Axis opacity. Value range is 0 - 1.
  /// @default 1
  external num get axisAlpha;
  external set axisAlpha(num v);

  /// Axis color.  #000000
  external String get axisColor;
  external set axisColor(String v);

  /// Thickness of the axis.
  /// @default 1
  external num get axisThickness;
  external set axisThickness(num v);

  /// Color of axis value labels. Will use chart's color if not set.
  external String get color;
  external set color(String v);

  /// Length of a dash. 0 means line is not dashed.
  external num get dashLength;
  external set dashLength(num v);

  /// Fill opacity. Every second space between grid lines can be filled with color.
  /// Set fillAlpha to a value greater than 0 to see the fills.
  external num get fillAlpha;
  external set fillAlpha(num v);

  /// Fill color. Every second space between grid lines can be filled with color.
  /// Set fillAlpha to a value greater than 0 to see the fills.
  /// @default "#FFFFFF"
  external String get fillColor;
  external set fillColor(String v);

  /// Size of value labels text. Will use chart's fontSize if not set.
  external String get fontSize;
  external set fontSize(String v);

  /// Opacity of grid lines. 0.2
  external num get gridAlpha;
  external set gridAlpha(num v);

  /// Color of grid lines. #000000
  external String get gridColor;
  external set gridColor(String v);

  /// Number of grid lines. In case this is value axis, or your categoryAxis parses dates,
  /// the number is approximate. The default value is 5. If you set autoGridCount to true,
  /// this property is ignored.
  /// @default 5
  external num get gridCount;
  external set gridCount(num v);

  /// Thickness of grid lines.
  /// @default 1
  external num get gridThickness;
  external set gridThickness(num v);

  /// The array of guides belonging to this axis.
  external List<dynamic> get guides;
  external set guides(List<dynamic> v);

  /// If autoMargins of a chart is set to true, but you want this axis not to be measured when calculating margin,
  /// set ignoreAxisWidth to true.
  external bool get ignoreAxisWidth;
  external set ignoreAxisWidth(bool v);

  /// Specifies whether values should be placed inside or outside plot area.
  external bool get inside;
  external set inside(bool v);

  /// Frequency at which labels should be placed. Doesn't work for CategoryAxis if parseDates is set to true.
  /// @default 1
  external num get labelFrequency;
  external set labelFrequency(num v);

  /// Rotation angle of a label. Only horizontal axis' values can be rotated.
  /// If you set this for vertical axis, the setting will be ignored.
  external num get labelRotation;
  external set labelRotation(num v);

  /// Specifies whether axis displays category axis' labels and value axis' values.
  /// @default true
  external bool get labelsEnabled;
  external set labelsEnabled(bool v);

  /// The distance of the axis to the plot area, in pixels. Negative values can also be used.
  external num get offset;
  external set offset(num v);

  /// Possible values are: "top", "bottom", "left", "right".
  /// If axis is vertical, default position is "left".
  /// If axis is horizontal, default position is "bottom".
  external String get position;
  external set position(String v);

  /// Whether to show first axis label or not.
  /// @default true
  external bool get showFirstLabel;
  external set showFirstLabel(bool v);

  /// Whether to show last axis label or not.
  /// @default true
  external bool get showLastLabel;
  external set showLastLabel(bool v);

  /// Length of the tick marks.
  /// @default 5
  external num get tickLength;
  external set tickLength(num v);

  /// Title of the axis.
  external String get title;
  external set title(String v);

  /// Specifies if title should be bold or not.
  /// @default true
  external bool get titleBold;
  external set titleBold(bool v);

  /// Color of axis title. Will use text color of chart if not set any.
  external String get titleColor;
  external set titleColor(String v);

  /// Font size of axis title. Will use font size of chart plus two pixels if not set any.
  external String get titlefontSize;
  external set titlefontSize(String v);

  /// Adds guide to the axis.
  external void addGuide(Guide guide);

  /// Removes guide from the axis.
  external void removeGuide(Guide guide);
}
