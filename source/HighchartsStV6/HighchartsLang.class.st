"
Language object. The language object is global and it can´t be set
on each chart initiation. Instead, use Highcharts.setOptions to
set it before any chart is initialized.
Highcharts.setOptions({
    lang: {
        months: [
            'Janvier', 'Février', 'Mars', 'Avril',
            'Mai', 'Juin', 'Juillet', 'Août',
            'Septembre', 'Octobre', 'Novembre', 'Décembre'
        ],
        weekdays: [
            'Dimanche', 'Lundi', 'Mardi', 'Mercredi',
            'Jeudi', 'Vendredi', 'Samedi'
        ]
    }
});
"
Class {
	#name : #HighchartsLang,
	#superclass : #HighchartsComponent,
	#category : 'HighchartsStV6'
}

{ #category : #accessing }
HighchartsLang >> contextButtonTitle: aString [

	"Exporting module menu. The tooltip title for the context menu holding
print and export menu items.
Defaults to Chart context menu."

	configurationOptions at: 'contextButtonTitle' put: aString
]

{ #category : #accessing }
HighchartsLang >> decimalPoint: aString [

	"The default decimal point used in the Highcharts.numberFormat
method unless otherwise specified in the function arguments.
Defaults to .."

	configurationOptions at: 'decimalPoint' put: aString
]

{ #category : #accessing }
HighchartsLang >> downloadCSV: aString [

	"Export-data module only. The text for the menu item.
Defaults to Download CSV."

	configurationOptions at: 'downloadCSV' put: aString
]

{ #category : #accessing }
HighchartsLang >> downloadJPEG: aString [

	"Exporting module only. The text for the JPEG download menu item.
Defaults to Download JPEG image."

	configurationOptions at: 'downloadJPEG' put: aString
]

{ #category : #accessing }
HighchartsLang >> downloadPDF: aString [

	"Exporting module only. The text for the PDF download menu item.
Defaults to Download PDF document."

	configurationOptions at: 'downloadPDF' put: aString
]

{ #category : #accessing }
HighchartsLang >> downloadPNG: aString [

	"Exporting module only. The text for the PNG download menu item.
Defaults to Download PNG image."

	configurationOptions at: 'downloadPNG' put: aString
]

{ #category : #accessing }
HighchartsLang >> downloadSVG: aString [

	"Exporting module only. The text for the SVG download menu item.
Defaults to Download SVG vector image."

	configurationOptions at: 'downloadSVG' put: aString
]

{ #category : #accessing }
HighchartsLang >> downloadXLS: aString [

	"Export-data module only. The text for the menu item.
Defaults to Download XLS."

	configurationOptions at: 'downloadXLS' put: aString
]

{ #category : #accessing }
HighchartsLang >> drillUpText: aString [

	"The text for the button that appears when drilling down, linking
back to the parent series. The parent series´ name is inserted for
{series.name}.
Defaults to Back to {series.name}."

	configurationOptions at: 'drillUpText' put: aString
]

{ #category : #accessing }
HighchartsLang >> invalidDate: aString [

	"What to show in a date field for invalid dates. Defaults to an empty
string.
"

	configurationOptions at: 'invalidDate' put: aString
]

{ #category : #accessing }
HighchartsLang >> loading: aString [

	"The loading text that appears when the chart is set into the loading
state following a call to chart.showLoading.
Defaults to Loading...."

	configurationOptions at: 'loading' put: aString
]

{ #category : #accessing }
HighchartsLang >> months: anArrayOfString [

	"An array containing the months names. Corresponds to the B format
in Highcharts.dateFormat().
Defaults to [ 'January' , 'February' , 'March' , 'April' , 'May' ,
         'June' , 'July' , 'August' , 'September' , 'October' ,
         'November' , 'December']."

	configurationOptions at: 'months' put: anArrayOfString
]

{ #category : #accessing }
HighchartsLang >> noData: aString [

	"The text to display when the chart contains no data. Requires the
no-data module, see noData.
Defaults to No data to display."

	configurationOptions at: 'noData' put: aString
]

{ #category : #accessing }
HighchartsLang >> numericSymbolMagnitude: aNumber [

	"The magnitude of numericSymbols replacements.
Use 10000 for Japanese, Korean and various Chinese locales, which
use symbols for 10^4, 10^8 and 10^12.
Defaults to 1000."

	configurationOptions at: 'numericSymbolMagnitude' put: aNumber
]

{ #category : #accessing }
HighchartsLang >> numericSymbols: anArrayOfString [

	"Metric prefixes used
to shorten high numbers in axis labels. Replacing any of the positions
with null causes the full number to be written. Setting numericSymbols
to null disables shortening altogether.
Defaults to [ 'k' , 'M' , 'G' , 'T' , 'P' , 'E']."

	configurationOptions at: 'numericSymbols' put: anArrayOfString
]

{ #category : #accessing }
HighchartsLang >> printChart: aString [

	"Exporting module only. The text for the menu item to print the chart.
Defaults to Print chart."

	configurationOptions at: 'printChart' put: aString
]

{ #category : #accessing }
HighchartsLang >> resetZoom: aString [

	"The text for the label appearing when a chart is zoomed.
Defaults to Reset zoom."

	configurationOptions at: 'resetZoom' put: aString
]

{ #category : #accessing }
HighchartsLang >> resetZoomTitle: aString [

	"The tooltip title for the label appearing when a chart is zoomed.
Defaults to Reset zoom level 1:1."

	configurationOptions at: 'resetZoomTitle' put: aString
]

{ #category : #accessing }
HighchartsLang >> shortMonths: anArrayOfString [

	"An array containing the months names in abbreviated form. Corresponds
to the b format in Highcharts.dateFormat().
Defaults to [ 'Jan' , 'Feb' , 'Mar' , 'Apr' , 'May' , 'Jun' ,
         'Jul' , 'Aug' , 'Sep' , 'Oct' , 'Nov' , 'Dec']."

	configurationOptions at: 'shortMonths' put: anArrayOfString
]

{ #category : #accessing }
HighchartsLang >> shortWeekdays: anArrayOfString [

	"Short week days, starting Sunday. If not specified, Highcharts uses
the first three letters of the lang.weekdays option.
"

	configurationOptions at: 'shortWeekdays' put: anArrayOfString
]

{ #category : #accessing }
HighchartsLang >> thousandsSep: aString [

	"The default thousands separator used in the Highcharts.numberFormat
method unless otherwise specified in the function arguments. Since
Highcharts 4.1 it defaults to a single space character, which is
compatible with ISO and works across Anglo-American and continental
European languages.
The default is a single space.
Defaults to  ."

	configurationOptions at: 'thousandsSep' put: aString
]

{ #category : #accessing }
HighchartsLang >> viewData: aString [

	"Export-data module only. The text for the menu item.
Defaults to View data table."

	configurationOptions at: 'viewData' put: aString
]

{ #category : #accessing }
HighchartsLang >> weekdays: anArrayOfString [

	"An array containing the weekday names.
Defaults to ['Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday',
         'Friday', 'Saturday']."

	configurationOptions at: 'weekdays' put: anArrayOfString
]
