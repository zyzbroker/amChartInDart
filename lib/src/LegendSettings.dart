@JS()
library LegendSettings;

import "package:js/js.dart";

/// Common settings of legends.
/// If you change a property after the chart is initialized, you should call stockChart.validateNow() method
/// in order for it to work. If there is no default value specified, default value of StockLegend class will be used.
@JS()
class LegendSettings {
  // @Ignore
  LegendSettings.fakeConstructor$();

  /// Alignment of legend entries. Possible values are: "left", "right" and "center".
  external String get align;
  external set align(String v);

  /// Specifies if each legend entry should take the same space as the longest legend entry.
  external bool get equalWidths;
  external set equalWidths(bool v);

  /// Horizontal space between legend item and left/right border.
  external num get horizontalGap;
  external set horizontalGap(num v);

  /// The text which will be displayed in the legend. Tag [[title]] will be replaced with the title of the graph.
  external String get labelText;
  external set labelText(String v);

  /// Space below the last row of the legend, in pixels.
  external num get marginBottom;
  external set marginBottom(num v);

  /// Space above the first row of the legend, in pixels.
  external num get marginTop;
  external set marginTop(num v);

  /// Opacity of marker border.
  external num get markerBorderAlpha;
  external set markerBorderAlpha(num v);

  /// Marker border color.
  external String get markerBorderColor;
  external set markerBorderColor(String v);

  /// Thickness of the legend border.
  external num get markerBorderThickness;
  external set markerBorderThickness(num v);

  /// The color of the disabled marker (when the graph is hidden).
  external String get markerDisabledColor;
  external set markerDisabledColor(String v);

  /// Space between legend marker and legend text, in pixels.
  external num get markerLabelGap;
  external set markerLabelGap(num v);

  /// Size of the legend marker (key).
  external num get markerSize;
  external set markerSize(num v);

  /// Shape of the legend marker (key).
  /// Possible values are:
  /// "square", "circle", "line", "dashedLine", "triangleUp", "triangleDown", "bubble", "none".
  external String get markerType;
  external set markerType(String v);

  /// Specifies whether legend entries should be placed in reversed order.
  external bool get reversedOrder;
  external set reversedOrder(bool v);

  /// Legend item text color on roll-over.
  external String get rollOverColor;
  external set rollOverColor(String v);

  /// When you roll-over the legend entry, all other graphs can reduce their opacity,
  /// so that the graph you rolled-over would be distinguished. This property specifies the opacity of the graphs.
  external num get rollOverGraphAlpha;
  external set rollOverGraphAlpha(num v);

  /// Whether showing/hiding of graphs by clicking on the legend marker is enabled or not.
  external bool get switchable;
  external set switchable(bool v);

  /// Legend switch color.
  external String get switchColor;
  external set switchColor(String v);

  /// Legend switch type (in case the legend is switchable). Possible values are: "x" and "v".
  external String get switchType;
  external set switchType(String v);

  /// Specifies whether the legend text is clickable or not.
  /// Clicking on legend text can show/hide value balloons if they are enabled.
  external bool get textClickEnabled;
  external set textClickEnabled(bool v);

  /// Specifies if legend labels should be use same color as corresponding markers.
  external bool get useMarkerColorForLabels;
  external set useMarkerColorForLabels(bool v);

  /// The text which will be displayed in the value portion of the legend when graph is comparable and
  /// at least one dataSet is selected for comparing.
  /// You can use tags like [[value]], [[open]], [[high]], [[low]], [[close]], [[percents]], [[description]].
  external String get valueTextComparing;
  external set valueTextComparing(String v);

  /// The text which will be displayed in the value portion of the legend.
  /// You can use tags like [[value]], [[open]], [[high]], [[low]], [[close]], [[percents]], [[description]].
  external String get valueTextRegular;
  external set valueTextRegular(String v);

  /// Width of the value text. Increase this value if your values do not fit in the allocated space.
  external num get valueWidth;
  external set valueWidth(num v);

  /// Vertical space between legend items, in pixels.
  external num get verticalGap;
  external set verticalGap(num v);
}
