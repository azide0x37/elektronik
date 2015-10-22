
tracert 205.209.220.57 > c:\\results.txt && route print >> C:\\Users\\Administrator\\Desktop
Computer\\C on U6032949-TPD-A

---------------------------------------------------------------------------------------------------------------------------------

Windows PowerShell
Copyright (C) 2009 Microsoft Corporation. All rights reserved.

PS C:\\Users\\Administrator> select-string -path D:\\ThomsonReuters\\SMF\\log\\*201508*.txt -pattern "frame loss"|clip

----------Single Day (Collect Logs)-------------

set datecode=%date:~-4%%date:~3,2%%date:~0,2%
D:
cd D:\\ThomsonReuters\\SMF\\log
(hostname
FIND "Gone" "smf log files.%datecode%*.txt") > C:\\TEMP\\123.txt
(hostname
FIND "Gone" "smf log files.%datecode%*.txt") > C:\\TEMP\\123.txt
notepad C:\\TEMP\\123.txt


set datecode=%date:~-4%%date:~3,2%%date:~0,2%
D:
cd D:\\ThomsonReuters\\SMF\\log
(hostname
FIND "Gone" "*") > C:\\TEMP\\123.txt
(hostname
FIND "Gone" "*") > C:\\TEMP\\123.txt
notepad C:\\TEMP\\123.txt

------TMS LOGS---------------

Log onto requested server and open ELEKTRON TMS Log Collector on Desktop

-----------CCT logs------------

......Full DDS CCT Logs........
SGC->Host Name->Run CCT->
Checklist Collection->Collect CCT

.....Daily CCT Logs........

/reuters/ThomsonReuters/DailyCCTDumpFTPRoot
hard

CCT DUMP FILE PATH //reuters/ThomsonReuters/DailyCCTDumpFTPRoot
-----core dumps--------

cd /reuters/core (to find core dumps)
gzip core_Device name_ads_* (to Gzip the files)

-------file transfer-------------

1)	Go to D:\\Temp\\ISAT_WI015 folder
*filezilla /cygdrive/d/Temp/ISAT_WI015
2)	Transfer the following files via SendThisFile and send to ISAT Support
<DataCentre>_RMS_FID.txt.gz
3)	Go to Start -> Administrative Tools -> Network Load Balancing Manager
4)	Check if you see the icon of <DataCentre>-DDNMIES01A(DB+FM) is in Red. If true, continue with the below step.
5)	Right Click the icon <DataCentre>-DDNMIES01A(DB+FM)
6)	Click Control Host -> Start
7)	Look at the log entry on the bottom part of NLB manager
8)	Wait until the Log shows the message “Start” operation result : SUCCESS, Host State : Converging
9)	Click on <DataCentre>.elektron.isat, press F5 to refresh the NLB Manager, the <DataCentre>-DDNMIES01A(DB+FM) should change to Green

---------Closing Run----------

Primary MGT Global servers  NTCP-DDNMMGT01 SG1P-DDNMMGT01 UK2P-DDNMMGT01
mRemote->Mozilla http://127.0.0.1/index.html->Region tab->CHE closing run checks---->date

---------------Advanced Data Hub disconnected------------

 mRemoter->server name->adhmon->Source Routes->List of Source...check that @least 1 dds service is connected

---------ILO reset----

alarms:
Remote Insight Agent: The Remote Insight Board/Integrated Lights Out

            *firmware lockup*

WARNING: md: d5: write error on /dev/dsk/c0t0d0s5	3/20/15 21:14:52 PM	3/20/15 22:00:00 PM	4
WARNING: CPQary3 : Smart Array P410i Controller HBA firmware Locked !!!	3/20/15 21:14:38 PM	3/20/15 21:14:38 PM	1
WARNING: CPQary3 :Please reboot the system	3/20/15 21:14:38 PM	3/20/15 21:14:38 PM	1

In Internet Explorer:
Open Ip spread sheet, open in excel, find device, select OA hyperlink, select device, Web administrator
Service [Reuters.FMS.ProcessManager] Member of OS [stopped] should be[running]

-----------Unix/Linux---------------

Low memory - root@nj3p-ddndads23a #

CMD- top

last pid: 14741;  load avg:  5.32,  7.61,  8.28;       up 149+09:47:03
60 processes: 56 sleeping, 2 running, 2 on cpu
CPU states: 84.8% idle, 11.3% user,  3.9% kernel,  0.0% iowait,  0.0% swap
Memory: 24G phys mem, 14G free mem, 16G total swap, 16G free swap


