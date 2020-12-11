#!/opt/powershell/pwsh
#variables
$uname = env | grep 'USERNAME'
$date = get-date -DisplayHint Date
$direc = Get-Location | grep '/'
$count = (Get-Childitem (pwd | grep '/') |Measure-Object ).Count;
$big = Get-ChildItem -File -Recurse | Sort-Object Length -Descending | Select-Object Name -First 1





#Printing
echo " "
echo "The $uname" 
echo " "
echo "The Current Date and Time is - $date"
echo " "
echo "The Current Working Directory is - $direc"
echo " "
echo "The Number of files in Current Directory is -" $count 
echo " "
echo "The Biggest file in Current Directory is - "$big 






