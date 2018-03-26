@JS()
library AmPieChart;

import "package:js/js.dart";
import "AmChart.dart" show AmChart;

/// AmPieChart class creates pie/donut chart.
/// In order to display pie chart you need to set at least these three properties
/// dataProvider, titleField and valueField.
/// @example
/// let chartData = [{title:"Pie I have eaten",value:70},{title:"Pie I haven\'t eaten",value:30}];
/// let chart = new AmCharts.AmPieChart();
/// chart.valueField = "value";
/// chart.titleField = "title";
/// chart.dataProvider = chartData;
/// chart.write("chartdiv");
@JS()
class AmPieChart extends AmChart {
  // @Ignore
  AmPieChart.fakeConstructor$() : super.fakeConstructor$();

  /// Name of the field in chart's dataProvider which holds slice's alpha.
  external String get alphaField;
  external set alphaField(String v);

  /// Pie lean angle (for 3D effect). Valid range is 0 - 90.
  external num get angle;
  external set angle(num v);

  /// Balloon text. The following tags can be used:
  /// [[value]], [[title]], [[percents]], [[description]]. [[title]]: [[percents]]% ([[value]])\n[[description]]
  external String get balloonText;
  external set balloonText(String v);

  /// Read-only. Array of Slice objects.
  external List<dynamic> get chartData;
  external set chartData(List<dynamic> v);

  /// Name of the field in chart's dataProvider which holds slice's color.
  external String get colorField;
  external set colorField(String v);

  /// Specifies the colors of the slices, if the slice color is not set.
  /// If there are more slices than colors in this array, the chart picks random color.
  /// [
  /// "#FF0F00", "#FF6600", "#FF9E01", "#FCD202", "#F8FF01", "#B0DE09", "#04D215", "#0D8ECF",
  /// "#0D52D1", "#2A0CD0", "#8A0CCF", "#CD0D74", "#754DEB", "#DDDDDD", "#999999", "#333333",
  /// "#000000", "#57032A", "#CA9726", "#990000", "#4B0C25"
  /// ]
  external List<dynamic> get colors;
  external set colors(List<dynamic> v);

  /// Depth of the pie (for 3D effect).
  external num get depth3D;
  external set depth3D(num v);

  /// Name of the field in chart's dataProvider which holds a string with description.
  external String get descriptionField;
  external set descriptionField(String v);

  /// Example: [-0.2,0.2]. Will make slices to be filled with color gradients.
  external List<num> get gradientRatio;
  external set gradientRatio(List<num> v);

  /// Opacity of the group slice. Value range is 0 - 1.
  /// @default 1
  external num get groupedAlpha;
  external set groupedAlpha(num v);

  /// Color of the group slice. The default value is not set -
  /// this means the next available color from "colors" array will be used.
  external String get groupedColor;
  external set groupedColor(String v);

  /// Description of the group slice.
  external String get groupedDescription;
  external set groupedDescription(String v);

  /// If this is set to true, the group slice will be pulled out when the chart loads.
  external bool get groupedPulled;
  external set groupedPulled(bool v);

  /// Title of the group slice. Other
  external String get groupedTitle;
  external set groupedTitle(String v);

  /// If there is more than one slice whose percentage of the pie is less than this number,
  /// those slices will be grouped together into one slice.
  /// This is the "other" slice. It will always be the last slice in a pie.
  external num get groupPercent;
  external set groupPercent(num v);

  /// Slices with percent less then hideLabelsPercent won't display labels.
  /// This is useful to avoid cluttering up the chart, if you have a lot of small slices.
  /// 0 means all labels will be shown.
  external num get hideLabelsPercent;
  external set hideLabelsPercent(num v);

  /// Opacity of a hovered slice. Value range is 0 - 1.
  /// @default 1
  external num get hoverAlpha;
  external set hoverAlpha(num v);

  /// Inner radius of the pie, in pixels or percents.
  external dynamic get innerRadius;
  external set innerRadius(dynamic v);

  /// The distance between the label and the slice, in pixels.
  /// You can use negative values to put the label on the slice.
  /// @default 30
  external num get labelRadius;
  external set labelRadius(num v);

  /// Name of the field in dataProvider which specifies the length of a tick.
  /// Note, the chart will not try to arrange labels automatically if this property is set.
  external String get labelRadiusField;
  external set labelRadiusField(String v);

  /// Specifies whether data labels are visible.
  /// @default true
  external bool get labelsEnabled;
  external set labelsEnabled(bool v);

  /// Label text. The following tags can be used:
  /// [[value]], [[title]], [[percents]], [[description]]. [[title]]: [[percents]]%
  external String get labelText;
  external set labelText(String v);

  /// Label tick opacity. Value range is 0 - 1. 0.2
  external num get labelTickAlpha;
  external set labelTickAlpha(num v);

  /// Label tick color. #000000
  external String get labelTickColor;
  external set labelTickColor(String v);

  /// Bottom margin of the chart.
  /// @default 5
  external num get marginBottom;
  external set marginBottom(num v);

  /// Left margin of the chart.
  external num get marginLeft;
  external set marginLeft(num v);

  /// Right margin of the chart.
  external num get marginRight;
  external set marginRight(num v);

  /// Top margin of the chart.
  /// @default 5
  external num get marginTop;
  external set marginTop(num v);

  /// Minimum radius of the pie, in pixels.
  /// @default 10
  external num get minRadius;
  external set minRadius(num v);

