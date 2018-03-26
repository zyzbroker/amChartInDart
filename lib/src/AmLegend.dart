@JS()
library AmLegend;

import "package:js/js.dart";
import "AmChart.dart" show AmChart;

/// AmLegend is the class that displays legend of the chart.
/// Legend to the chart should be added using chart.addLegend(legend) method.
/// @example
/// let chart = new AmCharts.AmSerialChart();
/// let legend = new AmCharts.AmLegend();
/// chart.addLegend(legend);
@JS()
class AmLegend {
  // @Ignore
  AmLegend.fakeConstructor$();

  /// Alignment of legend entries. Possible values are: "left", "center", "right". left
  external String get align;
  external set align(String v);

  /// Used if chart is Serial or XY.
  /// In case true, margins of the legend are adjusted and made equal to chart's margins.
  /// @default true
  external bool get autoMargins;
  external set autoMargins(bool v);

  /// Opacity of legend's background. Value range is 0 - 1
  external num get backgroundAlpha;
  external set backgroundAlpha(num v);

  /// Background color. You should set backgroundAlpha to >0 vallue in order background to be visible.
  /// @default "#FFFFFF"
  external String get backgroundColor;
  external set backgroundColor(String v);

  /// Opacity of chart's border. Value range is 0 - 1.
  external num get borderAlpha;
  external set borderAlpha(num v);

  /// Color of legend's border. You should set borderAlpha >0 in order border to be visible.
  /// @default "#000000"
  external String get borderColor;
  external set borderColor(String v);

  /// In case legend position is set to "absolute", you can set distance from bottom of the chart, in pixels.
  external num get bottom;
  external set bottom(num v);

  /// Text color. Will use chart's color if not set.
  external String get color;
  external set color(String v);

  /// This can be used by AmMap only.
  /// You can pass array of objects with title, color, markerType values, for example:
  /// [{title: "One", color: "#3366CC"},{title: "Two", color: "#FFCC33"}]
  external List<dynamic> get data;
  external set data(List<dynamic> v);

  /// Specifies if each of legend entry should be equal to the most wide entry.
  /// Won't look good if legend has more than one line.
  /// @default true
  external bool get equalWidths;
  external set equalWidths(bool v);

  /// Font size. Will use chart's font size if not set.
  external String get fontSize;
  external set fontSize(String v);

  /// Horizontal space between legend item and left/right border.
  external num get horizontalGap;
  external set horizontalGap(num v);

  /// The text which will be displayed in the legend.
  /// Tag [[title]] will be replaced with the title of the graph. [[title]]
  external String get labelText;
  external set labelText(String v);

  /// In case legend position is set to "absolute", you can set distance from left side of the chart, in pixels.
  external num get left;
  external set left(num v);

  /// Bottom margin.
  external num get marginBottom;
  external set marginBottom(num v);

  /// Left margin.
  /// This property will be ignored if chart is Serial or XY
  /// and autoMargins property of the legend is true (default).
  /// @default 20
  external num get marginLeft;
  external set marginLeft(num v);

  /// Right margin.
  /// This property will be ignored if chart is Serial or XY
  /// and autoMargins property of the legend is true (default).
  /// @default 20
  external num get marginRight;
  external set marginRight(num v);

  /// Top margin.
  external num get marginTop;
  external set marginTop(num v);

  /// Marker border opacity 1.
  external num get markerBorderAlpha;
  external set markerBorderAlpha(num v);

  /// Marker border color. If not set, will use the same color as marker.
  external String get markerBorderColor;
  external set markerBorderColor(String v);

  /// Thickness of the legend border.
  /// The default value (0) means the line will be a "hairline" (1 px).
  /// In case marker type is line, this style will be used for line thickness.
  /// @default 1
  external num get markerBorderThickness;
  external set markerBorderThickness(num v);

  /// The color of the disabled marker (when the graph is hidden). #AAB3B3
  external String get markerDisabledColor;
  external set markerDisabledColor(String v);

  /// Space between legend marker and legend text, in pixels.
  /// @default 5
  external num get markerLabelGap;
  external set markerLabelGap(num v);

