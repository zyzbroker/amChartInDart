@JS()
library ValueAxis;

import "package:js/js.dart";
import "AxisBase.dart" show AxisBase;
import "Guide.dart" show Guide;
import "AmChart.dart" show AmChart;

/// ValueAxis is the class which displays value axis for the chart. The chart can have any number of value axes.
/// For Serial chart one value axis is created automatically.
/// For XY Chart two value axes (horizontal and vertical) are created automatically.
@JS()
class ValueAxis extends AxisBase {
  // @Ignore
  ValueAxis.fakeConstructor$() : super.fakeConstructor$();

  /// Radar chart only. Specifies distance from axis to the axis title (category)  10
  external num get axisTitleOffset;
  external set axisTitleOffset(num v);

  /// Read-only. Coordinate of the base value.
  external num get baseCoord;
  external set baseCoord(num v);

  /// Specifies base value of the axis.
  external num get baseValue;
  external set baseValue(num v);

  /// If your values represents time units, and you want value axis labels to be formatted as duration,
  /// you have to set the duration unit. Possible values are: "ss", "mm", "hh" and "DD".
  external String get duration;
  external set duration(String v);

  /// If duration property is set, you can specify what string should be displayed next to day,
  /// hour, minute and second.
  /// {DD:"d. ", hh:":", mm:":",ss:""}
  external dynamic /*{ DD: string; hh: string; mm: string; ss: string }*/ get durationUnits;
  external set durationUnits(
      dynamic /*{ DD: string; hh: string; mm: string; ss: string }*/ v);

  /// Radar chart only. Possible values are: "polygons" and "circles". Set "circles" for polar charts.
  /// @default "polygons"
  external String get gridType;
  external set gridType(String v);

  /// Unique id of value axis. It is not required to set it, unless you need to tell the graph which exact
  /// value axis it should use.
  external String get id;
  external set id(String v);

  /// Specifies whether guide values should be included when calculating min and max of the axis.
  external bool get includeGuidesInMinMax;
  external set includeGuidesInMinMax(bool v);

  /// If true, the axis will include hidden graphs when calculating min and max values.
  external bool get includeHidden;
  external set includeHidden(bool v);

  /// Specifies whether values on axis can only be integers or both integers and doubles.
  external bool get integersOnly;
  external set integersOnly(bool v);

  /// You can use this function to format Value axis labels.
  /// This function is called and these parameters are passed: labelFunction(value, valueText, valueAxis);
  /// Where value is numeric value, valueText is formatted string and valueAxis is a reference to valueAxis object.
  /// If axis type is "date", labelFunction will pass different arguments:
  /// labelFunction(valueText, date, valueAxis)
  /// Your function should return string.
  /*external String labelFunction(num value, String valueText, ValueAxis valueAxis);*/
  /*external String labelFunction(
    String valueText, DateTime data, ValueAxis valueAxis);*/
  external String labelFunction(dynamic /*num|String*/ value_valueText,
      dynamic /*String|DateTime*/ valueText_data, ValueAxis valueAxis);

  /// Specifies if this value axis' scale should be logarithmic.
  external bool get logarithmic;
  external set logarithmic(bool v);

  /// Read-only. Maximum value of the axis.
  external num get max;
  external set max(num v);

  /// If you don't want max value to be calculated by the chart, set it using this property.
  /// This value might still be adjusted so that it would be possible to draw grid at rounded intervals.
  external num get maximum;
  external set maximum(num v);

  /// If your value axis is date-based, you can specify maximum date of the axis.
  /// Can be set as date object, timestamp number or string if dataDateFormat is set.
  external DateTime get maximumData;
  external set maximumData(DateTime v);

  /// Read-only. Minimum value of the axis.
  external num get min;
  external set min(num v);

  /// If you don't want min value to be calculated by the chart, set it using this property.
  /// This value might still be adjusted so that it would be possible to draw grid at rounded intervals.
  external num get minimum;
  external set minimum(num v);

  /// If your value axis is date-based, you can specify minimum date of the axis.
  /// Can be set as date object, timestamp number or string if dataDateFormat is set.
  external DateTime get minimumDate;
  external set minimumDate(DateTime v);

  /// If set value axis scale (min and max numbers) will be multiplied by it.
  /// I.e. if set to 1.2 the scope of values will increase by 20%.
  external num get minMaxMultiplier;
  external set minMaxMultiplier(num v);

