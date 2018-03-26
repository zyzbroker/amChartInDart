@JS()
library GaugeBand;

import "package:js/js.dart";

@JS()
class GaugeBand {
  // @Ignore
  GaugeBand.fakeConstructor$();

  /// Opacity of band fill. Will use axis.bandAlpha if not set any.
  external num get alpha;
  external set alpha(num v);

  /// When rolled-over, band will display balloon if you set some text for this property.
  external String get balloonText;
  external set balloonText(String v);

  /// Color of a band.
  external String get color;
  external set color(String v);

  /// End value of a fill.
  external num get endValue;
  external set endValue(num v);

  /// Example: [-0.2, 0, -0.2]. Will make bands to be filled with color gradients.
  /// Negative value means the color will be darker than the original,
  /// and positive number means the color will be lighter.
  /// @default []
  external List<num> /*Tuple of <num>*/ get gradientRatio;
  external set gradientRatio(List<num> /*Tuple of <num>*/ v);

  /// Unique id of a band.
  external String get id;
  external set id(String v);

  /// Inner radius of a band. If not set any, the band will end with the end of minor ticks.
  /// Set 0 if you want the band to be drawn to the axis center.
  external dynamic get innerRadius;
  external set innerRadius(dynamic v);

  /// Band radius. If not set any, the band will start with the axis outline.
  external dynamic get radius;
  external set radius(dynamic v);

  /// Start value of a fill.
  external num get startValue;
  external set startValue(num v);

  /// Gauge band can be clickable and can lead to some page.
  external String get url;
  external set url(String v);

  /// Sets end value for the band.
  external void setEndValue(num value);

  /// Sets start value for the band.
  external void setStartValue(num value);
}
