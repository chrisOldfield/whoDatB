rem Here is a Windows command that takes a list of URLs, indexes the string, parses the URL at the index of the last '/' character, and then asks the user to paste or input the string to replace it with:

@echo off

rem Set the index for the string
set index=5

rem Get the list of URLs
type urls.txt > list.txt

rem Parse the URL at the index of the last '/' character
for /f "tokens=%index% delims=/" %%a in ('type "list.txt"') do (
  set old=%%a
)

rem Prompt the user to paste or input the string to replace it with
set /p new=Enter the new string:

rem Replace the old string with the new one
type list.txt | findstr /v /c:"%old%" > temp.txt
move /y temp.txt list.txt
echo. >> list.txt
type list.txt | findstr /v /c:"" | findstr /v /c:"%new%" > temp.txt
echo %new% >> temp.txt
move /y temp.txt list.txt

echo Done.



rem This command reads the list of URLs from the urls.txt file and stores it in the list.txt file. It then uses the for loop to parse the URL at the index of the last '/' character and stores the parsed string in the old variable. The command then prompts the user to enter the new string to replace it with, and uses the findstr utility to replace the old string with the new one in the list.txt file.

rem Keep in mind that this is just a simple example, and more advanced techniques may be needed to effectively parse and replace strings in a real-world scenario. You can adjust the value of the index variable to change the index of the string that you want to parse and replace.