  /// Works with radar charts only.
  /// If you set it to “middle”, labels and data points will be placed in the middle between axes.
  external String get pointPosition;
  external set pointPosition(String v);

  /// Possible values are: "top", "bottom", "left", "right".
  /// If axis is vertical, default position is "left". If axis is horizontal, default position is "bottom".
  external String get position;
  external set position(String v);

  /// Precision (number of decimals) of values.
  external num get precision;
  external set precision(num v);

  /// Radar chart only. Specifies if categories (axes' titles) should be displayed near axes)
  /// @default true
  external bool get radarCategoriesEnabled;
  external set radarCategoriesEnabled(bool v);

  /// pecifies if graphs's values should be recalculated to percents.
  external bool get recalculateToPercents;
  external set recalculateToPercents(bool v);

  /// Specifies if value axis should be reversed (smaller values on top).
  external bool get reversed;
  external set reversed(bool v);

  /// Stacking mode of the axis.
  /// Possible values are: "none", "regular", "100%", "3d".
  /// Note, only graphs of one type will be stacked.
  /// @default "none"
  external String get stackType;
  external set stackType(String v);

  /// Read-only. Value difference between two grid lines.
  external num get step;
  external set step(num v);

  /// If you set minimum and maximum for your axis, chart adjusts them so that grid would start and end on the
  /// beginning and end of plot area and grid would be at equal intervals.
  /// If you set strictMinMax to true, the chart will not adjust minimum and maximum of value axis.
  external bool get strictMinMax;
  external set strictMinMax(bool v);

  /// In case you synchronize one value axis with another, you need to set the synchronization multiplier.
  /// Use synchronizeWithAxis method to set with which axis it should be synced.
  external num get synchronizationMultiplier;
  external set synchronizationMultiplier(num v);

  /// One value axis can be synchronized with another value axis.
  /// You can use both reference to your axis or id of the axis here.
  /// You should set synchronizationMultiplyer in order for this to work.
  external ValueAxis get synchronizeWith;
  external set synchronizeWith(ValueAxis v);

  /// If this value axis is stacked and has columns, setting valueAxis.totalText = "[[total]]" will make it
  /// to display total value above the most-top column.
  external String get totalText;
  external set totalText(String v);

  /// Color of total text.
  external String get totalTextColor;
  external set totalTextColor(String v);

  /// Distance from data point to total text.
  external num get totalTextOffset;
  external set totalTextOffset(num v);

  /// This allows you to have logarithmic value axis and have zero values in the data.
  /// You must set it to >0 value in order to work.
  external num get treatZeroAs;
  external set treatZeroAs(num v);

  /// Type of value axis.
  /// If your values in data provider are dates and you want this axis to show dates instead of numbers,
  /// set it to "date".
  external String get type;
  external set type(String v);

  /// Unit which will be added to the value label.
  external String get unit;
  external set unit(String v);

  /// Position of the unit. Possible values are "left" and "right". right
  external String get unitPosition;
  external set unitPosition(String v);

  /// If true, prefixes will be used for big and small numbers.
  /// You can set arrays of prefixes directly to the chart object
  /// via prefixesOfSmallNumbers and prefixesOfBigNumbers.
  external bool get usePrefixes;
  external set usePrefixes(bool v);

  /// If true, values will always be formatted using scientific notation (5e+8, 5e-8...)
  /// Otherwise only values bigger then 1e+21 and smaller then 1e-7 will be displayed in scientific notation.
  external bool get useScientificNotation;
  external set useScientificNotation(bool v);

  /// Adds guide to the axis.
  external void addGuide(Guide guide);

  /// Number, - value of coordinate. Returns value of the coordinate.  coordinate - y or x coordinate, in pixels.
  external void coordinateToValue(num coordinate);

  /// Number - coordinate Returns coordinate of the value in pixels. value - Number
  external void getCoordinate(num value);

  /// Removes guide from the axis.
  external void removeGuide(Guide guide);

  /// One value axis can be synchronized with another value axis.
  /// You should set synchronizationMultiplyer in order for this to work.
  external void synchronizeWithAxis(ValueAxis axis);

  /// XY Chart only. Zooms-in the axis to the provided values.
  external void zoomToValues(num startValue, num endValue);

  /// Adds event listener.
  external void addListener(
      String type,
      void handler(
          dynamic /*{
                type: string;
                startValue?: Date;
                endValue?: Date;
                chart: AmChart;
            }*/
          e));

  /// Removes event listener from chart object.
  external void removeListener(AmChart chart, String type, dynamic handler);
}
