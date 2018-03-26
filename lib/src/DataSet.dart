@JS()
library DataSet;

import "package:js/js.dart";
import "StockEvent.dart" show StockEvent;

/// DataSet is objects which holds all information about data.
@JS()
class DataSet {
  // @Ignore
  DataSet.fakeConstructor$();

  /// Category field name in your dataProvider.
  external String get categoryField;
  external set categoryField(String v);

  /// Color of the data set. One of colors from AmStockChart.colors array will be used if not set.
  external String get color;
  external set color(String v);

  /// Whether this data set is selected for comparing.
  /// If you change this property, you should call stockChart.validateData() method
  /// in order the changes to be applied.
  external bool get compared;
  external set compared(bool v);

  /// Data provider of the data set.
  external List<dynamic> get dataProvider;
  external set dataProvider(List<dynamic> v);

  /// Array of field mappings. Field mapping is an object with fromField and toField properties.
  /// fromField is a name of your value field in dataProvider.
  /// toField might be chosen freely, it will be used to set value/open/close/high/low fields for the StockGraph.
  /// Example: {fromField:"val1", toField:"value"}.
  external List<dynamic> get fieldMappings;
  external set fieldMappings(List<dynamic> v);

  /// Specifies whether this data set should be visible in "compare to" list.
  /// @default true
  external bool get showInCompare;
  external set showInCompare(bool v);

  /// Specifies whether this data set should be visible in "select" dropdown.
  /// @default true
  external bool get showInSelect;
  external set showInSelect(bool v);

  /// Array of StockEvent objects.
  external List<StockEvent> get stockEvents;
  external set stockEvents(List<StockEvent> v);

  /// DataSet title.
  external String get title;
  external set title(String v);
}
