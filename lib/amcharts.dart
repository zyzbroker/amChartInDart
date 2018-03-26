@JS()
library amcharts;

import "package:js/js.dart";
import "package:amchart.js/src/AmAngularGauge.dart";
import "package:amchart.js/src/AmBalloon.dart";
import "package:amchart.js/src/AmChart.dart";
import "package:amchart.js/src/AmCoordinateChart.dart";
import "package:amchart.js/src/AmGraph.dart";
import "package:amchart.js/src/AmLegend.dart";
import "package:amchart.js/src/AmPieChart.dart";
import "package:amchart.js/src/AmRadarChart.dart";
import "package:amchart.js/src/AmRectangularChart.dart";
import "package:amchart.js/src/AmSerialChart.dart";
import "package:amchart.js/src/AmXYChart.dart";
import "package:amchart.js/src/AxisBase.dart";
import "package:amchart.js/src/CategoryAxis.dart";
import "package:amchart.js/src/ChartCursor.dart";
import "package:amchart.js/src/ChartScrollbar.dart";
import "package:amchart.js/src/GaugeArrow.dart";
import "package:amchart.js/src/GaugeAxis.dart";
import "package:amchart.js/src/GaugeBand.dart" ;
import "package:amchart.js/src/GraphDataItem.dart";
import "package:amchart.js/src/Guide.dart";
import "package:amchart.js/src/Label.dart";
import "package:amchart.js/src/SerialDataItem.dart";
import "package:amchart.js/src/Slice.dart";
import "package:amchart.js/src/Title.dart";
import "package:amchart.js/src/TrendLine.dart";
import "package:amchart.js/src/ValueAxis.dart";

/// Type definitions for amCharts 3.21
/// Project: http://www.amcharts.com/
/// Definitions by: ldrick <https://github.com/ldrick>
/// Definitions: https://github.com/DefinitelyTyped/DefinitelyTyped
/// TypeScript Version: 2.2
/// import _AmFunnelChart from "./AmFunnelChart";
/// import _AmGanttChart from "./AmGanttChart";
/// import _AmSlicedChart from "./AmSlicedChart";
/// import _Image from "./Image";

/// AmCharts namespace is create automatically when amcharts.js or amstock.js file is included.

// Module AmCharts
/// Set it to true if you have base href set for your page.
/// This will fix rendering problems in Firefox caused by base href.
@JS("AmCharts.baseHref")
external bool get baseHref;
@JS("AmCharts.baseHref")
external set baseHref(bool v);

/// Array of day names, used when formatting dates (if categoryAxis.parseDates is set to true)
/// ['Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday']
@JS("AmCharts.dayNames")
external List<String> get dayNames;
@JS("AmCharts.dayNames")
external set dayNames(List<String> v);

/// Array of month names, used when formatting dates (if categoryAxis.parseDates is set to true)
/// [
/// 'January', 'February', 'March', 'April', 'May', 'June', 'July', 'August',
/// 'September', 'October', 'November','December'
/// ]
@JS("AmCharts.monthNames")
external List<String> get monthNames;
@JS("AmCharts.monthNames")
external set monthNames(List<String> v);

/// Array of short versions of day names, used when formatting dates (if categoryAxis.parseDates is set to true)
/// ['Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat']
@JS("AmCharts.shortDayNames")
external List<String> get shortDayNames;
@JS("AmCharts.shortDayNames")
external set shortDayNames(List<String> v);

/// Array of short versions of month names, used when formatting dates (if categoryAxis.parseDates is set to true)
/// ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec']
@JS("AmCharts.shortMonthNames")
external List<String> get shortMonthNames;
@JS("AmCharts.shortMonthNames")
external set shortMonthNames(List<String> v);

/// Set it to true if you want UTC time to be used instead of local time.
@JS("AmCharts.useUTC")
external bool get useUTC;
@JS("AmCharts.useUTC")
external set useUTC(bool v);

/// Set global used AmCharts theme.
@JS("AmCharts.theme")
external dynamic get theme;
@JS("AmCharts.theme")
external set theme(dynamic v);

/// Object with existing themes.
@JS("AmCharts.themes")
external dynamic get themes;
@JS("AmCharts.themes")
external set themes(dynamic v);

/// Clears all the charts on page, removes listeners and intervals.
@JS("AmCharts.clear")
external void clear();

/// Create chart by params.
@JS("AmCharts.makeChart")
external AmChart makeChart(String selector, dynamic params, [num delay]);

/// Set a method to be called before initializing the chart.
/// When the method is called, the chart instance is passed as an attribute.
/// You can use this feature to preprocess chart data or do some other things you need
/// before initializing the chart.
/// if none is passed.
@JS("AmCharts.addInitHandler")
external dynamic addInitHandler(dynamic /*{}*/ handler(), [List<String> types]);

@JS("AmCharts.AmAngularGauge")
class zAngularGauge extends AmAngularGauge {
  // @Ignore
  zAngularGauge.fakeConstructor$() : super.fakeConstructor$();
  external factory zAngularGauge();
}

