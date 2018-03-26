@JS()
library ChartCursorSettings;

import "package:js/js.dart";

/// ChartCursorSettings settings set's settings for chart cursor.
/// If you change a property after the chart is initialized, you should call stockChart.validateNow() method
/// in order for it to work. If there is no default value specified, default value of ChartCursor class will be used.
@JS()
class ChartCursorSettings {
  // @Ignore
  ChartCursorSettings.fakeConstructor$();

  /// Specifies if bullet for each graph will follow the cursor.
  external bool get bulletsEnabled;
  external set bulletsEnabled(bool v);

  /// Size of bullets, following the cursor.
  external num get bulletSize;
  external set bulletSize(num v);

  /// Opacity of the category balloon.
  external num get categoryBalloonAlpha;
  external set categoryBalloonAlpha(num v);

  /// Color of the category balloon.
  external String get categoryBalloonColor;
  external set categoryBalloonColor(String v);

  /// Array of date format objects. Date format object must have "period" and "format" items.
  /// Available periods are:
  /// fff - millisecond,
  /// ss - second,
  /// mm - minute,
  /// hh - hour,
  /// DD - date,
  /// WW - week,
  /// MM - month,
  /// YYYY - year
  /// [
  /// {period:"YYYY", format:"YYYY"},
  /// {period:"MM", format:"MMM, YYYY"},
  /// {period:"WW", format:"MMM DD, YYYY"},
  /// {period:"DD", format:"MMM DD, YYYY"},
  /// {period:"hh", format:"JJ:NN"},
  /// {period:"mm", format:"JJ:NN"},
  /// {period:"ss", format:"JJ:NN:SS"},
  /// {period:"fff", format:"JJ:NN:SS"}
  /// ]
  external List<dynamic> get categoryBalloonDateFormats;
  external set categoryBalloonDateFormats(List<dynamic> v);

  /// Specifies whether category balloon is enabled.
  external bool get categoryBalloonEnabled;
  external set categoryBalloonEnabled(bool v);

  /// Opacity of the cursor line.
  external num get cursorAlpha;
  external set cursorAlpha(num v);

  /// Color of the cursor line.
  external String get cursorColor;
  external set cursorColor(String v);

  /// Possible values: "start", "middle" and "mouse".
  external String get cursorPosition;
  external set cursorPosition(String v);

  /// Set this to "false" if you don't want chart cursor to appear in your charts.
  /// @default true
  external bool get enabled;
  external set enabled(bool v);

  /// If this is set to true, the user will be able to pan the chart instead of zooming.
  external bool get pan;
  external set pan(bool v);

  /// Specifies whether value balloons are enabled.
  /// In case they are not, the balloons might be displayed anyway, when the user rolls-over the column or bullet.
  external bool get valueBalloonsEnabled;
  external set valueBalloonsEnabled(bool v);

  /// Specifies if the user can zoom-in the chart.
  /// If pan is set to true, zoomable is switched to false automatically.
  external bool get zoomable;
  external set zoomable(bool v);
}
