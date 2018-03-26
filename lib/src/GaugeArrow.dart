@JS()
library GaugeArrow;

import "package:js/js.dart";
import "GaugeAxis.dart" show GaugeAxis;

@JS()
class GaugeArrow {
  // @Ignore
  GaugeArrow.fakeConstructor$();

  /// Opacity of an arrow.
  /// @default 1
  external num get alpha;
  external set alpha(num v);

  /// Axis of the arrow. You can use reference to the axis or id of the axis.
  /// If you don't set any axis, the first axis of a chart will be used.
  /// @default GaugeAxis
  external GaugeAxis get axis;
  external set axis(GaugeAxis v);

  /// Opacity of arrow border.
  /// @default 1
  external num get borderAlpha;
  external set borderAlpha(num v);

  /// In case you need the arrow to rotate only clock-wise, set this property to true.
  /// @default false
  external bool get clockWiseOnly;
  external set clockWiseOnly(bool v);

  /// Color of an arrow.
  /// @default #000000
  external String get color;
  external set color(String v);

  /// Unique id of an arrow.
  external String get id;
  external set id(String v);

  /// Inner radius of an arrow.
  /// @default 0
  external dynamic get innerRadius;
  external set innerRadius(dynamic v);

  /// Opacity of a nail, holding the arrow.
  /// @default 1
  external num get nailAlpha;
  external set nailAlpha(num v);

  /// Opacity of nail border.
  /// @default 0
  external num get nailBorderAlpha;
  external set nailBorderAlpha(num v);

  /// Thickness of nail border.
  /// @default 1
  external num get nailBorderThickness;
  external set nailBorderThickness(num v);

  /// Radius of a nail, holding the arrow.
  /// @default 8
  external num get nailRadius;
  external set nailRadius(num v);

  /// Radius of an arrow.
  /// @default '90%'
  external dynamic get radius;
  external set radius(dynamic v);

  /// Width of arrow root.
  /// @default 8
  external num get startWidth;
  external set startWidth(num v);

  /// Value to which the arrow should point at.
  external num get value;
  external set value(num v);

  /// Sets value for the arrow.
  /// Arrow will animate to this value if you do it after chart is written to it's container.
  external void setValue(num value);
}
