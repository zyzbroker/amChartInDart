@JS()
library PanelSettings;

import "package:js/js.dart";

/// PanelsSettings settings set's settings for all StockPanels.
/// If you change a property after the chart is initialized,
/// you should call stockChart.validateNow() method in order for it to work.
/// If there is no default value specified, default value of StockPanel class will be used.
@JS()
class PanelsSettings {
  // @Ignore
  PanelsSettings.fakeConstructor$();

  /// The angle of the 3D part of plot area. This creates a 3D effect (if the "depth3D" is > 0).
  external num get angle;
  external set angle(num v);

  /// Opacity of panel background. Possible values are 1 and 0. Values like 0.5 will not make it half-transparent.
  external num get backgroundAlpha;
  external set backgroundAlpha(num v);

  /// Background color of panels. Set backgroundAlpha to > 0 value in order to make background visible.
  /// @default "#FFFFFF"
  external String get backgroundColor;
  external set backgroundColor(String v);

  /// The gap in pixels between two columns of the same category.
  external num get columnSpacing;
  external set columnSpacing(num v);

  /// Relative width of columns. Valid values 0 - 1.
  external num get columnWidth;
  external set columnWidth(num v);

  /// The depth of the 3D part of plot area. This creates a 3D effect (if the "angle" is > 0).
  external num get depth3D;
  external set depth3D(num v);

  /// Font family.
  external String get fontFamily;
  external set fontFamily(String v);

  /// Font size.
  external String get fontSize;
  external set fontSize(String v);

  /// Number of pixels between the container's bottom border and plot area.
  /// @default 1
  external num get marginBottom;
  external set marginBottom(num v);

  /// Number of pixels between the container's left border and plot area.
  /// If your left valueAxis values ar not placed inside the plot area,
  /// you should set marginLeft to 80 or some close value.
  external num get marginLeft;
  external set marginLeft(num v);

  /// Number of pixels between the container's left border and plot area.
  /// If your right valueAxis values ar not placed inside the plot area,
  /// you should set marginRight to 80 or some close value.
  external num get marginRight;
  external set marginRight(num v);

  /// Number of pixels between the container's top border and plot area.
  external num get marginTop;
  external set marginTop(num v);

  /// Gap between panels.
  /// @default 8
  external num get panelSpacing;
  external set panelSpacing(num v);

  /// This setting affects touch-screen devices only.
  /// If a chart is on a page, and panEventsEnabled are set to true,
  /// the page won't move if the user touches the chart first.
  /// If a chart is big enough and occupies all the screen of your touch device,
  /// the user won’t be able to move the page at all. That's why the default value is "false".
  /// If you think that selecting or or panning the chart is a primary purpose of your chart users,
  /// you should set panEventsEnabled to true.
  external bool get panEventsEnabled;
  external set panEventsEnabled(bool v);

  /// The opacity of plot area's border.
  external num get plotAreaBorderAlpha;
  external set plotAreaBorderAlpha(num v);

  /// The color of the plot area's border.
  external String get plotAreaBorderColor;
  external set plotAreaBorderColor(String v);

  /// Opacity of plot area fill.
  external num get plotAreaFillAlphas;
  external set plotAreaFillAlphas(num v);

  /// Specifies the colors used to tint the background gradient fill of the plot area. String or Array of Strings
  external dynamic get plotAreaFillColors;
  external set plotAreaFillColors(dynamic v);

  /// Prefixes which are used to make big numbers shorter: 2M instead of 2000000, etc.
  /// Prefixes are used on value axes and in the legend.
  /// To enable prefixes, set usePrefixes property to true.
  /// [
  /// {number:1e+3,prefix:"k"},
  /// {number:1e+6,prefix:"M"},
  /// {number:1e+9,prefix:"G"},
  /// {number:1e+12,prefix:"T"},
  /// {number:1e+15,prefix:"P"},
  /// {number:1e+18,prefix:"E"},
  /// {number:1e+21,prefix:"Z"},
  /// {number:1e+24,prefix:"Y"}
  /// ]
  external List<dynamic> get prefixesOfBigNumbers;
  external set prefixesOfBigNumbers(List<dynamic> v);

  /// Prefixes which are used to make small numbers shorter: 2μ instead of 0.000002, etc.
  /// Prefixes are used on value axes and in the legend. To enable prefixes, set usePrefixes property to true.
  /// [
  /// {number:1e-24, prefix:"y"},
  /// {number:1e-21, prefix:"z"},
  /// {number:1e-18, prefix:"a"},
  /// {number:1e-15, prefix:"f"},
  /// {number:1e-12, prefix:"p"},
  /// {number:1e-9, prefix:"n"},
  /// {number:1e-6, prefix:"μ"},
  /// {number:1e-3, prefix:"m"}
  /// ]
  external List<dynamic> get prefixesOfSmallNumbers;
  external set prefixesOfSmallNumbers(List<dynamic> v);

  /// Specifies whether the animation should be sequenced or all objects should appear at once.
  external bool get sequencedAnimation;
  external set sequencedAnimation(bool v);

  /// The initial opacity of the column/line.
  /// If you set startDuration to a value higher than 0, the columns/lines will fade in from startAlpha.
  external num get startAlpha;
  external set startAlpha(num v);

  /// Duration of the animation, in seconds.
  external num get startDuration;
  external set startDuration(num v);

  /// Possible values are: "linear", "<", ">" "<>", "elastic", "bounce".
  external String get startEffect;
  external set startEffect(String v);

  /// If true, prefixes will be used for big and small numbers.
  external bool get usePrefixes;
  external set usePrefixes(bool v);
}