Note: slot number may differ from node to node.
In Solaris 10 boxes, to check for errors, look for the bold words below on the "controller slot=0 show config detail" command section
To send this report to HP or another team, just copy from the command prompt into a txt file.
If you are looking to easily script tasks, you can narrow down the output by filtering it. Below a few commands to filter the output:
-----------------------------------------------------------------

cd /opt/HPQacucli/sbin
cd /opt/compaq/hpacucli/bld - use this for DCS v2.0

Execute the command ./hpacucli
On Hpacucli prompt type in the following commands to get the status of controller, battery, hard drive, etc.:

controller all show config
controller slot=0 pd all show status
ctrl all show status
controller slot=0 show config detail
controller slot=0  physicaldrive 1I:1:1 show

Determine Array Rebuild Status

cd /opt/HPQacucli/sbin
./hpacucli ctrl all show config detail | grep "Status:"

Determine Array Controller (and HHD) Firmware Version

cd /opt/HPQacucli/sbin
./hpacucli ctrl all show config detail | grep "Firmware Version:"

Determine Serial Numbers

cd /opt/HPQacucli/sbin
./hpacucli ctrl all show config detail | grep "Serial Number:"

Checking BON BUG

netstat -n | grep 8805
netstat -n | grep 8806exit

mpstat 1 - checks proccessor for Solaris
smf stop && smf start

-------Sub Id has gone Inactive/Connection Failure------------

1)Start IM Ticket & open MIN w/i 15 min

NJ2P-DDNCCHE08B	CommunicationObject: Sub Id 1 has gone INACTIVE	3/20/15 16:33:55 PM	3/20/15 16:33:55 PM

2)Login to server via mRemote->open SMF log-> ctrl+F "gone"
Your ouput will be similar to below


2015-03-25  19:25:32 Critical CommunicationObject: Sub Id 0 has gone INACTIVE D:\\ThomsonReuters\\Venues\\CSF\\LHCSFRDT;

3)Find devices on GTDB->Get owner email address
                        "Ticker fact sheet" tab->scroll down to "Comms Designators"->copy site id into email

4)Send team email with logs and any other relevant information


------GAP Trap-----------------------

1)mRemote run script on all four servers in set

set datecode=%date:~-4%%date:~3,2%%date:~0,2%
D:
cd D:\\ThomsonReuters\\SMF\\log
(hostname
FIND "ACTIVE" "smf log files.%datecode%*.txt") > C:\\TEMP\\123.txt
(hostname
FIND "ACTIVE" "smf log files.%datecode%*.txt") > C:\\TEMP\\123.txt
notepad C:\\TEMP\\123.txt

2)Find devices on GTDB->"Ticker fact sheet" tab->scroll down to "Comms Designators"->copy site id into email

3)Email team with copy of alarms and Log output

-----------DCS----------------------------
DCS Health Check:
exit
cd /reuters/dcs/bin
./checkSystemHealth

/usr/sbin/hpaducli -f hpaducli.out
Available tool in bookmark bar under tool folder
https://thehub.thomsonreuters.com/docs/DOC-776682?utm_medium=spotlight&utm_campaign=search&utm_source=results

NJ3P-DDNCDCS04C	msaEventWarningTrap: An event has been generated by the storage array. Recommended severity level (for filtering): warning  : Event type: 58, An error was reported by a disk drive.

....DCS scripts....

in command prompt change the working directory using the following:

cd /opt/HPQacucli/sbin
cd /opt/compaq/hpacucli/bld - use this for DCS v2.0

Please try the following commands to bring all MSA1/2 back:
sudo vgimport vg_MSA1
sudo vgchange -a y vg_MSA1
sudo vgimport vg_MSA2
sudo vgchange -a y vg_MSA2

DCS service status:     STOPPED
DCS A you can do
pvs -v
vgs -v
but those are LVM volumes, not virtual volumes in the MSAs.


DCS B and C -cmd- show volumes

ERROR
One of the physical volumes is unavailable. who would i escalate to for this? -> clive's team.


xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx

3.3	Napatech statistics
Seen: HDC

Executing the PacketfeedStatus binary revealed that the Napatech adapter’s SDRAM was full. Both feeds were reporting the following:
root@hdcp-ddnmdcs03a:/opt/napatech/bin# ./PacketfeedStatus -feed 0

PacketfeedStatus (v. 1.7.C - 2012-07-04-09-28-32)
==============================================================================

Feed 0 status:
   Mode: Data pending...
   Adapter SDRAM fill level                          : 99 %
   Number of segments ready via API                  : 0
   Number of segments currently held by the user     : 0
   Number of segments waiting for adapter free slots : 0
   Number of segments held by the adapter            : 512

