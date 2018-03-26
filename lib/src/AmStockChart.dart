@JS()
library AmStockChart;

import "package:js/js.dart";
import "AmBalloon.dart" show AmBalloon;
import "CategoryAxesSettings.dart" show CategoryAxesSettings;
import "ChartCursorSettings.dart" show ChartCursorSettings;
import "ChartScrollbarSettings.dart" show ChartScrollbarSettings;
import "DataSetSelector.dart" show DataSetSelector;
import "LegendSettings.dart" show LegendSettings;
import "DataSet.dart" show DataSet;
import "PanelSettings.dart" show PanelsSettings;
import "PeriodSelector.dart" show PeriodSelector;
import "AmSerialChart.dart" show AmSerialChart;
import "ValueAxesSettings.dart" show ValueAxesSettings;
import "StockPanel.dart" show StockPanel;
import "AmChart.dart" show AmChart;

/// AmStockChart is a main class Stock chart.
@JS()
class AmStockChart {
  // @Ignore
  AmStockChart.fakeConstructor$();

  /// Specifies if animation was already played.
  /// Animation is only played once, when chart is rendered for the first time.
  /// If you want the animation to be repeated, set this property to false.
  external bool get animationPlayed;
  external set animationPlayed(bool v);

  /// Balloon object.
  external AmBalloon get balloon;
  external set balloon(AmBalloon v);

  /// Settings for category axes.
  external CategoryAxesSettings get categoryAxesSettings;
  external set categoryAxesSettings(CategoryAxesSettings v);

  /// Indicates if the chart is created.
  external bool get chartCreated;
  external set chartCreated(bool v);

  /// Chart cursor settings.
  external ChartCursorSettings get chartCursorSettings;
  external set chartCursorSettings(ChartCursorSettings v);

  /// Chart scrollbar settings.
  external ChartScrollbarSettings get chartScrollbarSettings;
  external set chartScrollbarSettings(ChartScrollbarSettings v);

  /// Array of colors used by data sets if no color was set explicitly on data set itself.
  /// [
  /// #FF6600, "#FCD202", "#B0DE09", "#0D8ECF", "#2A0CD0", "#CD0D74", "#CC0000",
  /// "#00CC00", "#0000CC", "#DDDDDD", "#999999", "#333333", "#990000"
  /// ]
  external List<dynamic> get colors;
  external set colors(List<dynamic> v);

  /// Array of data sets selected for comparing.
  external List<dynamic> get comparedDataSets;
  external set comparedDataSets(List<dynamic> v);

  /// Array of DataSets.
  external List<dynamic> get dataSets;
  external set dataSets(List<dynamic> v);

  /// DataSetSelector object.
  /// You can add it if you have more than one data set and want users to be able to select/compare them.
  external DataSetSelector get dataSetSelector;
  external set dataSetSelector(DataSetSelector v);

  /// Current end date of the selected period, get only.
  /// To set start/end dates, use stockChart.zoom(startDate, endDate) method.
  external DateTime get endDate;
  external set endDate(DateTime v);

  /// Defines on which day week starts. 0 - Sunday, 1 - Monday..
  /// @default 1
  external num get firstDayOfWeek;
  external set firstDayOfWeek(num v);

  /// If set to true the scope of the data view will be set to the end after data update.
  external bool get glueToTheEnd;
  external set glueToTheEnd(bool v);

  /// Legend settings.
  external LegendSettings get legendSettings;
  external set legendSettings(LegendSettings v);

  /// Data set selected as main.
  external DataSet get mainDataSet;
  external set mainDataSet(DataSet v);

  /// Array of StockPanels (charts).
  external List<dynamic> get panels;
  external set panels(List<dynamic> v);

  /// Settings for stock panels.
  external PanelsSettings get panelsSettings;
  external set panelsSettings(PanelsSettings v);

  /// Period selector object.
  /// You can add it if you want user's to be able to enter date ranges or
  /// zoom chart with predefined period buttons.
  external PeriodSelector get periodSelector;
  external set periodSelector(PeriodSelector v);

  /// Scrollbar's chart object, get only.
  external AmSerialChart get scrollbarChart;
  external set scrollbarChart(AmSerialChart v);

  /// Current start date of the selected period, get only.
  /// To set start/end dates, use stockChart.zoom(startDate, endDate) method.
  external DateTime get startDate;
  external set startDate(DateTime v);

  /// Settings for stock events.
  external dynamic get stockEventsSettings;
  external set stockEventsSettings(dynamic v);

  /// Settings for value axes.
  external ValueAxesSettings get valueAxesSettings;
  external set valueAxesSettings(ValueAxesSettings v);

  /// read-only. Indicates current version of a script.
  external String get version;
  external set version(String v);

  /// Specifies whether the chart should zoom-out when main data set is changed.
  external bool get zoomOutOnDataSetChange;
  external set zoomOutOnDataSetChange(bool v);

  /// Adds panel to the stock chart. Requires stockChart.validateNow() method to be called after this action.
  external void addPanel(StockPanel panel);

  /// Adds panel to the stock chart at a specified index.
  /// Requires stockChart.validateNow() method to be called after this action.
  external void addPanelAt(StockPanel panel, num index);

  /// Destroys chart, all timeouts and listeners.
  external void clear();

  /// Hides event bullets.
  external void hideStockEvents();

  /// Removes panel from the stock chart. Requires stockChart.validateNow() method to be called after this action.
  external void removePanel(StockPanel panel);

  /// Shows event bullets.
  external void showStockEvents();

  /// Method which should be called after data was changed.
  external void validateData();

  /// Method which forces the stock chart to rebuild. Should be called after properties are changed.
  external void validateNow();

  /// Zooms chart to specified dates. startDate, endDate - Date objects.
  external void zoom(DateTime startDate, DateTime endDate);

  /// Zooms out the chart.
  external void zoomOut();

  /// Adds event listener.
  /// "buildStarted", "clickStockEvent", "dataUpdated", "init", "panelRemoved", "rendered", "rollOutStockEvent",
  /// "rollOverStockEvent", "zoomed".
  external void addListener(
      String type,
      void handler(
          dynamic /*{
                chart: AmStockChart;
                date?: Date;
                endDate?: Date;
                eventObject?: StockEvent;
                graph?: StockGraph;
                panel?: StockPanel;
                period?: string;
                startDate?: Date;
                type: string;
            }*/
          e));

  /// Removes event listener from chart object.
  external void removeListener(AmChart chart, String type, dynamic handler);
}
