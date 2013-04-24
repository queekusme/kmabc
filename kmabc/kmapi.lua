--%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
--% KMAPI                                        %
--%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
--% Read the kmabc documentation if you want     %
--% to use the kmapi code to modify kmabc safely %
--%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
import "QueekusPlugins.kmabc.options";
import "QueekusPlugins.kmabc.Main";
modpath = "QueekusPlugins/kmabc/"
numberoflangs = 4
button = {
		lyricalbasic = "LyricalBasicIcon.tga",
		lyricalhover = "LyricalHoverIcon.tga",
		compactbasic = "CompactBasicIcon.tga",
		compacthover = "CompactHoverIcon.tga",
		musicbasic = "MusicBasicIcon.tga",
		musichover = "MusicHoverIcon.tga",
		playbasic = "PlayBasicIcon.tga",
		playhover = "PlayHoverIcon.tga",
		playstartbasic = "PlaystartBasicIcon.tga",
		playstarthover = "PlaystartHoverIcon.tga",
		playsyncbasic = "PlaySyncBasicIcon.tga",
		playsynchover = "PlaySyncHoverIcon.tga"
	 }
ColRbow = function() -- Custom rainbow colour scheme
	label:SetBackColor( Turbine.UI.Color(  1.0, 0.0, 0.0 ) ); --Red
	Save:SetBackColor( Turbine.UI.Color( 1.0, 0.5, 0.25 ) ); --Orange
	Load:SetBackColor( Turbine.UI.Color( 1.0, 1.0, 0.25 ) ); --Yellow
	Copywrite:SetBackColor( Turbine.UI.Color( 0.3, 0.3, 0.6 ) ); --Violet
	label1:SetBackColor( Turbine.UI.Color( 1.0, 0.0, 0.0 ) ); --Red
	label2:SetBackColor( Turbine.UI.Color( 1.0, 0.5, 0.25 ) ); --Orange
	quickslot1:SetBackColor( Turbine.UI.Color( 1.0, 0.0, 0.0 ) ); --Red
	quickslot2:SetBackColor( Turbine.UI.Color( 1.0, 0.5, 0.25 ) ); --Orange
	quickslot3:SetBackColor( Turbine.UI.Color( 1.0, 1.0, 0.25 ) ); --Yellow
	quickslot4:SetBackColor( Turbine.UI.Color( 0.0, 1.0, 0.0 ) ); --Green
	quickslot5:SetBackColor( Turbine.UI.Color( 0.0, 0.0, 1.0 ) ); --Blue
	quickslot6:SetBackColor( Turbine.UI.Color( 0.5, 0.0, 0.5 ) ); --Indigo
	quickslot7:SetBackColor( Turbine.UI.Color( 0.3, 0.3, 0.6 ) ); --Violet
	quickslot8:SetBackColor( Turbine.UI.Color( 1.0, 0.0, 0.0 ) ); --Red
	quickslot9:SetBackColor( Turbine.UI.Color( 1.0, 0.5, 0.25 ) ); --Orange
	quickslotlyrical:SetBackColor( Turbine.UI.Color( 1.0, 1.0, 0.25 ) ); --Yellow
	quickslotSP:SetBackColor( Turbine.UI.Color( 0.5, 0.0, 0.5 ) ); --Indigo
	quickslotPS:SetBackColor( Turbine.UI.Color(  0.3, 0.3, 0.6 ) ); --Violet
	quickslotP:SetBackColor( Turbine.UI.Color( 0.0, 0.0, 1.0 ) ); --Blue
	quickslotMM:SetBackColor( Turbine.UI.Color( 0.0, 1.0, 0.0 ) ); --Green
	compactQuicks:SetBackColor( Turbine.UI.Color( 1.0, 1.0, 0.25 ) ); --Yellow
	Notes:SetBackColor( Turbine.UI.Color( 0.5, 0.0, 0.5 ) ); --Indigo
	compactcontrol:SetBackColor( Turbine.UI.Color( 1.0, 1.0, 0.25 ) ); --Yellow
	musicIcon:SetBackColor( Turbine.UI.Color(  0.0, 1.0, 0.0 ) ); --Green
	playIcon:SetBackColor( Turbine.UI.Color(  0.0, 0.0, 1.0 ) ); --Blue
	PlaySyncIcon:SetBackColor( Turbine.UI.Color(  0.5, 0.0, 0.5 ) ); --Indigo
	PlayStartIcon:SetBackColor( Turbine.UI.Color(  0.3, 0.3, 0.6 ) ); --Violet
	LyricalIcon:SetBackColor( Turbine.UI.Color(  1.0, 1.0, 0.25 ) ); --Yellow
	PlistName:SetBackColor( Turbine.UI.Color( 0.0, 1.0, 0.0) );
	listbox:SetBackColor( Turbine.UI.Color( 1.0, 0.0, 0.0 ) );
	for i=1, listbox:GetItemCount() do
		local currentItem = listbox:GetItem(i);  
		currentItem:SetBackColor( Turbine.UI.Color( math.random(), math.random(), math.random() ) );
	end
	currColour.R = r;
	currColour.G = g;
	currColour.B = b;
