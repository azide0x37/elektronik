## Daily ELEKTRON L1 Information

### Browser Tabs
# Chrome
 * SM9
 * Handover
 * Nuisance Alarms
 * L1 - Daily Assignments
 * GTDB
 * IP Spreadsheets
 * Trello
 * Change Window
 * HP Support Case Management

# Firefox
 * Compass
 * Tivoli Alarms
 *

# Escalate for Visiblity
[Network Comms Service Management]: <Networkcommsservicemanagement@thomsonreuters.com>
[TSC ISM]: <NetcomISM@thomson.com>
[TSC Infrastructure Problem Management]: <NetworkCommsProblemManagement@thomsonreuters.com>
[Eikon_ERT Ops Management]: <Eikon_ERTOpsManagement@thomsonreuters.com>

#Useful Regexes
[select entire line containing 'foo']: < ^.*foo.*$ >
[replace duplicate following lines]: < ^(.*)(\r?\n\1)+$ replace with \1 >

#Compare pre and post check logs, return files with differences
diff -qrsU0 folder1 folder2 | grep -v ' are identical$'
