@JS()
library AreasSettings;

import "package:js/js.dart";

/// AreasSettings is a class which holds common settings of all MapArea objects.
@JS()
class AreasSettings {
  // @Ignore
  AreasSettings.fakeConstructor$();

  /// Opacity of areas.
  /// @default 1
  external num get alpha;
  external set alpha(num v);

  /// Specifies if the areas should be zoomed-in when user clicks on them, event if zoom properties are not set.
  external bool get autoZoom;
  external set autoZoom(bool v);

  /// Text which is displayed in a roll-over balloon. You can use the following tags:
  /// [[title]], [[description]], [[value]] and [[percent]] [[title]]
  external String get balloonText;
  external set balloonText(String v);

  /// Color of the areas.
  /// @default "#FFCC00"
  external String get color;
  external set color(String v);

  /// Color of area with highest value.
  /// Colors for areas with values less then highest will be colored with intermediate colors
  /// between color and colorSolid.
  /// Use colorSteps property of AmMap to change the number of intermediate colors.
  /// @default "#990000"
  external String get colorSolid;
  external set colorSolid(String v);

  /// Height of a description window.
  external num get descriptionWindowHeight;
  external set descriptionWindowHeight(num v);

  /// Width of a description window.
  /// @default 250
  external num get descriptionWindowWidth;
  external set descriptionWindowWidth(num v);

  /// X position of a description window.
  external num get descriptionWindowX;
  external set descriptionWindowX(num v);

  /// Y position of a description window.
  external num get descriptionWindowY;
  external set descriptionWindowY(num v);

  /// Opacity of area's outline.
  /// @default 1
  external num get outlineAlpha;
  external set outlineAlpha(num v);

  /// Color of area's outline. #FFFFFF
  external String get outlineColor;
  external set outlineColor(String v);

  /// Thickness of area's outline. 0.5
  external num get outlineThickness;
  external set outlineThickness(num v);

  /// Color of area when user rolls-over it. undefined
  external String get rollOverColor;
  external set rollOverColor(String v);

  /// Color of area's outline when user rolls-over it. #CC0000
  external String get rollOverOutlineColor;
  external set rollOverOutlineColor(String v);

  /// Color of area which is currently selected. #CC0000
  external String get selectedColor;
  external set selectedColor(String v);

  /// Opacity of all areas which are in the map svg file, but not listed as areas in DataSet.
  /// @default 1
  external num get unlistedAreasAlpha;
  external set unlistedAreasAlpha(num v);

  /// Color of all areas which are in the map svg file, but not listed as areas in DataSet. #DDDDDD
  external String get unlistedAreasColor;
  external set unlistedAreasColor(String v);

  /// Opacity of all areas' outline which are in the map svg file, but not listed as areas in DataSet.
  /// @default 1
  external num get unlistedAreasOutlineAlpha;
  external set unlistedAreasOutlineAlpha(num v);

  /// Color of all areas' outline which are in the map svg file, but not listed as areas in DataSet. #FFFFFF
  external String get unlistedAreasOutlineColor;
  external set unlistedAreasOutlineColor(String v);
}