end
doColour = function (nR, nG, nB, r, g, b, rShift, gShift, bShift) -- normal doColour routine
	Notes:SetBackColor( Turbine.UI.Color( nR, nG, nB ) ); 
	label:SetBackColor( Turbine.UI.Color(  r, g, b ) );
	Save:SetBackColor( Turbine.UI.Color( r, g, b ) );
	Load:SetBackColor( Turbine.UI.Color( r, g, b ) );
	Copywrite:SetBackColor( Turbine.UI.Color( r, g, b ) );
	label1:SetBackColor( Turbine.UI.Color( r, g, b ) );
	label2:SetBackColor( Turbine.UI.Color( r, g, b ) );
	quickslot1:SetBackColor( Turbine.UI.Color( r, g, b ) );
	quickslot2:SetBackColor( Turbine.UI.Color( r, g, b ) );
	quickslot3:SetBackColor( Turbine.UI.Color( r, g, b ) );
	quickslot4:SetBackColor( Turbine.UI.Color( r, g, b ) );
	quickslot5:SetBackColor( Turbine.UI.Color( r, g, b ) );
	quickslot6:SetBackColor( Turbine.UI.Color( r, g, b ) );
	quickslot7:SetBackColor( Turbine.UI.Color( r, g, b ) );
	quickslot8:SetBackColor( Turbine.UI.Color( r, g, b ) );
	quickslot9:SetBackColor( Turbine.UI.Color( r, g, b ) );
	quickslotlyrical:SetBackColor( Turbine.UI.Color( r, g, b ) );
	quickslotSP:SetBackColor( Turbine.UI.Color( r, g, b ) );
	quickslotPS:SetBackColor( Turbine.UI.Color( r, g, b ) );
	quickslotP:SetBackColor( Turbine.UI.Color( r, g, b ) );
	quickslotMM:SetBackColor( Turbine.UI.Color( r, g, b ) );
	compactQuicks:SetBackColor( Turbine.UI.Color( r, g, b ) );
	compactcontrol:SetBackColor( Turbine.UI.Color( rShift,  gShift,  bShift ) );
	musicIcon:SetBackColor( Turbine.UI.Color( rShift,  gShift, bShift ) );
	playIcon:SetBackColor( Turbine.UI.Color( rShift,  gShift, bShift ) );
	PlaySyncIcon:SetBackColor( Turbine.UI.Color( rShift,  gShift, bShift ) );
	PlayStartIcon:SetBackColor( Turbine.UI.Color( rShift,  gShift, bShift ) );
	LyricalIcon:SetBackColor( Turbine.UI.Color(  rShift,  gShift, bShift ) );
	PlistName:SetBackColor( Turbine.UI.Color( r, g, b ) );
	listbox:SetBackColor( Turbine.UI.Color( r, g, b ) );
	for i=1, listbox:GetItemCount() do
		local currentItem = listbox:GetItem(i);  
		currentItem:SetBackColor( Turbine.UI.Color( r, g, b ) );
	end
	currColour.R = r;
	currColour.G = g;
	currColour.B = b;
