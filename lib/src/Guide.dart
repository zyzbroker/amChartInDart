@JS()
library Guide;

import "package:js/js.dart";
import "ValueAxis.dart" show ValueAxis;

/// Guides are straight vertical or horizontal lines or areas supported by AmSerialChart, AmXYChart and AmRadarChart.
/// You can have guides both on value and category axes.
/// To add/remove a guide to an axis, use axis.addGuide(guide)/axis.removeGuide(guide) methods.
/// If you do not set properties such as dashLength, lineAlpha, lineColor, etc - values of the axis are used.
@JS()
class Guide {
  // @Ignore
  Guide.fakeConstructor$();

  /// If you set it to true, the guide will be displayed above the graphs.
  external bool get above;
  external set above(bool v);

  /// Radar chart only. Specifies angle at which guide should start. Affects only fills, not lines.
  external num get angle;
  external set angle(num v);

  /// Baloon fill color.
  external String get balloonColor;
  external set balloonColor(String v);

  /// The text which will be displayed if the user rolls-over the guide.
  external String get balloonText;
  external set balloonText(String v);

  /// Specifies if label should be bold or not.
  external bool get boldLabel;
  external set boldLabel(bool v);

  /// Category of the guide (in case the guide is for category axis).
  external String get category;
  external set category(String v);

  /// Dash length.
  external num get dashLength;
  external set dashLength(num v);

  /// Date of the guide (in case the guide is for category axis and parseDates is set to true).
  external DateTime get date;
  external set date(DateTime v);

  /// Works if a guide is added to CategoryAxis and this axis is non-date-based.
  /// If you set it to true, the guide will start (or be placed, if it's not a fill) on the
  /// beginning of the category cell and will end at the end of toCategory cell.
  external bool get expand;
  external set expand(bool v);

  /// Fill opacity. Value range is 0 - 1.
  external num get fillAlpha;
  external set fillAlpha(num v);

  /// Fill color.
  external String get fillColor;
  external set fillColor(String v);

  /// Font size of guide label.
  external String get fontSize;
  external set fontSize(String v);

  /// Unique id of a Guide. You don't need to set it, unless you want to.
  external String get id;
  external set id(String v);

  /// Specifies whether label should be placed inside or outside plot area.
  external bool get inside;
  external set inside(bool v);

  /// The label which will be displayed near the guide.
  external String get label;
  external set label(String v);

  /// Rotation angle of a guide label.
  external num get labelRotation;
  external set labelRotation(num v);

  /// Line opacity.
  external num get lineAlpha;
  external set lineAlpha(num v);

  /// Line color.
  external String get lineColor;
  external set lineColor(String v);

  /// Line thickness.
  external num get lineThickness;
  external set lineThickness(num v);

  /// Position of guide label. Possible values are "left" or "right" for horizontal axis
  /// and "top" or "bottom" for vertical axis.
  external String get position;
  external set position(String v);

  /// Tick length.
  external num get tickLength;
  external set tickLength(num v);

  /// Radar chart only. Specifies angle at which guide should end. Affects only fills, not lines.
  external num get toAngle;
  external set toAngle(num v);

  /// To category of the guide (in case the guide is for category axis).
  external String get toCategory;
  external set toCategory(String v);

  /// To date of the guide (in case the guide is for category axis and parseDates is set to true).
  /// If you have both date and toDate, the space between these two dates can be filled with color.
  external DateTime get toDate;
  external set toDate(DateTime v);

  /// To value of the guide (in case the guide is for value axis).
  external num get toValue;
  external set toValue(num v);

  /// Value of the guide (in case the guide is for value axis).
  external num get value;
  external set value(num v);

  /// Value axis of a guide. As you can add guides directly to the chart,
  /// you might need to specify which which value axis should be used.
  external ValueAxis get valueAxis;
  external set valueAxis(ValueAxis v);
}