After rebooting, with both feeds capturing, they both report the following:
root@hdcp-ddnmdcs03a:/opt/napatech/bin# ./PacketfeedStatus -feed 0

PacketfeedStatus (v. 1.7.C - 2012-07-04-09-28-32)
==============================================================================

Feed 0 status:
   Mode: No segments available...
   Adapter SDRAM fill level                          : 0 %
   Number of segments ready via API                  : 0
   Number of segments currently held by the user     : 0
   Number of segments waiting for adapter free slots : 0
   Number of segments held by the adapter            : 512



---------Long Lining---------------

How to confirm if long line/lining is enabled in ADS
Long line aka extended line is a configuration parameter on ADS and EEDs. Usually the EED might require this to be properly configured in the ADS for certain connectivity scenarios. To confirm this from ADS perspective, SSH the target ADS, enable bash and type:
grep `hostname` /ThomsonReuters/dpop/config/dpopads.cnf

If you see this among the output (replace the system name for the connected ADS):
nj2p-ddndads31a*ads*rsslPortList : distpop_trwf_sink, extline_trwf_sink

It means that it's configured.

------------------------------------
What are connect EEDs?

more /ThomsonReuters/dpop/config/StartupEEDAccessFile


---------------------------------------

Unexpected Value Alarms


TR2P-DDNCCHE01A Unexpected value 1/13/2015 8:06 1/13/2015 9:01 2 1RDT-_000004:CHE:LHAL1RDT.exe:GBE_ReportSituation
TR1P-DDNCCHE01A Unexpected value 1/13/2015 8:05 1/13/2015 9:00 2 1RDT-_000004:CHE:LHAL1RDT.exe:GBE_ReportSituation
TR1P-DDNCCHE01B Unexpected value 1/13/2015 8:05 1/13/2015 9:00 2 1RDT-_000004:CHE:LHAL1RDT.exe:GBE_ReportSituation
TR2P-DDNCCHE01B Unexpected value 1/13/2015 8:06 1/13/2015 9:00 2 1RDT-_000004:CHE:LHAL1RDT.exe:GBE_ReportSituation

 Please follow these simple guidelines to ensure the problem is resolved in a timely mannner.
1)Create a Ticket in SM9
2)Log into the server set in question.
3)Access SMF Logs
    :Once you find the logs you'll see why the alarm is showing "UNEXPECTED VALUE"

 “Failed to create Item [RIC=BAV_th.ALP,SIC=ALBAV.WT.H,Domain=MarketPrice] due to symbology conflicts: RIC conflicts with existing Item [RIC=BAV_th.ALP,SIC=ALBAV.WTH,Domain=MarketPrice]; D:\\ThomsonReuters\\Venues\\AL1\\LHAL1RDT; 5476; 680; 007fcb25;”

    :In this Case you know exactly which RIC's are conflicting with existing items.

4)Access GTDB for Content  related Information
5)E-mail Content Team with Log information (RIC's conflicing with SIC's viceversa, Ticker, Sample RIC)

-------------------------------------------------------

SERVER REBUILD REFERENCE

https://thehub.thomsonreuters.com/docs/DOC-523340

-----------------------------------------------------------

Pre, Post checks and remediation

1)Log into server via mRemote and enter following cmds
ls -ltrh /export/captures/Feed1/|tail
ls -ltrh /export/captures/Feed2/|tail

Paste output into email to team

2)Log into SGC -> Automated health check

***************

Procedure when physically reseating a blade server

Latest VC firmware being rolled out in Elektron enclosures assignes a corrupt network profile with different NIC speed and duplex settings than what was set up before to the blade while reseating it. The command to check the NIC speed and duplex settings before and after for Solaris is dladm show-dev, and and output example is:


root@ntcp-ddndsrc03b # dladm show-dev
elxnic0 link: up        speed: 4000 Mbps       duplex: full
elxnic1 link: up        speed: 4000 Mbps       duplex: full
elxnic2 link: up        speed: 4000 Mbps       duplex: full
elxnic3 link: unknown   speed: 0 Mbps       duplex: unknown
elxnic4 link: unknown   speed: 0 Mbps       duplex: unknown
elxnic5 link: unknown   speed: 0 Mbps       duplex: unknown
elxnic6 link: up        speed: 1000 Mbps       duplex: full
elxnic7 link: up        speed: 1000 Mbps       duplex: full

If the server is running Windows, you'll have to use the HP Network GUI:

1) System Properties
2)HP Network Configuration Utility Properties
3)Adapter Propeties
   :information tab
   :Current speed/Duplex

Virtual (e-fuse) reset on a Blade server

Procedure

Procedure
Note: The following procedure causes the server blade to lose power momentarily as the e-fuse is tripped and reset.
The term e-Fuse is used when a Blade system has to be reset virtually (without physically reseating the server).