@JS("AmCharts.AmBalloon")
class zBalloon extends AmBalloon {
  // @Ignore
  zBalloon.fakeConstructor$() : super.fakeConstructor$();
}

@JS("AmCharts.AmChart")
class zChart extends AmChart {
  // @Ignore
  zChart.fakeConstructor$() : super.fakeConstructor$();
}

@JS("AmCharts.AmCoordinateChart")
class zCoordinateChart extends AmCoordinateChart {
  // @Ignore
  zCoordinateChart.fakeConstructor$() : super.fakeConstructor$();
}

/// class AmFunnelChart extends _AmFunnelChart { }
/// class AmGanttChart extends _AmGanttChart { }
@JS("AmCharts.AmGraph")
class zGraph extends AmGraph {
  // @Ignore
  zGraph.fakeConstructor$() : super.fakeConstructor$();
}

@JS("AmCharts.AmLegend")
class zLegend extends AmLegend {
  // @Ignore
  zLegend.fakeConstructor$() : super.fakeConstructor$();
}

@JS("AmCharts.AmPieChart")
class zPieChart extends AmPieChart {
  // @Ignore
  zPieChart.fakeConstructor$() : super.fakeConstructor$();
}

@JS("AmCharts.AmRadarChart")
class zRadarChart extends AmRadarChart {
  // @Ignore
  zRadarChart.fakeConstructor$() : super.fakeConstructor$();
}

@JS("AmCharts.AmRectangularChart")
class zRectangularChart extends AmRectangularChart {
  // @Ignore
  zRectangularChart.fakeConstructor$() : super.fakeConstructor$();
}

@JS("AmCharts.AmSerialChart")
class zSerialChart extends AmSerialChart {
  // @Ignore
  zSerialChart.fakeConstructor$() : super.fakeConstructor$();
}

/// class AmSlicedChart extends _AmSlicedChart { }
@JS("AmCharts.AmXYChart")
class zXYChart extends AmXYChart {
  // @Ignore
  zXYChart.fakeConstructor$() : super.fakeConstructor$();
}

@JS("AmCharts.AxisBase")
class zAxisBase extends AxisBase {
  // @Ignore
  zAxisBase.fakeConstructor$() : super.fakeConstructor$();
}

@JS("AmCharts.CategoryAxis")
class zCategoryAxis extends CategoryAxis {
  // @Ignore
  zCategoryAxis.fakeConstructor$() : super.fakeConstructor$();
}

@JS("AmCharts.ChartCursor")
class zChartCursor extends ChartCursor {
  // @Ignore
  zChartCursor.fakeConstructor$() : super.fakeConstructor$();
}

@JS("AmCharts.ChartScrollbar")
class zChartScrollbar extends ChartScrollbar {
  // @Ignore
  zChartScrollbar.fakeConstructor$() : super.fakeConstructor$();
}

@JS("AmCharts.GaugeArrow")
class zGaugeArrow extends GaugeArrow {
  // @Ignore
  zGaugeArrow.fakeConstructor$() : super.fakeConstructor$();

  external factory zGaugeArrow();
}

@JS("AmCharts.GaugeAxis")
class zGaugeAxis extends GaugeAxis {
  // @Ignore
  zGaugeAxis.fakeConstructor$() : super.fakeConstructor$();
  external factory zGaugeAxis();
}

@JS("AmCharts.GaugeBand")
class zGaugeBand extends GaugeBand {
  // @Ignore
  zGaugeBand.fakeConstructor$() : super.fakeConstructor$();
  external factory zGaugeBand();
}

@JS("AmCharts.GraphDataItem")
class zGraphDataItem extends GraphDataItem {
  // @Ignore
  zGraphDataItem.fakeConstructor$() : super.fakeConstructor$();
}

@JS("AmCharts.Guide")
class zGuide extends Guide {
  // @Ignore
  zGuide.fakeConstructor$() : super.fakeConstructor$();
}

/// class Image extends _Image { }
@JS("AmCharts.Label")
class zLabel extends Label {
  // @Ignore
  zLabel.fakeConstructor$() : super.fakeConstructor$();
}

@JS("AmCharts.SerialDataItem")
class zSerialDataItem extends SerialDataItem {
  // @Ignore
  zSerialDataItem.fakeConstructor$() : super.fakeConstructor$();
}

@JS("AmCharts.Slice")
class zSlice extends Slice {
  // @Ignore
  zSlice.fakeConstructor$() : super.fakeConstructor$();
}

@JS("AmCharts.Title")
class zTitle extends Title {
  // @Ignore
  zTitle.fakeConstructor$() : super.fakeConstructor$();
}

@JS("AmCharts.TrendLine")
class zTrendLine extends TrendLine {
  // @Ignore
  zTrendLine.fakeConstructor$() : super.fakeConstructor$();
}

@JS("AmCharts.ValueAxis")
class zValueAxis extends ValueAxis {
  // @Ignore
  zValueAxis.fakeConstructor$() : super.fakeConstructor$();
}

// End module AmCharts