  /// Size of the legend marker (key).
  /// @default 16
  external num get markerSize;
  external set markerSize(num v);

  /// Shape of the legend marker (key).
  /// Possible values are:
  /// "square", "circle", "line", "dashedLine", "triangleUp", "triangleDown", "bubble", "none". square
  external String get markerType;
  external set markerType(String v);

  /// Maximum number of columns in the legend.
  /// If Legend's position is set to "right" or "left", maxColumns is automatically set to 1.
  external num get maxColumns;
  external set maxColumns(num v);

  /// Position of a legend. Possible values are: "bottom", "top", "left", "right" and "absolute".
  /// In case "absolute", you should set left and top properties too. (this setting is ignored in Stock charts).
  /// In case legend is used with AmMap, position is set to "absolute" automatically.  bottom
  external String get position;
  external set position(String v);

  /// Specifies whether legend entries should be placed in reversed order.
  external bool get reversedOrder;
  external set reversedOrder(bool v);

  /// In case legend position is set to "absolute", you can set distance from right side of the chart, in pixels.
  external num get right;
  external set right(num v);

  /// Legend item text color on roll-over.  #CC0000
  external String get rollOverColor;
  external set rollOverColor(String v);

  /// When you roll-over the legend entry, all other graphs can reduce their opacity,
  /// so that the graph you rolled-over would be distinguished. This style specifies the opacity of the graphs.
  /// @default 1
  external num get rollOverGraphAlpha;
  external set rollOverGraphAlpha(num v);

  /// You can use this property to turn all the legend entries off.
  /// @default true
  external bool get showEntries;
  external set showEntries(bool v);

  /// Horizontal space between legend items, in pixels.
  /// @default 10
  external num get spacing;
  external set spacing(num v);

  /// Whether showing/hiding of graphs by clicking on the legend marker is enabled or not.
  /// In case legend is used with AmMap, this is set to false automatically.
  /// @default true
  external bool get switchable;
  external set switchable(bool v);

  /// Legend switch color. #FFFFFF
  external String get switchColor;
  external set switchColor(String v);

  /// Legend switch type (in case the legend is switchable). Possible values are "x" and "v". x
  external String get switchType;
  external set switchType(String v);

  /// If true, clicking on the text will show/hide balloon of the graph.
  /// Otherwise it will show/hide graph/slice, if switchable is set to true.
  external bool get textClickEnabled;
  external set textClickEnabled(bool v);

  /// In case legend position is set to "absolute", you can set distance from top of the chart, in pixels.
  external num get top;
  external set top(num v);

  /// Legend markers can mirror graph’s settings, displaying a line and a real bullet as in the graph itself.
  /// Set this property to true if you want to enable this feature.
  /// Note, if you set graph colors in dataProvider, they will not be reflected in the marker.
  /// @default false
  external bool get useGraphSettings;
  external set useGraphSettings(bool v);

  /// Specifies if legend labels should be use same color as corresponding markers.
  external bool get useMarkerColorForLabels;
  external set useMarkerColorForLabels(bool v);

  /// Alignment of the value text. Possible values are "left" and "right". right
  external String get valueAlign;
  external set valueAlign(String v);

  /// The text which will be displayed in the value portion of the legend.
  /// You can use tags like
  /// [[value]], [[open]], [[high]], [[low]], [[close]], [[percents]], [[description]]. [[value]]
  external String get valueText;
  external set valueText(String v);

  /// Width of the value text.
  /// @default 80
  external num get valueWidth;
  external set valueWidth(num v);

  /// Vertical space between legend items also between legend border and first and last legend row.
  /// @default: 10
  external num get verticalGap;
  external set verticalGap(num v);

  /// Adds event listener of the type "clickLabel" or "clickMarker" or "hideItem" to the object.
  external void addListener(
      String type,
      void handler(
          dynamic /*{
                type: string;
                dataItem: object;
                chart: AmChart;
            }*/
          e));

  /// Removes event listener from chart object.
  external void removeListener(AmChart chart, String type, dynamic handler);
}