Shutdown the server
Login to OA as Administrator (reutadmin) using the OA CLI.
Issue command show server names. This command will show you the [bay number].
Enter the command reset server [bay number] .
Confirm that you want to reset the server blade.

SG1P-DDNMCH704A-OA1> reset server 1
WARNING: Resetting the server trips its E-Fuse. This causes all power to be momentarily removed from the server. This command should only be used when physical access to the server is unavailable, and the server must be removed and
reinserted.
Any disk operations on direct attached storage devices will be affected. I/O
will be interrupted on any direct attached I/O devices.
Entering anything other than 'YES' will result in the command not executing.
Do you want to continue ? YES
Successfully reset the E-Fuse for device bay 1.

------------------------------------------------------

*Hardware changes*

Create ticket to track

HP On Board:
https://h20565.www2.hp.com/portal/site/hpsc/public/scm/home?ac.admitted=1427412055233.876444892.492883150
click on submit case-> user name and password

Change Window->check maintenance window

------------------------------------------------
RIC Processes

Holiday RICs

Log onto regional FMS

<exlObject>	                              <it:DSPLY_NAME>OPRA%HOL1</it:DSPLY_NAME>
  <it:SYMBOL>OPRA%HOL1</it:SYMBOL> 	      <it:HLY05_START_TIME>2015-05-25T00:00:00.00</it:HLY06_START_TIME>
  <it:RIC>OPRA%HOL1</it:RIC> 	          <it:HLY05_END_TIME>2015-05-26T00:00:00.00</it:HLY06_END_TIME>
  <it:DOMAIN>MARKET_PRICE</it:DOMAIN> 	  <it:HLY05_DESC>Memorial Day</it:HLY06_DESC>


DSPLY_NAME
HLY05_START_TIME
HLY05_END_TIME
HLY05_DESC

Common/ICF Files/aqueryhol.icf

aqueryhol.icf (right-click) Dataview

.............................

RIC Update


1)Log onto SIR and open discovery. Input RIC <DECN1PJF.EW>

2)password:SIRUser

3)When did the RIC last update?

4)You EDGE Tool to see what ADS is updating if it is single user affected.

RIC Updating Issues
https://thehub.thomsonreuters.com/docs/DOC-571666  17:35
that article explains how to find out which MCU owns a RIC


AAACP15YY=SHCV
- S/Prod HK1P-DDNCCCD02A/DCA/CONTRIB:AAACP15YY=SHCV MARKET_PRICE
- S/Prod HK1P-DDNCCCD02B/DCA/CONTRIB:AAACP15YY=SHCV MARKET_PRICE
- L/Prod SG1P-DDNCCCD02A/DCA/CONTRIB:AAACP15YY=SHCV MARKET_PRICE
- S/Prod SG1P-DDNCCCD02B/DCA/CONTRIB:AAACP15YY=SHCV MARKET_PRICE


if you go to the very first email, the contributor is from China
(the user name starts with CN)
so we're looking at the CHE-CD systems in SG1/HK1
the list of RICs they gave you, search it one by one.
DOMAIN = ALL
Service = CONTRIB

if you can find it, look for the FIDs they report missing. they're in alphabetic order, not by FID number.

-----------------------------------

Fetch SAMBA Logs

---------------------------------------

Windows SMF

Net Stop SMF && Net Start SMF

--------------------------------------------------

OA commands line

SG3P-DDNCCH701B-OA2> show server names

VC command line

->show profile
->show status
->show server
->show enclosure
->show uplinkset
====================
Name        Status
====================
VCFlex10-1  OK
VCFlex10-2  OK
->show uplinkset VCFlex10-*
and then
->show statistics <port>

------------------------------------------------------------------------------------

HpNetSvy

Searching for DDN source

root@ff1p-ddndsrc03b # cd /ThomsonReuters/Config
root@ff1p-ddndsrc03b # grep 232.2.3.82 ddn*.xml
ddnServers.xml:<server NAME="TP2P-DDNCEFX01B-1" DDN1="159.44.208.150" DDN2="159.44.212.147"></server>


D:\\ThomsonReuters\\Config\\GatewaysManifest.xml

------------------------------------------------------------------------------------------------------------------------------------------

REORG START

REORG END

------------------------------------------------------------------------------------------------------------------------------------------

grep "transitioned" /ThomsonReuters/smf/log/log*


------------------------------------------------------------------------------------------------------------------------------------------

ADS and EDGE allocation

more /ThomsonReuters/dpop/config/StartupEEDAccessFile

------------------------------------------------------------------------------------------------------------------------------------------
