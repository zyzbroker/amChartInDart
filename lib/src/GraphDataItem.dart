@JS()
library GraphDataItem;

import "package:js/js.dart";
import "SerialDataItem.dart" show SerialDataItem;

/// GraphDataItem holds all the information about the graph's data item.
/// When working with a chart, you do not create GraphDataItem Objects or change it's properties directly.
/// GraphDataItem is passed to you by events when user interacts with data item on the chart.
/// The list of properties below will help you to extract data item's value/coordinate/etc.
@JS()
class GraphDataItem {
  // @Ignore
  GraphDataItem.fakeConstructor$();

  /// Opacity of the data item.
  external num get alpha;
  external set alpha(num v);

  /// Bullet type.
  external String get bullet;
  external set bullet(String v);

  /// Bullet size.
  external num get bulletSize;
  external set bulletSize(num v);

  /// Category value.
  external String get category;
  external set category(String v);

  /// Color of the data item.
  external String get color;
  external set color(String v);

  /// Custom bullet (path to file name).
  external String get customBullet;
  external set customBullet(String v);

  /// Original Object from data provider.
  external Object get dataContext;
  external set dataContext(Object v);

  /// Description.
  external String get description;
  external set description(String v);

  /// Array of colors of the data item, used by column and candlestick chart only.
  external List<dynamic> get fillColors;
  external set fillColors(List<dynamic> v);

  /// Object which holds percents when recalculateToPercents is set to true.
  external Object get percents;
  external set percents(Object v);

  /// SerialDataItem of this graphDataItem
  external SerialDataItem get serialDataItem;
  external set serialDataItem(SerialDataItem v);

  /// url
  external String get url;
  external set url(String v);

  /// Object which holds values of the data item (value, open, close, low, high).
  external Object get values;
  external set values(Object v);

  /// x coordinate of the data item.
  external num get x;
  external set x(num v);

  /// y coordinate of the data item.
  external num get y;
  external set y(num v);
}