end
buttons = function (doThis)
	compactcontrol:SetBackground( doThis[3] );
	musicIcon:SetBackground( doThis[5] );
	playIcon:SetBackground( doThis[7] );
	PlaySyncIcon:SetBackground( doThis[11] );
	PlayStartIcon:SetBackground( doThis[9] );
	LyricalIcon:SetBackground( doThis[1] );
	local songname = "";
	quickslotMM.MouseEnter = function( sender , args )                               --/Music*
		musicIcon:SetBackground(doThis[6])
		if (label2:GetText() == ""..L[5] ) then
			label2:SetText( "1" );	
		end	
		addtoListBox();
	end
	quickslotMM.MouseLeave = function( sender , args )
		musicIcon:SetBackground(doThis[5]);
	end
	quickslotP.MouseEnter = function(sender, args)                               --/Play
		quickslotSP:SetShortcut( Turbine.UI.Lotro.Shortcut( Turbine.UI.Lotro.ShortcutType.Alias, ""..L[6] .." " ..label1:GetText() .." " ..label2:GetText() .." " ..L[10] ))
		quickslotP:SetShortcut( Turbine.UI.Lotro.Shortcut( Turbine.UI.Lotro.ShortcutType.Alias, ""..L[6] .." " ..label1:GetText() .." " ..label2:GetText()) )
		playIcon:SetBackground(doThis[8]);
		if (label2:GetText() == ""..L[5] ) then
			label2:SetText( "1" );
		end	
		addtoListBox();
	end
	quickslotP.MouseLeave = function( sender , args )
		playIcon:SetBackground(doThis[7]);
	end
	quickslotPS.MouseEnter = function( sender , args )                               --/PlayStart*
		PlayStartIcon:SetBackground(doThis[10]);
		if (label2:GetText() == ""..L[5] ) then
			label2:SetText( "1" );
		end	
		addtoListBox();
	end
	quickslotPS.MouseLeave = function( sender , args )
		PlayStartIcon:SetBackground(doThis[9]);
	end
	quickslotSP.MouseEnter = function( sender , args )                               --/SyncPlay
		quickslotSP:SetShortcut( Turbine.UI.Lotro.Shortcut( Turbine.UI.Lotro.ShortcutType.Alias, ""..L[6] .." " ..label1:GetText() .." " ..label2:GetText() .." " ..L[10] ))
		quickslotP:SetShortcut( Turbine.UI.Lotro.Shortcut( Turbine.UI.Lotro.ShortcutType.Alias, ""..L[6] .." " ..label1:GetText() .." " ..label2:GetText()) )
		PlaySyncIcon:SetBackground(doThis[12]);
		if (label2:GetText() == ""..L[5] ) then
			label2:SetText( "1" );
		else	
		end	
		addtoListBox();
	end
	quickslotSP.MouseLeave = function( sender , args )
		PlaySyncIcon:SetBackground(doThis[11]);
	end
	quickslotlyrical.MouseEnter = function( sender , args )                               --/lyrical
		if (LyricalIsChecked == true) then
			LyricalIcon:SetBackground(doThis[2]);
		end
	end
	quickslotlyrical.MouseLeave = function( sender , args )
		if (LyricalIsChecked == true) then
			LyricalIcon:SetBackground(doThis[1]);
		end
	end
	compactQuicks.MouseEnter = function( sender , args )                               --/Compact
		compactcontrol:SetBackground(doThis[4]);
	end
	compactQuicks.MouseLeave = function( sender , args )
		compactcontrol:SetBackground(doThis[3]);
	end
