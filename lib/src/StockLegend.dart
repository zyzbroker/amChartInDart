@JS()
library StockLegend;

import "package:js/js.dart";
import "AmLegend.dart" show AmLegend;

/// StockLegend is a legend of StockPanel.
@JS()
class StockLegend extends AmLegend {
  // @Ignore
  StockLegend.fakeConstructor$() : super.fakeConstructor$();

  /// The text which will be displayed in the value portion of the legend when graph is comparable and
  /// at least one dataSet is selected for comparing.
  /// You can use tags like
  /// [[value]], [[open]], [[high]], [[low]], [[close]], [[percents.value/open/close/low/high]],
  /// [[description]]
  /// @default [[percents.value]]%
  external String get valueTextComparing;
  external set valueTextComparing(String v);

  /// The text which will be displayed in the value portion of the legend.
  /// You can use tags like
  /// [[value]], [[open]], [[high]], [[low]], [[close]],[[percents]], [[description]]
  /// @default [[value]]
  external String get valueTextRegular;
  external set valueTextRegular(String v);
}
