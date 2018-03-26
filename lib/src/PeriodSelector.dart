@JS()
library PeriodSelector;

import "package:js/js.dart";
import "AmChart.dart" show AmChart;

@JS()
class PeriodSelector {
  // @Ignore
  PeriodSelector.fakeConstructor$();

  /// Date format of date input fields.
  /// Check [[http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/mx/formatters/DateFormatter.html
  /// @default "DD-MM-YYYY"
  external String get dateFormat;
  external set dateFormat(String v);

  /// Text displayed next to "from" date input field. From:
  external String get fromText;
  external set fromText(String v);

  /// Specifies if period buttons with date range bigger than available data should be hidden.
  /// @default true
  external bool get hideOutOfScopePeriods;
  external set hideOutOfScopePeriods(bool v);

  /// Specifies whether period selector displays "from" and "to" date input fields.
  /// @default true
  external bool get inputFieldsEnabled;
  external set inputFieldsEnabled(bool v);

  /// Width of date input fields, in pixels. Works only if period selector is horizontal.
  /// @default 100
  external num get inputFieldWidth;
  external set inputFieldWidth(num v);

  /// Array of predefined period objects. Period object has 4 properties - period, count, label and selected.
  /// Possible period values are:
  /// "ss" - seconds,
  /// "mm" - minutes,
  /// "hh" - hours,
  /// "DD" - days,
  /// "MM" - months,
  /// "YYYY" - years.
  /// Property "count" specifies how many periods this button will select.
  /// "label" will be displayed on a button.
  /// "selected" is a boolean which specifies if this button is selected when chart is initialized or not.
  /// Example: {period:"DD", count:10, label:"10 days", selected:false}.
  external List<dynamic> get periods;
  external set periods(List<dynamic> v);

  /// Text displayed next to predefined period buttons. Zoom:
  external String get periodsText;
  external set periodsText(String v);

  /// Possible values: "right", "left", "top", "bottom". bottom
  external String get position;
  external set position(String v);

  /// Specifies whether predefined period buttons should select a period from the beginning or the end of the data.
  external bool get selectFromStart;
  external set selectFromStart(bool v);

  /// Text displayed next to "to" date input field. To:
  external String get toText;
  external set toText(String v);

  /// Width of a period selector, when position is "left" or "right".
  /// @default 180
  external num get width;
  external set width(num v);

  /// Adds event listener to the object.
  /// user clicks on one of the predefined period buttons.
  external void addListener(
      String type,
      void handler(
          dynamic /*{
                type: string;
                startDate: Date;
                endDate: Date;
                predefinedPeriod: string;
                count: number;
            }*/
          e));

  /// Removes event listener from chart object.
  external void removeListener(AmChart chart, String type, dynamic handler);
}
