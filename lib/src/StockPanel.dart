@JS()
library StockPanel;

import "package:js/js.dart";
import "AmSerialChart.dart" show AmSerialChart;
import "ValueAxis.dart" show ValueAxis;
import "StockGraph.dart" show StockGraph;
import "StockLegend.dart" show StockLegend;

/// StockPanel class creates stock panels (charts). AmStockChart can have multiple Stock panels.
@JS()
class StockPanel extends AmSerialChart {
  // @Ignore
  StockPanel.fakeConstructor$() : super.fakeConstructor$();

  /// Specifies whether x button will be displayed near the panel. This button allows turning panel off.
  external bool get allowTurningOff;
  external set allowTurningOff(bool v);

  /// If true, drawing icons will be displayed in top-right corner.
  external bool get drawingIconsEnabled;
  external set drawingIconsEnabled(bool v);

  /// Specifies on which value axis user can draw trend lines.
  /// Set drawingIconsEnabled to true if you want drawing icons to be visible.
  /// First value axis will be used if not set here.
  external ValueAxis get drawOnAxis;
  external set drawOnAxis(ValueAxis v);

  /// Specifies if all trend lines should be erased when erase button is clicked.
  /// If false, trend lines can be erased one by one.
  external bool get eraseAll;
  external set eraseAll(bool v);

  /// Size of trend line drawing icons.
  /// If you change this size, you should update icon images if you want them to look properly.
  /// @default 18
  external num get iconSize;
  external set iconSize(num v);

  /// Relative height of panel. Possible values 0 - 100.
  external num get percentHeight;
  external set percentHeight(num v);

  /// Specifies when values should be recalculated to percents.
  /// Possible values are: "never", "always", "whenComparing".
  /// @default "whenComparing"
  external String get recalculateToPercents;
  external set recalculateToPercents(String v);

  /// Specifies whether this panel will show category axis.
  /// @default true
  external bool get showCategoryAxis;
  external set showCategoryAxis(bool v);
  external List<StockGraph> get stockGraphs;
  external set stockGraphs(List<StockGraph> v);

  /// Stock chart legend.
  external StockLegend get stockLegend;
  external set stockLegend(StockLegend v);

  /// Title of a panel. Note, StockLegend should be added in order title to be displayed.
  external String get title;
  external set title(String v);

  /// Trend line opacity.
  /// @default 1
  external num get trendLineAlpha;
  external set trendLineAlpha(num v);

  /// Trend line color. #00CC00
  external String get trendLineColor;
  external set trendLineColor(String v);

  /// Trend line dash length.
  external num get trendLineDashLength;
  external set trendLineDashLength(num v);

  /// Trend line thickness.
  /// @default 2
  external num get trendLineThickness;
  external set trendLineThickness(num v);

  /// Adds a graph to the panel.
  external void addStockGraph(StockGraph graph);

  /// Removes graph from the panel.
  external void removeStockGraph(StockGraph graph);
}
