@JS()
library AmRectangularChart;

import "package:js/js.dart";
import "AmCoordinateChart.dart" show AmCoordinateChart;
import "ChartCursor.dart" show ChartCursor;
import "ChartScrollbar.dart" show ChartScrollbar;
import "TrendLine.dart" show TrendLine;

/// AmRectangularChart is a base class of AmSerialChart and AmXYChart. It can not be instantiated explicitly.
@JS()
class AmRectangularChart extends AmCoordinateChart {
  // @Ignore
  AmRectangularChart.fakeConstructor$() : super.fakeConstructor$();

  /// The angle of the 3D part of plot area. This creates a 3D effect (if the "depth3D" is > 0).
  /// @default 0
  external num get angle;
  external set angle(num v);

  /// Space left from axis labels/title to the chart's outside border, if autoMargins set to true.
  /// @default 10
  external num get autoMarginOffset;
  external set autoMarginOffset(num v);

  /// Specifies if margins of a chart should be calculated automatically so that labels of axes would fit.
  /// The chart will adjust only margins with axes.
  /// Other margins will use values set with marginRight, marginTop, marginLeft and marginBottom properties.
  /// @default true
  external bool get autoMargins;
  external set autoMargins(bool v);

  /// Cursor of a chart.
  external ChartCursor get chartCursor;
  external set chartCursor(ChartCursor v);

  /// Chart scrollbar.
  external ChartScrollbar get chartScrollbar;
  external set chartScrollbar(ChartScrollbar v);

  /// The depth of the 3D part of plot area. This creates a 3D effect (if the "angle" is > 0).
  /// @default 0
  external num get depth3D;
  external set depth3D(num v);

  /// Number of pixels between the container's bottom border and plot area.
  /// This space can be used for bottom axis' values.
  /// If autoMargin is true and bottom side has axis, this property is ignored.
  /// @default 20
  external num get marginBottom;
  external set marginBottom(num v);

  /// Number of pixels between the container's left border and plot area.
  /// This space can be used for left axis' values.
  /// If autoMargin is true and left side has axis, this property is ignored.
  /// @default 20
  external num get marginLeft;
  external set marginLeft(num v);

  /// Number of pixels between the container's right border and plot area.
  /// This space can be used for Right axis' values.
  /// If autoMargin is true and right side has axis, this property is ignored.
  /// @default 20
  external num get marginRight;
  external set marginRight(num v);

  /// Flag which should be set to false if you need margins to be recalculated on next chart.validateNow() call.
  /// @default false
  external bool get marginsUpdated;
  external set marginsUpdated(bool v);

  /// Number of pixels between the container's top border and plot area.
  /// This space can be used for top axis' values.
  /// If autoMargin is true and top side has axis, this property is ignored.
  /// @default 20
  external num get marginTop;
  external set marginTop(num v);

  /// The opacity of plot area's border. Value range is 0 - 1.
  /// @default 0
  external num get plotAreaBorderAlpha;
  external set plotAreaBorderAlpha(num v);

  /// The color of the plot area's border.
  /// Note, the it is invisible by default, as plotAreaBorderAlpha default value is 0.
  /// Set it to a value higher than 0 to make it visible.
  /// @default '#000000'
  external String get plotAreaBorderColor;
  external set plotAreaBorderColor(String v);

  /// Opacity of plot area. Plural form is used to keep the same property names as our Flex charts'.
  /// Flex charts can accept array of numbers to generate gradients.
  /// Although you can set array here, only first value of this array will be used.
  /// @default 0
  external num get plotAreaFillAlphas;
  external set plotAreaFillAlphas(num v);

  /// You can set both one color if you need a solid color or array of colors to generate gradients, for example:
  /// ["#000000", "#0000CC"]
  /// @default '#FFFFFF'
  external dynamic get plotAreaFillColors;
  external set plotAreaFillColors(dynamic v);

  /// If you are using gradients to fill the plot area, you can use this property to set gradient angle.
  /// The only allowed values are horizontal and vertical: 0, 90, 180, 270.
  /// @default 0
  external num get plotAreaGradientAngle;
  external set plotAreaGradientAngle(num v);

  /// Array of trend lines added to a chart.
  /// You can add trend lines to a chart using this array or access already existing trend lines
  external List<TrendLine> get trendLines;
  external set trendLines(List<TrendLine> v);

  /// Opacity of zoom-out button background.
  /// @default 0
  external num get zoomOutButtonAlpha;
  external set zoomOutButtonAlpha(num v);

  /// Zoom-out button background color.
  /// @default '#e5e5e5'
  external String get zoomOutButtonColor;
  external set zoomOutButtonColor(String v);

  /// Name of zoom-out button image. In the images folder there is another lens image, called lensWhite.png.
  /// You might want to have white lens when background is dark. Or you can simply use your own image.
  /// @default lens.png
  external String get zoomOutButtonImage;
  external set zoomOutButtonImage(String v);

  /// Size of zoom-out button image
  /// @default: 17
  external num get zoomOutButtonImageSize;
  external set zoomOutButtonImageSize(num v);

  /// Padding around the text and image.
  /// @default: 8
  external num get zoomOutButtonPadding;
  external set zoomOutButtonPadding(num v);

  /// Opacity of zoom-out button background when mouse is over it.
  /// @default: 1
  external num get zoomOutButtonRollOverAlpha;
  external set zoomOutButtonRollOverAlpha(num v);

  /// Text in the zoom-out button. Show all
  external String get zoomOutText;
  external set zoomOutText(String v);

  /// Adds a ChartCursor object to a chart
  external void addChartCursor(ChartCursor cursor);

  /// Adds a ChartScrollbar to a chart
  external void addChartScrollbar(ChartScrollbar scrollbar);

  /// Adds a TrendLine to a chart.
  /// You should call chart.validateNow() after this method is called in order the trend line to be visible.
  external void addTrendLine(TrendLine trendLine);

  /// Removes cursor from the chart
  external void removeChartCursor();

  /// Removes scrollbar from the chart
  external void removeChartScrollbar();

  /// Removes a trend line from a chart.
  /// You should call chart.validateNow() in order the changes to be visible.
  external void removeTrendLine(TrendLine trendLine);
}
