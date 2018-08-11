@JS()
library GaugeAxis;

import "package:js/js.dart";
import "GaugeBand.dart" show GaugeBand;
import "AmChart.dart" show AmChart;
import "func.dart";

@JS()
class GaugeAxis {
  // @Ignore
  GaugeAxis.fakeConstructor$();

  /// Axis opacity.
  /// @default 1
  external num get axisAlpha;
  external set axisAlpha(num v);

  /// Axis color.
  /// @default #000000
  external String get axisColor;
  external set axisColor(String v);

  /// Thickness of the axis outline.
  /// @default 1
  external num get axisThickness;
  external set axisThickness(num v);

  /// Opacity of band fills.
  /// @default 1
  external num get bandAlpha;
  external set bandAlpha(num v);

  /// Example: [-0.2, 0, -0.2]. Will make bands to be filled with color gradients.
  /// Negative value means the color will be darker than the original,
  /// and positive number means the color will be lighter.
  /// @default []
  external List<num> /*Tuple of <num>*/ get bandGradientRatio;
  external set bandGradientRatio(List<num> /*Tuple of <num>*/ v);

  /// Opacity of band outlines.
  /// @default 0
  external num get bandOutlineAlpha;
  external set bandOutlineAlpha(num v);

  /// Color of band outlines.
  /// @default #000000
  external String get bandOutlineColor;
  external set bandOutlineColor(String v);

  /// Thickness of band outlines.
  /// @default 0
  external num get bandOutlineThickness;
  external set bandOutlineThickness(num v);

  /// Array of bands - GaugeBand Objects. Bands are used to draw color fills between specified values.
  external List<GaugeBand> /*Tuple of <GaugeBand>*/ get bands;
  external set bands(List<GaugeBand> /*Tuple of <GaugeBand>*/ v);

  /// Text displayed below the axis center.
  external String get bottomText;
  external set bottomText(String v);

  /// Specifies if text should be bold.
  /// @default true
  external bool get bottomTextBold;
  external set bottomTextBold(bool v);

  /// Bottom text color.
  external String get bottomTextColor;
  external set bottomTextColor(String v);

  /// Font size of bottom text.
  external num get bottomTextFontSize;
  external set bottomTextFontSize(num v);

  /// Y offset of bottom text.
  /// @default 0
  external num get bottomTextYOffset;
  external set bottomTextYOffset(num v);

  /// X position of the axis, relative to the center of the gauge.
  /// @default '0%'
  external dynamic get centerX;
  external set centerX(dynamic v);

  /// Y position of the axis, relative to the center of the gauge.
  /// @default '0%'
  external dynamic get centerY;
  external set centerY(dynamic v);

  /// Specifies labels color of the axis.
  external String get color;
  external set color(String v);

  /// Axis end angle. Valid values are from - 180 to 180.
  /// @default 120
  external num get endAngle;
  external set endAngle(num v);

  /// Axis end (max) value
  external num get endValue;
  external set endValue(num v);

  /// Font size for axis labels.
  external num get fontSize;
  external set fontSize(num v);

  /// Number of grid lines. Note, GaugeAxis doesn't adjust gridCount,
  /// so you should check your values and choose a proper gridCount which would result grids at round numbers.
  /// @default 5
  external num get gridCount;
  external set gridCount(num v);

  /// Specifies if grid should be drawn inside or outside the axis.
  /// @default true
  external bool get gridInside;
  external set gridInside(bool v);

  /// Unique id of an axis.
  external dynamic get id;
  external set id(dynamic v);

  /// Specifies if labels should be placed inside or outside the axis.
  /// @default true
  external bool get inside;
  external set inside(bool v);

  /// Frequency of labels.
  /// @default 1
  external num get labelFrequency;
  external set labelFrequency(num v);

  /// You can use this function to format axis labels.
  /// This function is called and value is passed as a attribute: labelFunction(value);
  external Func1<num, String> get labelFunction;
  external set labelFunction(Func1<num, String> v);

  /// Distance from axis to the labels.
  /// @default 15
  external num get labelOffset;
  external set labelOffset(num v);

  /// Specifies if labels on the axis should be shown.
  /// @default true
  external bool get labelsEnabled;
  external set labelsEnabled(bool v);

  /// You can add listeners of events using this property.
  /// Example: listeners = [{"event":"clickBand", "method":handleClick}];
  external List<Object> get listeners;
  external set listeners(List<Object> v);

  /// Interval, at which minor ticks should be placed.
  external num get minorTickInterval;
  external set minorTickInterval(num v);

  /// Length of a minor tick.
  /// @default 5
  external num get minorTickLength;
  external set minorTickLength(num v);

  /// Axis radius.
  /// @default '95%'
  external dynamic get radius;
  external set radius(dynamic v);

  /// Specifies if the first label should be shown.
  /// @default true
  external bool get showFirstLabel;
  external set showFirstLabel(bool v);

  /// Specifies if the last label should be shown.
  /// @default true
  external bool get showLastLabel;
  external set showLastLabel(bool v);

  /// Axis start angle. Valid values are from - 180 to 180.
  /// @default -120
  external num get startAngle;
  external set startAngle(num v);

  /// Axis start (min) value.
  /// @default 0
  external num get startValue;
  external set startValue(num v);

  /// Opacity of axis ticks.
  /// @default 1
  external num get tickAlpha;
  external set tickAlpha(num v);

  /// Color of axis ticks.
  /// @default #555555
  external String get tickColor;
  external set tickColor(String v);

  /// Length of a major tick.
  /// @default 10
  external num get tickLength;
  external set tickLength(num v);

  /// Tick thickness.
  /// @default 1
  external num get tickThickness;
  external set tickThickness(num v);

  /// Text displayed above the axis center.
  external String get topText;
  external set topText(String v);

  /// Specifies if text should be bold.
  /// @default true
  external bool get topTextBold;
  external set topTextBold(bool v);

  /// Color of top text.
  external String get topTextColor;
  external set topTextColor(String v);

  /// Font size of top text.
  external num get topTextFontSize;
  external set topTextFontSize(num v);

  /// Y offset of top text.
  /// @default 0
  external num get topTextYOffset;
  external set topTextYOffset(num v);

  /// A string which can be placed next to axis labels.
  external String get unit;
  external set unit(String v);

  /// Position of the unit.
  /// @default right
  external String get unitPosition;
  external set unitPosition(String v);

  /// Specifies if small and big numbers should use prefixes to make them more readable.
  /// @default false
  external bool get usePrefixes;
  external set usePrefixes(bool v);

  /// Interval, at which ticks with values should be placed.
  external num get valueInterval;
  external set valueInterval(num v);

  /// Adds event listener to the Object.
  external void addListener(String type, dynamic handler);

  /// Removes event listener from chart Object.
  external void removeListener(AmChart chart, String type, dynamic handler);

  /// Sets bottom text.
  external void setBottomText(String text);

  /// Sets top text.
  external void setTopText(String textstring);

  /// Returns angle of the value.
  external void value2angle(num value);
}
