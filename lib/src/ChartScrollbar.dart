@JS()
library ChartScrollbar;

import "package:js/js.dart";
import "CategoryAxis.dart" show CategoryAxis;
import "AmGraph.dart" show AmGraph;

/// ChartScrollbar class displays chart scrollbar. Supported by AmSerialChart and AmXYChart.
/// @example
/// let chart = new AmCharts.AmSerialChart();
/// let chartScrollbar = new AmCharts.ChartScrollbar();
/// chart.addChartScrollbar(chartScrollbar);
@JS()
class ChartScrollbar {
  // @Ignore
  ChartScrollbar.fakeConstructor$();

  /// Specifies whether number of gridCount is specified automatically, acoarding to the axis size.
  external bool get autoGridCount;
  external set autoGridCount(bool v);

  /// Background opacity.
  /// @default 1
  external num get backgroundAlpha;
  external set backgroundAlpha(num v);

  /// Background color of the scrollbar.
  /// @default #D4D4D4
  external String get backgroundColor;
  external set backgroundColor(String v);

  /// Read-only. Category axis of the scrollbar.
  external CategoryAxis get categoryAxis;
  external set categoryAxis(CategoryAxis v);

  /// Text color. Will use chart's color if not set.
  external String get color;
  external set color(String v);

  /// Specifies which graph will be displayed in the scrollbar. Only Serial chart's scrollbar can display a graph.
  external AmGraph get graph;
  external set graph(AmGraph v);

  /// Graph fill opacity. Value range is 0 - 1.  0.1
  external num get graphFillAlpha;
  external set graphFillAlpha(num v);

  /// Graph fill color. #000000
  external String get graphFillColor;
  external set graphFillColor(String v);

  /// Graph line opacity. Value range is 0 - 1.
  external num get graphLineAlpha;
  external set graphLineAlpha(num v);

  /// Graph line color. #000000
  external String get graphLineColor;
  external set graphLineColor(String v);

  /// By default the graph type is the same as the original graph's type,
  /// however in case of "candlestick" or "ohlc" you might want to show line graph in the scrollbar.
  /// Possible values are: "line", "column", "step", "smoothedLine", "candlestick", "ohlc".
  external String get graphType;
  external set graphType(String v);

  /// Grid opacity. Value range is 0 - 1. 0.7
  external num get gridAlpha;
  external set gridAlpha(num v);

  /// Grid color. #FFFFFF
  external String get gridColor;
  external set gridColor(String v);

  /// The number of grid lines.
  external num get gridCount;
  external set gridCount(num v);

  /// Specifies whether resize grips are hidden when mouse is away from the scrollbar.
  external bool get hideResizeGrips;
  external set hideResizeGrips(bool v);

  /// Specifies whether scrollbar has a resize feature.
  /// @default true
  external bool get resizeEnabled;
  external set resizeEnabled(bool v);

  /// Height (width, if chart is rotated) of a scrollbar.
  /// @default 20
  external num get scrollbarHeight;
  external set scrollbarHeight(num v);

  /// Duration of scrolling, when the user clicks on scrollbar's background, in seconds.
  /// @default 2
  external num get scrollDuration;
  external set scrollDuration(num v);

  /// Selected backround opacity.
  /// @default 1
  external num get selectedBackgroundAlpha;
  external set selectedBackgroundAlpha(num v);

  /// Selected background color. #EFEFEF
  external String get selectedBackgroundColor;
  external set selectedBackgroundColor(String v);

  /// Selected graph's fill opacity. Value range is 0 - 1. 0.5
  external num get selectedGraphFillAlpha;
  external set selectedGraphFillAlpha(num v);

  /// Selected graph's fill color. #000000
  external String get selectedGraphFillColor;
  external set selectedGraphFillColor(String v);

  /// Selected graph's line opacity. Value range is 0 - 1.
  external num get selectedGraphLineAlpha;
  external set selectedGraphLineAlpha(num v);

  /// Selected graph's line color. #000000
  external String get selectedGraphLineColor;
  external set selectedGraphLineColor(String v);

  /// Specifies if the chart should be updated while dragging/resizing the scrollbar or only at the moment
  /// when user releases mouse button.
  external bool get updateOnReleaseOnly;
  external set updateOnReleaseOnly(bool v);
}
