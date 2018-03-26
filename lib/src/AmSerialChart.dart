@JS()
library AmSerialChart;

import "package:js/js.dart";
import "AmRectangularChart.dart" show AmRectangularChart;
import "CategoryAxis.dart" show CategoryAxis;

/// AmSerialChart is the class you have to use for majority of chart types.
/// The supported chart types are: line, area, column, bar, step line, smoothed line, candlestick and OHLC.
/// The chart can be rotated by 90 degrees so the column chart becomes bar chart.
/// The chart supports simple and logarithmic scales, it can have multiple value axes.
/// The chart can place data points at equal intervals or can parse dates and place data points
/// at irregular intervals.
/// @example
/// let chartData = [{title:"sample 1",value:130},{title:"sample 2",value:26}];
/// let chart = new AmCharts.AmSerialChart();
/// chart.categoryField = "title";
/// chart.dataProvider = chartData;
/// let graph = new AmCharts.AmGraph();
/// graph.valueField = "value";
/// graph.type = "column";
/// graph.fillAlphas = 1;
/// chart.addGraph(graph);
/// chart.write("chartdiv");
@JS()
class AmSerialChart extends AmRectangularChart {
  // @Ignore
  AmSerialChart.fakeConstructor$() : super.fakeConstructor$();

  /// Date format of the graph balloon (if chart parses dates and you don't use chartCursor).
  /// @default 'MMM DD, YYYY'
  external String get balloonDateFormat;
  external set balloonDateFormat(String v);

  /// Read-only. Chart creates category axis itself.
  /// If you want to change some properties, you should get this axis from the chart and
  /// set properties to this object.
  external CategoryAxis get categoryAxis;
  external set categoryAxis(CategoryAxis v);

  /// Category field name tells the chart the name of the field in your dataProvider object
  /// which will be used for category axis values.
  external String get categoryField;
  external set categoryField(String v);

  /// The gap in pixels between two columns of the same category.
  /// @default 5
  external num get columnSpacing;
  external set columnSpacing(num v);

  /// Space between 3D stacked columns.
  /// @default 0
  external num get columnSpacing3D;
  external set columnSpacing3D(num v);

  /// Relative width of columns. Value range is 0 - 1.
  /// @default 0.8
  external num get columnWidth;
  external set columnWidth(num v);

  /// Read-only. If category axis parses dates endDate indicates date to which the chart is currently displayed.
  external DateTime get endDate;
  external set endDate(DateTime v);

  /// Read-only. Category index to which the chart is currently displayed.
  external num get endIndex;
  external set endIndex(num v);

  /// Maximum number of series allowed to select.
  external num get maxSelectedSeries;
  external set maxSelectedSeries(num v);

  /// The longest time span allowed to select (in milliseconds) for example
  /// 259200000 will limit selection to 3 days.
  external num get maxSelectedTime;
  external set maxSelectedTime(num v);

  /// The shortest time span allowed to select (in milliseconds) for example
  /// 1000 will limit selection to 1 second.
  /// @default 0
  external num get minSelectedTime;
  external set minSelectedTime(num v);

  /// Specifies if scrolling of a chart with mouse wheel is enabled.
  /// If you press shift while rotating mouse wheel, the chart will zoom-in/out.
  external bool get mouseWheelScrollEnabled;
  external set mouseWheelScrollEnabled(bool v);

  /// Specifies if zooming of a chart with mouse wheel is enabled.
  /// If you press shift while rotating mouse wheel, the chart will scroll.
  external bool get mouseWheelZoomEnabled;
  external set mouseWheelZoomEnabled(bool v);

  /// If you set this to true, the chart will be rotated by 90 degrees (the columns will become bars).
  external bool get rotate;
  external set rotate(bool v);

  /// Read-only.
  /// If category axis parses dates startDate indicates date from which the chart is currently displayed.
  external DateTime get startDate;
  external set startDate(DateTime v);

  /// Read-only. Category index from which the chart is currently displayed.
  external num get startIndex;
  external set startIndex(num v);

  /// Specifies if chart should zoom-out when data is updated.
  /// @default true
  external bool get zoomOutOnDataUpdate;
  external set zoomOutOnDataUpdate(bool v);

  /// Number Returns index of the specified category value.
  external void getCategoryIndexByValue(num value);

  /// Zooms out, charts shows all available data.
  external void zoomOut();

  /// Zooms the chart by the value of the category axis.
  external void zoomToCategoryValues(DateTime start, DateTime end);

  /// Zooms the chart from one date to another.
  external void zoomToDates(DateTime start, DateTime end);

  /// Zooms the chart by the index of the category.
  external void zoomToIndexes(DateTime start, DateTime end);
}
