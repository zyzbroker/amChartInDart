@JS()
library CategoryAxis;

import "package:js/js.dart";
import "AxisBase.dart" show AxisBase;

@JS()
class CategoryAxis extends AxisBase {
  // @Ignore
  CategoryAxis.fakeConstructor$() : super.fakeConstructor$();

  /// When parse dates is on for the category axis, the chart will try to highlight the beginning of the periods,
  /// like month, in bold. Set this to false to disable the functionality.
  /// @default true
  external bool get boldPeriodBeginning;
  external set boldPeriodBeginning(bool v);

  /// Date formats of different periods. Possible period values:
  /// fff - milliseconds, ss - seconds, mm - minutes, hh - hours, DD - days, MM - months, WW - weeks, YYYY - years.
  /// Check this page for date formatting strings.
  /// [
  /// {period:'fff',format:'JJ:NN:SS'},
  /// {period:'ss',format:'JJ:NN:SS'},
  /// {period:'mm',format:'JJ:NN'},
  /// {period:'hh',format:'JJ:NN'},
  /// {period:'DD',format:'MMM DD'},
  /// {period:'WW',format:'MMM DD'},
  /// {period:'MM',format:'MMM'},
  /// {period:'YYYY',format:'YYYY'}
  /// ]
  external List<dynamic> get dateFormats;
  external set dateFormats(List<dynamic> v);

  /// In case your category axis values are Date objects and parseDates is set to true,
  /// the chart will parse dates and will place your data points at irregular intervals.
  /// However if you want dates to be parsed (displayed on the axis, baloons, etc),
  /// but data points to be placed at equal intervals (omiting dates with no data), set equalSpacing to true.
  external bool get equalSpacing;
  external set equalSpacing(bool v);

  /// Field in data provider which specifies if the category value should always be shown.
  /// For example: categoryAxis.forceShowField = "forceShow";
  /// Field in data provider which specifies if the category value should always be shown.
  /// For example: categoryAxis.forceShowField = "forceShow";
  /// And in data:
  /// {category:"one", forceShow:true, value:100}
  /// Note, this works only when parseDates is set to false.
  external String get forceShowField;
  external set forceShowField(String v);

  /// Specifies if a grid line is placed on the center of a cell or on the beginning of a cell.
  /// Possible values are: "start" and "middle" This setting doesn't work if parseDates is set to true.
  /// @default "middle"
  external String get gridPosition;
  external set gridPosition(String v);

  /// Specifies if minor grid should be displayed.
  /// NOTE: If equalSpacing is set to true, this setting will be ignored.
  /// @default false
  external bool get minorGridEnabled;
  external set minorGridEnabled(bool v);

  /// Specifies the shortest period of your data. This should be set only if parseDates is set to "true".
  /// Possible period values:
  /// fff - milliseconds, ss - seconds, mm - minutes, hh - hours, DD - days, MM - months, YYYY - years.
  /// @default "DD"
  external String get minPeriod;
  external set minPeriod(String v);

  /// In case your category axis values are Date objects, set this to true.
  /// In this case the chart will parse dates and will place your data points at irregular intervals.
  /// If you want dates to be parsed, but data points to be placed at equal intervals,
  /// set both parseDates and equalSpacing to true.
  external bool get parseDates;
  external set parseDates(bool v);

  /// Specifies whether the graph should start on axis or not.
  /// In case you display columns, it is recommended to set this to false.
  /// If parseDates is set to true, startOnAxis will allways be false, unless equalSpacing is set to true.
  external bool get startOnAxis;
  external set startOnAxis(bool v);

  /// Works only when parseDates is set to true and equalSpacing is false.
  /// If you set it to true, at the position where bigger period changes,
  /// category axis will display date strings of bot small and big period, in two rows.
  /// @default false
  external bool get twoLineMode;
  external set twoLineMode(bool v);

  /// Use line color for bullet
  /// @default false
  external bool get useLineColorForBulletBorder;
  external set useLineColorForBulletBorder(bool v);

  /// Number returns coordinate of a category. Works only if parseDates is false.
  /// If parseDates is true, use dateToCoordinate method.
  external void categoryToCoordinate(String category);

  /// date - Date object Returns Date of the coordinate, in case parseDates is set to true and
  /// equalSpacing is set to false.
  external void coordinateToDate(num coordinate);

  /// Number Returns coordinate of the date, in case parseDates is set to true.
  /// If parseDates is false, use categoryToCoordinate method.
  external void dateToCoordinate(DateTime date);

  /// Number Returns index of the category which is most close to specified coordinate.
  external void xToIndex(num x);
}
