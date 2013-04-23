KMABC 1.4 - BETA RELEASE NOTES:
==============

<dl>
  <dt>To test this beta release:</dt>
  <dd>Go to your plugins folder</dd>
  <dd>Remove (if you have one) the QueekusPlugins folder</dd>
  <dd>Download the .zip file here.</dd>
  <dd>Right click and hit "Extract Here"</dd>
  <dd>Rename the created folder to "QueekusPlugins" without quotes</dd>
  <dd>Run LOTRO...</dd>
</dl>

<dl>
  <dt>To assist in development:</dt>
  <dd>Go to your plugins folder</dd>
  <dd>Remove (if you have one) the QueekusPlugins folder</dd>
  <dd>Run the git commands to fork the repo and clone to your hard drive in the plugins folder</dd>
  <dd>You may need to rename the folder to "QueekusPlugins" without quotes else you will not be able to test in game.</dd>
</dl>

IMPORTANT: 

	• Should you initiate a pull request, I will severely scrutinise what you have changed/added before even considering a merger and should it not fit my personal (will not be publicly released) criteria then it will be refused!
	• Should I merge one of your pull requests, you will be given credit for whatever you add/change. (Depending on what it is depends on what I’ll credit you with)

1.4 RELEASE CONTENT:
--------------------

	• Kmapi Changes
	• Saving And Loading Changes
	• Chat Commands
	• Options Menu
	• Language System Rewrite
	• Choose Random Song
	• Mod Installer Executable (BETA) (WINDOWS ONLY ATM)
	• Notices
	• Known Issues
	• Upcoming Features:

KMAPI CHANGES:

	• Kmapi now supports a new format, read the documentation's "GET STARTED PAGE"
	• There is a new way to install Kmabc Mod Files, details included in the "GET STARTED PAGE"
	• Added
		• kmapi.addToTable("package", "Package Name", tPackage) where tPackage is a table
		• kmapi.addToTable("buttons", "Button Set Name", tButtons) where tButtons is a table
		• kmapi.addSongs({"SONGNAME" [,"Song 2" ...]})
		• kmapi.getVersion("kmabc" or "kmapi")
		• kmapi.getNextFreeId()
		• kmapi.getSongs()
		• kmapi.getNumOfSongs()

SAVING AND LOADING CHANGES:

	• Saving and loading now works with Languages
	• The option to show the save and load buttons has been removed, along with all of the stuff that made up the buttons.
	• Because colours and languages are saved, by default Packages are saved as well
		• With the exception of buttons (see known issues)
		• This is because packages load all of those items when the package is selected
	• Kmabc now saves your data after it has loaded any previous data

CHAT COMMANDS:

	• The Following Chat Commands Have Been Removed
		• /kmabc blue
		• /kmabc red
		• /kmabc grey
		• /kmabc violet
		• /kmabc brown
		• /kmabc rainbow
		• /kmabc ekafsidnammocsiht
			• This command was hidden further in the code than the hidden debug command!
		• HIDDEN DEBUG COMMAND

OPTIONS MENU:

	• There is a new option avaliable
		• Allow Mods To Add Songs
			• This option will allow mods to add songs to the playlist box if it is checked.
			• By default this option is checked,
	• There are 2 new boxes on the options menu
		• Buttons
			• This lets you specify which images you want to use for buttons. 
			• More can be added using kmapi.
		• Packages
			• This lets you specify which Package you want to use. Packages contain colours, languages and/or buttons. 
			• More can be added using kmapi.

LANGUAGE SYSTEM REWRITE:

	• Renamed all P(#num) tags to L[#num] - [NOT DONE YET]
	• Language loading has been compressed to decrease file size
	• Removed language lines 23 and 42 as they were unused

CHOOSE RANDOM SONG:

	• New button "(R)" on UI next to Recently Played Songs label - [NOT DONE YET]

MOD INSTALLER EXECUTABLE (BETA) (WINDOWS ONLY ATM):

	• NOT IN CURRENT BUILD, STILL IN DEVELOPMENT

NOTICES:

	• Language pack makers, the language strings 31 -> 36 are blank and should not contain any data!
		• This is indicated in LangData.lua under the english language pack ONLY for your convenience
		• Should you mod Kmabc, feel free to use these lines as required, however changing the base files outside of those specified is not reccomended unless you know what you are doing
	• The code in the Main.lua has been compressed to (hopefully) decrease file size
	• The Installer Execuatble is given as is. Any changes it makes can be changed back with the mod_init_Copy.lua file however, you use this at your own risk. I will take no responsibility for its use if anything goes wrong
	• You must make sure that you save your work before changing language as otherwise your changes will be wiped!
	• The KMABC Icon Has Changed to RED.

1.4 KNOWN ISSUES:

	• Dragging a quickslot icon from one quickslot over another will still wipe the quickslot(s) you drag the icon over
	• If the plugin is unloaded without any interaction being made inside the main kmabc window, the plugin will
		not save any data.
	• Changing the language via the options menu:
		• wipes following data (Buttons)
		• keeps the previous colour used in the songs list for some reason
	• Button images are not saved, they need to be reloaded manually 
		• If I don't have a patch for this then hopefully it will be in 1.5
