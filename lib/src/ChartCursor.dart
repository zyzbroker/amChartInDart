@JS()
library ChartCursor;

import "package:js/js.dart";
import "AmChart.dart" show AmChart;

/// ChartCursor is a class which displays a cursor which follows the mouse.
/// In case of Serial chart it also shows value and category balloons.
/// @example
/// let chart = new AmCharts.AmSerialChart();
/// let chartCursor = new AmCharts.ChartCursor();
/// chart.addChartCursor(chartCursor);
@JS()
class ChartCursor {
  // @Ignore
  ChartCursor.fakeConstructor$();

  /// Specifies if bullet for each graph will follow the cursor.
  external bool get bulletsEnabled;
  external set bulletsEnabled(bool v);

  /// Size of bullets, following the cursor.
  /// @default 8
  external num get bulletSize;
  external set bulletSize(num v);

  /// Opacity of the category balloon.
  /// @default 1
  external num get categoryBalloonAlpha;
  external set categoryBalloonAlpha(num v);

  /// Color of the category balloon. cursorColor is used if not set.
  external String get categoryBalloonColor;
  external set categoryBalloonColor(String v);

  /// Category balloon date format (used only if category axis parses dates).
  /// Check this page for instructions on how to format dates. MMM DD, YYYY
  external String get categoryBalloonDateFormat;
  external set categoryBalloonDateFormat(String v);

  /// Specifies whether category balloon is enabled.
  /// @default true
  external bool get categoryBalloonEnabled;
  external set categoryBalloonEnabled(bool v);

  /// Text color. #FFFFFF
  external String get color;
  external set color(String v);

  /// Opacity of the cursor line.  1
  external num get cursorAlpha;
  external set cursorAlpha(num v);

  /// Color of the cursor line. #CC0000
  external String get cursorColor;
  external set cursorColor(String v);

  /// Specifies where the cursor line should be placed - on the beginning of the period (day, hour, etc) or
  /// in the middle (only when parseDates property of categoryAxis is set to true).
  /// If you want the cursor to follow mouse and not to glue to the nearest data point, set "mouse" here.
  /// Possible values are: "start", "middle", "mouse".
  external String get cursorPosition;
  external set cursorPosition(String v);

  /// Specifies whether cursor is enabled.
  /// @default true
  external bool get enabled;
  external set enabled(bool v);

  /// If set to true, instead of a cursor line user will see a fill which width will always
  /// be equal to the width of one data item.
  /// Recommend setting cursorAlpha to 0.1 or some other small number if using this feature.
  /// @default false
  external bool get fullWidth;
  external set fullWidth(bool v);

  /// If this is set to true, only one balloon at a time will be displayed. Note, this is quite CPU consuming.
  external bool get oneBalloonOnly;
  external set oneBalloonOnly(bool v);

  /// If this is set to true, the user will be able to pan the chart (Serial only) instead of zooming.
  external bool get pan;
  external set pan(bool v);

  /// Opacity of the selection.
  external num get selectionAlpha;
  external set selectionAlpha(num v);

  /// Specifies if cursor should only mark selected area but not zoom-in after user releases mouse button.
  external bool get selectWithoutZooming;
  external set selectWithoutZooming(bool v);

  /// Specifies whether value balloons are enabled.
  /// In case they are not, the balloons might be displayed anyway, when the user rolls-over the column or bullet.
  /// @default true
  external bool get valueBalloonsEnabled;
  external set valueBalloonsEnabled(bool v);

  /// Specifies if the user can zoom-in the chart.
  /// If pan is set to true, zoomable is switched to false automatically.
  /// @default true
  external bool get zoomable;
  external set zoomable(bool v);

  /// Indicates if currently user is selecting some chart area to zoom-in.
  external bool get zooming;
  external set zooming(bool v);

  /// Hides cursor.
  external void hideCursor();

  /// You can force cursor to appear at specified cateogry or date.
  external void showCursorAt(dynamic /*String|DateTime*/ category);

  /// Adds event listener.
  /// "selected", "zoomed", "zoomStarted".
  external void addListener(
      String type,
      void handler(
          dynamic /*{
                chart: AmChart;
                delta2X?: number;
                delta2Y?: number;
                deltaX?: number;
                deltaY?: number;
                end?: number;
                finalX?: number;
                finalY?: number;
                index?: number;
                initialX?: number;
                initialY?: number;
                mostCloseGraph?: AmGraph;
                start?: number;
                target?: ChartCursor;
                type: string;
                x?: number;
                y?: number;
                zooming?: boolean;
            }*/
          e));

  /// Removes event listener from chart object.
  external void removeListener(AmChart chart, String type, dynamic handler);
}
