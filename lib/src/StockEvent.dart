@JS()
library StockEvent;

import "package:js/js.dart";
import "StockGraph.dart" show StockGraph;

/// StockEvent is object which holds information about event(bullet).
/// Values from StockEventsSettings will be used if not set.
/// Stock event bullet's size depends on it's graphs fontSize.
/// When user rolls - over, clicks or rolls - out of the event bullet, AmStockChart dispatches events.
@JS()
class StockEvent {
  // @Ignore
  StockEvent.fakeConstructor$();

  /// Opacity of bullet background.
  /// @default 1
  external num get backgroundAlpha;
  external set backgroundAlpha(num v);

  /// Color of bullet background. #DADADA
  external String get backgroundColor;
  external set backgroundColor(String v);

  /// Opacity of bullet border.
  /// @default 1
  external num get borderAlpha;
  external set borderAlpha(num v);

  /// Bullet border color. #888888
  external String get borderColor;
  external set borderColor(String v);

  /// The color of the event text. #000000
  external String get color;
  external set color(String v);

  /// Date of an event. Must be Date object, not a string.
  external DateTime get date;
  external set date(DateTime v);

  /// graph on which event will be displayed.
  external StockGraph get graph;
  external set graph(StockGraph v);

  /// Roll-over background color. #CC0000
  external String get rollOverColor;
  external set rollOverColor(String v);

  /// Specifies if the event should be displayed on category axis
  external bool get showOnAxis;
  external set showOnAxis(bool v);

  /// Letter which will be displayed on the event. Not all types can display letters.
  /// "text" type can display longer texts.
  external String get text;
  external set text(String v);

  /// Type of bullet.
  /// Possible values are:
  /// "flag", "sign", "pin", "triangleUp", "triangleDown", "triangleLeft", "triangleRight", "text",
  /// "arrowUp", "arrowDown"
  /// @default "sign"
  external String get type;
  external set type(String v);

  /// A URL to go to when user clicks the event.
  external String get url;
  external set url(String v);

  /// target of url, "_blank" for example.
  external String get urlTarget;
  external set urlTarget(String v);
}
