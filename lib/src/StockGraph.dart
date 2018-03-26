@JS()
library StockGraph;

import "package:js/js.dart";
import "AmGraph.dart" show AmGraph;

@JS()
class StockGraph extends AmGraph {
  // @Ignore
  StockGraph.fakeConstructor$() : super.fakeConstructor$();

  /// Specifies whether this graph will be compared if some data set is selected for comparing.
  external bool get comparable;
  external set comparable(bool v);

  /// Specifies a field to be used to generate comparing graph.
  /// Note, this field is not the one used in your dataProvider, but toField from FieldMapping object.
  external String get compareField;
  external set compareField(String v);

  /// Balloon color of comparing graph.
  external String get compareGraphBalloonColor;
  external set compareGraphBalloonColor(String v);

  /// Balloon text of comparing graph.
  external String get compareGraphBalloonText;
  external set compareGraphBalloonText(String v);

  /// Bullet of comparing graph.
  /// Possible values are: "square", "round", "line", "triangleUp", "triangleDown", "dashedLine", "bubble".
  external String get compareGraphBullet;
  external set compareGraphBullet(String v);

  /// Bullet size of comparing graph.
  external num get compareGraphBulletSize;
  external set compareGraphBulletSize(num v);

  /// Corner radius of comparing graph (if type is "column").
  external num get compareGraphCornerRadiusTop;
  external set compareGraphCornerRadiusTop(num v);

  /// Dash length of compare graph.
  external num get compareGraphDashLength;
  external set compareGraphDashLength(num v);

  /// Fill alpha of comparing graph.
  external num get compareGraphFillAlphas;
  external set compareGraphFillAlphas(num v);

  /// Fill color of comparing graph.
  external String get compareGraphFillColors;
  external set compareGraphFillColors(String v);

  /// Opacity of comparing graph line.
  external num get compareGraphLineAlpha;
  external set compareGraphLineAlpha(num v);

  /// Thickness of compare graph.
  external num get compareGraphLineThickness;
  external set compareGraphLineThickness(num v);

  /// Type of comparing graph. Possible values are: "line", "column", "step", "smoothedLine." line
  external String get compareGraphType;
  external set compareGraphType(String v);

  /// Specifies if compare graph is visible in legend.
  /// @default true
  external bool get compareGraphVisibleInLegend;
  external set compareGraphVisibleInLegend(bool v);

  /// When data is grouped to periods, the graph must know which period value should be used.
  /// Possible values are: "Open", "Low", "High", "Close", "Average" and "Sum".
  /// @default "Close"
  external String get periodValue;
  external set periodValue(String v);

  /// Specifies whether data set color should be used as this graph's lineColor.
  /// @default true
  external bool get useDataSetColors;
  external set useDataSetColors(bool v);
}
