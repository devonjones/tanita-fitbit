# Tanita to FitBit #

This project has 2 parts
1. The code to extract data
2. The code to upload to FitBit

## Extraction ##
The tools to extact the data from Health Edge's databases.  Unfortunatly, these tools right now must be run on windows, as it depends on MicroSoft APIS.  I use Cygwin (http://www.cygwin.com/) to cron execution of dump-tanita.sh.  This uses a tool called SqlCmd.exe.

SqlCeCmd downloaded from http://sqlcecmd.codeplex.com/

You may need to download a different version to make it work on your version of windows.

SqlCeCmd uses the [Microsoft Public License](LICENSE.sqlcecmd.md)

### Configuration ###
* Install cygwin, and install the cron package
* Edit dump-tanita.conf to reflect the dirs on your computer that the scale is connected to
* Copy dump-tanita.\* to the directory you want to run it from
* Copy SqlCeCmd.\* to the directory contaning Healthy Edge Db.sdf (normally in My Documents/Healthy Edge/)
* Add the cron job using dump-tanita.cron as an example
* The script will copy the data to any location, but I have it dumping into my Dropbox so that I can process the data from a linux box after the fact.

## FitBit ##
The second part is a set of python tools that log in to the FitBit api to log the data extracted via dump-tanita.sh

