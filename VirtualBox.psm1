<# 
 .Synopsis
  Manage VirtualBox through PowerShell.

 .Description
  Allows the control and manipulation of VirtualBox and virtual machines in virtual box through PowerShell.

 .Parameter Start
  The first month to display.

 .Parameter End
  The last month to display.

 .Parameter FirstDayOfWeek
  The day of the month on which the week begins.

 .Parameter HighlightDay
  Specific days (numbered) to highlight. Used for date ranges like (25..31).
  Date ranges are specified by the Windows PowerShell range syntax. These dates are
  enclosed in square brackets.

 .Parameter HighlightDate
  Specific days (named) to highlight. These dates are surrounded by asterisks.
  

 .Example
   # Show a default display of this month.
   Show-Calendar

 .Example
   # Display a date range.
   Show-Calendar -Start "March, 2010" -End "May, 2010"

 .Example
   # Highlight a range of days.
   Show-Calendar -HighlightDay (1..10 + 22) -HighlightDate "December 25, 2008"
#>

$vBox = New-Object -ComObject VirtualBox.VirtualBox

function Get-VBoxVM {
param(
    $name
)

$vBox.Machines
}



export-modulemember -function Get-VBoxVM