end
kmapi = {
		addToTable = function(boxName, stringName, doThis)
			listItem = Turbine.UI.Label()
			listItem:SetSize( 150, 15 );
			listItem:SetBackColor( Turbine.UI.Color(  0.2, 0.2, 0.2 ) );
			listItem:SetText( ""..stringName );
			listItem:SetTextAlignment( Turbine.UI.ContentAlignment.MiddleCenter );
			listItem:SetForeColor( Turbine.UI.Color(  1.0, 1.0, 1.0 ) );
			if boxName == "colour" then
				if doThis == nil then
					if stringName == ""..L[38] then
							listItem:SetForeColor( Turbine.UI.Color(  0.5, 1.0, 1.0 ) );
					end
					if stringName == ""..L[42] then
							listItem:SetForeColor( Turbine.UI.Color(  1.0, 0.5, 1.0 ) );
							listItem:SetSize( 150, 45 );
					end
					listItem.MouseClick = function(sender , args)
						if stringName == "Rainbow" then
							ColRbow()
						end					
					end
				else
					listItem.MouseClick = function(sender , args)
							doColour( doThis[1], doThis[2], doThis[3], doThis[4], doThis[5], doThis[6], doThis[7], doThis[8], doThis[9] )		
					end
				end
				ColourLBox:AddItem( listItem );
			elseif boxName == "language" then
				if doThis == nil then
					if stringName == ""..L[39] then
							listItem:SetForeColor( Turbine.UI.Color(  0.5, 1.0, 1.0 ) );
					end
					if stringName == ""..L[23] then
							listItem:SetForeColor( Turbine.UI.Color(  1.0, 0.5, 1.0 ) );
							listItem:SetSize( 150, 60 );
					end
				else
					listItem.MouseClick = function(sender , args)
						colROne = Notes:GetBackColor().R
						colGOne = Notes:GetBackColor().G
						colBOne = Notes:GetBackColor().B
						colRTwo = label:GetBackColor().R
						colGTwo = label:GetBackColor().G
						colBTwo = label:GetBackColor().B
						colRThr = compactcontrol:GetBackColor().R
						colGThr = compactcontrol:GetBackColor().G
						colBThr = compactcontrol:GetBackColor().B
						X, Y = window:GetPosition();

						i = doThis
						optLang(i)
						UdateScreen()
						window:SetPosition(X, Y)
						loadSongsFromFile()
						doColour( colROne, colGOne, colBOne, colRTwo, colGTwo, colBTwo, colRThr, colGThr, colBThr )	
						mod_init.load_mod_init()	
					end
				end
				LanguageLBox:AddItem( listItem );
			elseif boxName == "buttons" then
				if doThis == nil then
					if stringName == ""..L[52] then
							listItem:SetForeColor( Turbine.UI.Color(  0.5, 1.0, 1.0 ) );
					end
					if stringName == ""..L[54] then
							listItem.MouseClick = function(sender , args)				
								UdateScreen()
								butConfig = "default";
								--Load.Click()
								mod_init.load_mod_init()
							end
					end
				else
					listItem.MouseClick = function(sender , args)
						buttons(doThis)
					end
				end
				ButtonsLBox:AddItem( listItem );
			elseif boxName == "package" then
				if stringName == ""..L[53] then
					listItem:SetForeColor( Turbine.UI.Color(  0.5, 1.0, 1.0 ) );
				else
					listItem.MouseClick = function(sender , args)
						X, Y = window:GetPosition();
						i = doThis.language
						optLang(i)
						UdateScreen()
						window:SetPosition(X, Y)
						loadSongsFromFile()
						doColour( doThis.colour[1], doThis.colour[2], doThis.colour[3], doThis.colour[4], doThis.colour[5], doThis.colour[6], doThis.colour[7], doThis.colour[8], doThis.colour[9] )			
						buttons(doThis.buttons)
						mod_init.load_mod_init()
					end
				end
				PackageLBox:AddItem( listItem );
			else
				Turbine.Shell.WriteLine("Listbox Specified Is Not Valid: "..boxName)
			end
		end,
		isTrue = function(t) 
			if ( t == true ) then
				return "true"
			else
				return "false"
			end
		end,
		console = {
				text = function(text) 
					Turbine.Shell.WriteLine(""..text);
				end
		},
		package = function(name, package) -- package is a table
			kmapi.addToTable("package", name, package)
		end,
		addSongs = function(songs)
			if (AllowSongs:IsChecked() == true) then
				for i=1, table.maxn(songs) do
					if songs[i] == "" then
					else
						local listItem = Turbine.UI.Label();
						listItem:SetSize( 197, 20 );
						listItem:SetBackColor( Turbine.UI.Color( currColour.R, currColour.G, currColour.B ) );
						listItem:SetForeColor( Turbine.UI.Color( 0.0, 0.0, 0.0 ) );
						listItem:SetTextAlignment( Turbine.UI.ContentAlignment.MiddleCenter );
						listItem:SetText("" ..songs[i]);
						listbox:AddItem( listItem )
						listItem.MouseClick = function(sender , args)
							if (listItem.IsShiftKeyDown() == true) then
								local currentItemindex = listbox:GetSelectedIndex(); 
								listbox:RemoveItemAt(currentItemindex);							
							else		
								label1:SetText(listItem:GetText());
							end
						end
					end
				end
			end
		end,
		getVersion = function(module)
			if module == "kmabc" then
				return "1.4"
			elseif module == "kmapi" then
				return "1.1"
			else
				return "Module Unknown"
			end
		end,
		getSong = function(i) 
			return listbox:GetItem(i):GetText()
		end,
		getNumOfSongs = function()
			return listbox:GetItemCount()
		end,
		getNextFreeId = function()
			numberoflangs = numberoflangs + 1
			return ("" ..numberoflangs)
		end,
		getCurrentLanguageID = function()
			return Langnum;
		end
	};