  /// Pie outline opacity. Value range is 0 - 1.
  external num get outlineAlpha;
  external set outlineAlpha(num v);

  /// Pie outline color. #FFFFFF
  external String get outlineColor;
  external set outlineColor(String v);

  /// Pie outline thickness.
  /// @default 1
  external num get outlineThickness;
  external set outlineThickness(num v);

  /// Opacity of the slices. You can set the opacity of individual slice too.
  /// @default 1
  external num get pieAlpha;
  external set pieAlpha(num v);

  /// Color of the first slice. All the other will be colored with darker or brighter colors.
  external String get pieBaseColor;
  external set pieBaseColor(String v);

  /// Lightness increase of each subsequent slice. This is only useful if pieBaseColor is set.
  /// Use negative values for darker colors. Value range is from -255 to 255.
  /// @default 30
  external num get pieBrightnessStep;
  external set pieBrightnessStep(num v);

  /// You can set fixed position of a pie center, in pixels or in percents.
  external dynamic get pieX;
  external set pieX(dynamic v);

  /// You can set fixed position of a pie center, in pixels or in percents.
  external dynamic get pieY;
  external set pieY(dynamic v);

  /// Name of the field in chart's dataProvider which holds a boolean value
  /// telling the chart whether this slice must be pulled or not.
  external String get pulledField;
  external set pulledField(String v);

  /// Pull out duration, in seconds.
  /// @default 1
  external num get pullOutDuration;
  external set pullOutDuration(num v);

  /// Pull out effect. Possible values are ">", "<", elastic" and "bounce". bounce
  external String get pullOutEffect;
  external set pullOutEffect(String v);

  /// If this is set to true, only one slice can be pulled out at a time.
  /// If the viewer clicks on a slice, any other pulled-out slice will be pulled in.
  external bool get pullOutOnlyOne;
  external set pullOutOnlyOne(bool v);

  /// Pull out radius, in pixels or percents 0.2
  external dynamic get pullOutRadius;
  external set pullOutRadius(dynamic v);

  /// Radius of a pie, in pixels or percents. By default, radius is calculated automatically.
  external dynamic get radius;
  external set radius(dynamic v);

  /// Specifies whether the animation should be sequenced or all slices should appear at once.
  external bool get sequencedAnimation;
  external set sequencedAnimation(bool v);

  /// Initial opacity of all slices. If you set startDuration higher than 0, slices will fade in from startAlpha.
  /// @default 1
  external num get startAlpha;
  external set startAlpha(num v);

  /// Angle of the first slice, in degrees. This will work properly only if "depth3D" is set to 0.
  /// If "depth3D" is greater than 0, then there can be two angles only: 90 and 270. Value range is 0-360.
  /// @default 90
  external num get startAngle;
  external set startAngle(num v);

  /// Duration of the animation, in seconds.
  /// @default 1
  external num get startDuration;
  external set startDuration(num v);

  /// Animation effect. Possible values are ">", "<", "elastic" and "bounce". bounce
  external String get startEffect;
  external set startEffect(String v);

  /// Radius of the positions from which the slices will fly in.
  /// @default 5
  external dynamic get startRadius;
  external set startRadius(dynamic v);

  /// Name of the field in chart's dataProvider which holds slice's title.
  external String get titleField;
  external set titleField(String v);

  /// Name of the field in chart's dataProvider
  /// which holds url which would be accessed if the user clicks on a slice.
  external String get urlField;
  external set urlField(String v);

  /// If url is specified for a slice, it will be opened when user clicks on it.
  /// urlTarget specifies target of this url. Use _blank if you want url to be opened in a new window. _self
  external String get urlTarget;
  external set urlTarget(String v);

  /// Name of the field in chart's dataProvider which holds slice's value.
  external String get valueField;
  external set valueField(String v);

  /// Name of the field in chart's dataProvider which holds boolean variable
  /// defining whether this data item should have an entry in the legend.
  external String get visibleInLegendField;
  external set visibleInLegendField(String v);

  /// You can trigger the animation of the pie chart.
  external void animateAgain();

  /// You can trigger the click on a slice from outside. index - the number of a slice or Slice object.
  external void clickSlice(num index);

  /// Hides slice. index - the number of a slice or Slice object.
  external void hideSlice(num index);

  /// You can simulate roll-out of a slice from outside. index - the number of a slice or Slice object.
  external void rollOutSlice(num index);

  /// You can simulate roll-over a slice from outside. index - the number of a slice or Slice object.
  external void rollOverSlice(num index);

  /// Shows slice. index - the number of a slice or Slice object.
  external void showSlice(num index);

  /// Adds event listener of the type "clickSlice" or "pullInSlice" or "pullOutSlice" to the object.
  /// If the type is "clickSlice", dispatched when user clicks on a slice.
  /// If the type is "pullInSlice", dispatched when user clicks on a slice and the slice is pulled-in.
  /// If the type is "pullOutSlice", dispatched when user clicks on a slice and the slice is pulled-out.
  /// If the type is "rollOutSlice", dispatched when user rolls-out of the slice.
  /// If the type is "rollOverSlice", dispatched when user rolls-over the slice.
  external void addListener(
      String type,
      void handler(
          dynamic /*{
                type: string; // Always "rollOverSlice".
                dataItem: Slice;
                chart: AmChart;
            }*/
          e));
}
