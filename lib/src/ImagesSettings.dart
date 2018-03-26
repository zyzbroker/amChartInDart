@JS()
library ImagesSettings;

import "package:js/js.dart";

/// ImagesSettings is a class which holds common settings of all MapImage objects.
@JS()
class ImagesSettings {
  // @Ignore
  ImagesSettings.fakeConstructor$();

  /// Opacity of the image.
  /// @default 1
  external num get alpha;
  external set alpha(num v);

  /// Text which is displayed in a roll-over balloon. You can use the following tags:
  /// [[title]], [[description]], [[value]] and [[percent]]. [[title]]
  external String get balloonText;
  external set balloonText(String v);

  /// Specifies if the image's center should be placed in the provided coordinates.
  /// If false, top-left corner will be at provided coordinates.
  /// @default true
  external bool get centered;
  external set centered(bool v);

  /// Color of image.
  /// This will affect only predefined images (with "type" property set) and images with svgPath set.
  /// This property won't affect bitmap images and loaded SVG images.
  /// @default "#000000"
  external String get color;
  external set color(String v);

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

  /// Label color. #000000
  external String get labelColor;
  external set labelColor(String v);

  /// Font size of a label.
  /// @default 11
  external String get labelfontSize;
  external set labelfontSize(String v);

  /// Position of the label. Allowed values are: left, right, top, bottom and middle. right
  external String get labelPosition;
  external set labelPosition(String v);

  /// Label roll-over color. #00CC00
  external String get labelRollOverColor;
  external set labelRollOverColor(String v);

  /// Opacity of image outline.
  /// This will affect only predefined images (with "type" property set) and images with svgPath set.
  /// This property won't affect bitmap images and loaded SVG images.
  external num get outlineAlpha;
  external set outlineAlpha(num v);

  /// Color of image outline.
  /// This will affect only predefined images (with "type" property set) and images with svgPath set.
  /// This property won't affect bitmap images and loaded SVG images.
  external String get outlineColor;
  external set outlineColor(String v);

  /// Thickness of image outline.
  /// This will affect only predefined images (with "type" property set) and images with svgPath set.
  /// This property won't affect bitmap images and loaded SVG images.
  /// @default 1
  external num get outlineThickness;
  external set outlineThickness(num v);

  /// Color of image when hovered.
  /// This will affect only predefined images (with "type" property set) and images with svgPath set.
  /// This property won't affect bitmap images and loaded SVG images.
  external String get rollOverColor;
  external set rollOverColor(String v);

  /// Scale of the image when hovered. Use value like 1.5 - 2 to enlarge image when user rolls-over it.
  /// @default 1
  external num get rollOverScale;
  external set rollOverScale(num v);

  /// Scale of the image if it is selected. Use value like 1.5 - 2 to enlarge selected image.
  /// @default 1
  external num get selectedScale;
  external set selectedScale(num v);
}
