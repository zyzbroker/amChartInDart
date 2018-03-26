@JS()
library AmBalloon;

import "package:js/js.dart";

/// AmBalloon is the class which generates balloons (datatips).
/// Balloon follows the mouse when you roll-over the pie slice/line bullet/column/etc, chart indicator of
/// serial charts displays value balloons and category balloon.
/// Balloon instance is created by the chart automatically and can be accessed via "balloon" property of AmChart.
/// Chart shows/hides and sets position for every balloon automatically,
/// so all you need to do is to change balloon appearance, if you want to.
/// @example
/// let chart = new AmCharts.AmSerialChart();
/// // get balloon intance
/// let balloon = chart.balloon;
/// // set properties
/// balloon.adjustBorderColor = true;
/// balloon.color = "#000000";
/// balloon.cornerRadius = 5;
/// balloon.fillColor = "#FFFFFF";
@JS()
class AmBalloon {
  // @Ignore
  AmBalloon.fakeConstructor$();

  /// If this is set to true, border color instead of background color will be changed
  /// when user rolls-over the slice, graph, etc.
  external bool get adjustBorderColor;
  external set adjustBorderColor(bool v);

  /// Balloon border opacity. Value range is 0 - 1.
  /// @default 1
  external num get borderAlpha;
  external set borderAlpha(num v);

  /// Balloon border color. #FFFFFF
  external String get borderColor;
  external set borderColor(String v);

  /// Balloon border thickness.
  /// @default 2
  external num get borderThickness;
  external set borderThickness(num v);

  /// Color of text in the balloon. #FFFFFF
  external String get color;
  external set color(String v);

  /// Balloon corner radius.
  /// @default 6
  external num get cornerRadius;
  external set cornerRadius(num v);

  /// Balloon background opacity.
  /// @default 1
  external num get fillAlpha;
  external set fillAlpha(num v);

  /// Balloon background color. Usually balloon background color is set by the chart.
  /// Only if "adjustBorderColor" is "true" this color will be used.
  /// @default "#CC0000"
  external String get fillColor;
  external set fillColor(String v);

  /// Size of text in the balloon. Chart's fontSize is used by default.
  external String get fontSize;
  external set fontSize(String v);

  /// Horizontal padding of the balloon.
  /// @default 8
  external num get horizontalPadding;
  external set horizontalPadding(num v);

  /// The width of the pointer (arrow) "root". Only used if cornerRadius is 0.
  /// @default 10
  external num get pointerWidth;
  external set pointerWidth(num v);

  /// If cornerRadius of a balloon is >0, showBullet is set to true for value balloons when ChartCursor is used.
  /// If you don't want the bullet near the balloon, set it to false: chart.balloon.showBullet = false
  external bool get showBullet;
  external set showBullet(bool v);

  /// Text alignment, possible values "left", "middle" and "right" middle
  external String get textAlign;
  external set textAlign(String v);

  /// Color of the text shadow. #000000
  external String get textShadowColor;
  external set textShadowColor(String v);

  /// Vertical padding of the balloon.
  /// @default 5
  external num get verticalPadding;
  external set verticalPadding(num v);

  /// Hides balloon.
  external void hide();

  /// Defines a square within which the balloon should appear.
  /// Bounds are set by chart class, you don't need to call this method yourself.
  external void setBounds(num left, num top, num right, num bottom);

  /// Sets coordinates the balloon should point to.
  external void setPosition(num x, num y);

  /// Specifies the text which should be displayed.
  external void show(String value);
}
