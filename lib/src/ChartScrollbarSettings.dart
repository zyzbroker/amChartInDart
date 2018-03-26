@JS()
library ChartScrollbarSettings;

import "package:js/js.dart";
import "AmGraph.dart" show AmGraph;

/// ChartScrollbarSettings settings set's settings for chart scrollbar.
/// If you change a property after the chart is initialized, you should call stockChart.validateNow() method in
/// order for it to work. If there is no default value specified, default value of ChartScrollbar class will be used.
@JS()
class ChartScrollbarSettings {
  // @Ignore
  ChartScrollbarSettings.fakeConstructor$();

  /// Specifies whether number of gridCount is specified automatically, according to the axis size.
  /// @default true
  external bool get autoGridCount;
  external set autoGridCount(bool v);

  /// Background opacity.
  external num get backgroundAlpha;
  external set backgroundAlpha(num v);

  /// Background color of the scrollbar.
  external String get backgroundColor;
  external set backgroundColor(String v);

  /// Text color.
  external String get color;
  external set color(String v);

  /// Set false if you don't need scrollbar.
  /// @default true
  external bool get enabled;
  external set enabled(bool v);

  /// Font size.
  external String get fontSize;
  external set fontSize(String v);

  /// Specifies which graph will be displayed in the scrollbar.
  external AmGraph get graph;
  external set graph(AmGraph v);

  /// Graph fill opacity.
  external num get graphFillAlpha;
  external set graphFillAlpha(num v);

  /// Graph fill color.
  external String get graphFillColor;
  external set graphFillColor(String v);

  /// Graph line opacity.
  external num get graphLineAlpha;
  external set graphLineAlpha(num v);

  /// Graph line color.
  external String get graphLineColor;
  external set graphLineColor(String v);

  /// Type of chart scrollbar's graph.
  /// By default the graph type is the same as the original graph's type, however in case of "candlestick" or
  /// "ohlc" you might want to show line graph in the scrollbar.
  /// Possible values are: line, column, step, smoothedLine, candlestick, ohlc.
  external String get graphType;
  external set graphType(String v);

  /// Grid opacity.
  external num get gridAlpha;
  external set gridAlpha(num v);

  /// Grid color.
  external String get gridColor;
  external set gridColor(String v);

  /// Grid count. You should set autoGridCount to false in order this property to work.
  external num get gridCount;
  external set gridCount(num v);

  /// Height of scrollbar, in pixels.
  /// @default 40
  external num get height;
  external set height(num v);

  /// Specifies whether resize grips are hidden when mouse is away from the scrollbar.
  external bool get hideResizeGrips;
  external set hideResizeGrips(bool v);

  /// Duration of scrolling, when the user clicks on scrollbar's background, in seconds.
  external num get scrollDuration;
  external set scrollDuration(num v);

  /// Selected background opacity.
  external num get selectedBackgroundAlpha;
  external set selectedBackgroundAlpha(num v);

  /// Selected background color.
  external String get selectedBackgroundColor;
  external set selectedBackgroundColor(String v);

  /// Selected graph'sfill opacity.
  external num get selectedGraphFillAlpha;
  external set selectedGraphFillAlpha(num v);

  /// Selected graph'sfill color.
  external String get selectedGraphFillColor;
  external set selectedGraphFillColor(String v);

  /// Selected graph'sline opacity.
  external num get selectedGraphLineAlpha;
  external set selectedGraphLineAlpha(num v);

  /// Selected graph's line color.
  external String get selectedGraphLineColor;
  external set selectedGraphLineColor(String v);

  /// Specifies if the chart should be updated while dragging/resizing the scrollbar or only at the moment when
  /// user releases mouse button. Usefull when working with large data sets.
  /// @default true
  external bool get updateOnReleaseOnly;
  external set updateOnReleaseOnly(bool v);
}
