# Tanita to FitBit #

This project has 2 parts
1. The code to extract data
2. The code to upload to FitBit

## Extraction ##
The tools to extact the data from Health Edge's databases.  Unfortunatly, these tools right now must be run on windows, as it depends on MicroSoft APIS.  I use Cygwin (http://www.cygwin.com/) to cron execution of dump-tanita.sh.  This uses a tool called SqlCmd.exe.

SqlCeCmd downloaded from http://sqlcecmd.codeplex.com/

You may need to download a different version to make it work on your version of windows.

SqlCeCmd uses the [Microsoft Public License](LICENSE.sqlcecmd.md)

## FitBit ##
The second part is a set of python tools that log in to the FitBit api to log the data extracted via dump-tanita.sh

