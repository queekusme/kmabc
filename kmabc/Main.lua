import "Turbine";
import "Turbine.Gameplay";
import "Turbine.UI";
import "Turbine.UI.Lotro";
import "Turbine.UI.Extensions";
import "QueekusPlugins.kmabc.LangData"
import "QueekusPlugins.kmabc.ChatData"
import "QueekusPlugins.kmabc.options";
import "QueekusPlugins.kmabc.kmapi";
import "QueekusPlugins.kmabc.mod_init";
LangVerified = false;
savedataTHD = Turbine.PluginData.Load(Turbine.DataScope.Character, "KmabcSaveData", null);
UpdLang();
isLoaded = false;
antiExploitBuffer = true
currColour = {R = 0.0, G = 0.0,B = 1.0}
lyricalIsLoaded = false
function AntiExploit(type)
	if type == "save"then
		if antiExploitBuffer == true then
			Save.Click();
			antiExploitBuffer = false
		end
	elseif type == "load"then
		if antiExploitBuffer == true then
			Load.Click();
			isLoaded = true
			antiExploitBuffer = false
		end
	end
end
function UnExploit()
	antiExploitBuffer = true
end	
function loadSongsFromFile()
	tablenumofsongs = 0;
	pcall(function()tablenumofsongs = table.maxn(savedataTHD.PlaylistSave) end);			
	pcall(
	function()
		for i=1, tablenumofsongs do
			local listItem = Turbine.UI.Label();
			listItem:SetSize( 197, 20 );
			listItem:SetBackColor( Turbine.UI.Color( savedataTHD.PlaylistColourSave.R, savedataTHD.PlaylistColourSave.G, savedataTHD.PlaylistColourSave.B ) );
			listItem:SetForeColor( Turbine.UI.Color( 0.0, 0.0, 0.0 ) );
			listItem:SetTextAlignment( Turbine.UI.ContentAlignment.MiddleCenter );
			listItem:SetText("" ..savedataTHD.PlaylistSave[i]);
			listbox:AddItem( listItem );
			listItem.MouseClick = function(sender , args)
				if (listItem.IsShiftKeyDown() == true) then
					local currentItemindex = listbox:GetSelectedIndex(); 
					listbox:RemoveItemAt(currentItemindex);							
				else		
					label1:SetText(listItem:GetText());
				end
			end
		end
	end)
end
UdateScreen = function (sender, args)
	if (LangVerified == true) then
		window = Turbine.UI.Lotro.Window();
		window:SetPosition( 350, 100 );
		window:SetSize( 418, 443 );
		window:SetText( ""..P1 .."1.4");
		window:SetVisible( true );
		window:SetOpacity( "1" );
		window.MouseEnter = function(sender, args)
			UnExploit()
		end
		label = Turbine.UI.Label();
		label:SetParent( window );
		label:SetPosition( 31, 34 );
		label:SetSize( 158, 15 );
		label:SetBackColor( Turbine.UI.Color(  0.0, 0.05, 1.0 ) );
		label:SetText( ""..P24 );
		label:SetTextAlignment( Turbine.UI.ContentAlignment.MiddleCenter );
		label:SetForeColor( Turbine.UI.Color(  0.0, 0.0, 0.0 ) );
		Copywrite = Turbine.UI.Label();
		Copywrite:SetParent( window );
		Copywrite:SetSelectable( true );
		Copywrite:SetPosition( 50, 418 );
		Copywrite:SetSize( 318, 15 );
		Copywrite:SetBackColor( Turbine.UI.Color( 0.0, 0.05, 1.0 ) );
		Copywrite:SetText( ""..P3 );
		Copywrite:SetTextAlignment( Turbine.UI.ContentAlignment.MiddleCenter );
		Copywrite:SetForeColor( Turbine.UI.Color(  0.0, 0.0, 0.0 ) );
		label1 = Turbine.UI.TextBox();
		label1:SetParent( window );
		label1:SetSelectable( true );
		label1:SetPosition( 10, 92 );
		label1:SetSize( 118, 38 );
		label1:SetBackColor( Turbine.UI.Color( 0.0, 0.05, 1.0 ) );
		label1:SetText( ""..P4 );
		label1:SetTextAlignment( Turbine.UI.ContentAlignment.MiddleCenter );
		label1:SetForeColor( Turbine.UI.Color(  0.0, 0.0, 0.0 ) );
		label2 = Turbine.UI.TextBox();
		label2:SetParent( window );
		label2:SetSelectable( true );
		label2:SetPosition( 130, 92 );
		label2:SetSize( 78, 38 );
		label2:SetBackColor( Turbine.UI.Color( 0.0, 0.05, 1.0 ) );
		label2:SetText( ""..P5 );
		label2:SetTextAlignment( Turbine.UI.ContentAlignment.MiddleCenter );
		label2:SetForeColor( Turbine.UI.Color(  0.0, 0.0, 0.0 ) );
		quickslot1 = Turbine.UI.Lotro.Quickslot()
		quickslot1:SetParent( window );
		quickslot1:SetPosition( 10, 52 );
		quickslot1:SetSize( 38, 38 );	
		quickslot1:SetAllowDrop(true);
		quickslot1:SetBackColor( Turbine.UI.Color( 0.0, 0.05, 1.0 ) );
		quickslot2 = Turbine.UI.Lotro.Quickslot()
		quickslot2:SetParent( window );
		quickslot2:SetPosition( 50, 52 );
		quickslot2:SetSize( 38, 38 );
		quickslot2:SetAllowDrop(true);
		quickslot2:SetBackColor( Turbine.UI.Color( 0.0, 0.05, 1.0 ) );
		quickslot3 = Turbine.UI.Lotro.Quickslot()
		quickslot3:SetParent( window );
		quickslot3:SetPosition( 90, 52 );
		quickslot3:SetSize( 38, 38 );
		quickslot3:SetAllowDrop(true);
		quickslot3:SetBackColor( Turbine.UI.Color( 0.0, 0.05, 1.0 ) );
		quickslot4 = Turbine.UI.Lotro.Quickslot()
		quickslot4:SetParent( window );
		quickslot4:SetPosition( 130, 52 );
		quickslot4:SetSize( 38, 38 );
		quickslot4:SetAllowDrop(true);
		quickslot4:SetBackColor( Turbine.UI.Color( 0.0, 0.05, 1.0 ) );
		quickslot5 = Turbine.UI.Lotro.Quickslot()
		quickslot5:SetParent( window );
		quickslot5:SetPosition( 170, 52 );
		quickslot5:SetSize( 38, 38 );
		quickslot5:SetAllowDrop(true);
		quickslot5:SetBackColor( Turbine.UI.Color( 0.0, 0.05, 1.0 ) );
		quickslot6 = Turbine.UI.Lotro.Quickslot()
		quickslot6:SetParent( window );
		quickslot6:SetPosition( 210, 52 );
		quickslot6:SetSize( 38, 38 );
		quickslot6:SetAllowDrop(true);
		quickslot6:SetBackColor( Turbine.UI.Color( 0.0, 0.05, 1.0 ) );
		quickslot7 = Turbine.UI.Lotro.Quickslot()
		quickslot7:SetParent( window );
		quickslot7:SetPosition( 250, 52 );
		quickslot7:SetSize( 38, 38 );
		quickslot7:SetAllowDrop(true);
		quickslot7:SetBackColor( Turbine.UI.Color( 0.0, 0.05, 1.0 ) );
		quickslot8 = Turbine.UI.Lotro.Quickslot()
		quickslot8:SetParent( window );
		quickslot8:SetPosition( 290, 52 );
		quickslot8:SetSize( 38, 38 );
		quickslot8:SetAllowDrop(true);
		quickslot8:SetBackColor( Turbine.UI.Color( 0.0, 0.05, 1.0 ) );
		quickslot9 = Turbine.UI.Lotro.Quickslot()
		quickslot9:SetParent( window );
		quickslot9:SetPosition( 330, 52 );
		quickslot9:SetSize( 38, 38 );
		quickslot9:SetAllowDrop(true);
		quickslot9:SetBackColor( Turbine.UI.Color( 0.0, 0.05, 1.0 ) );
		quickslotlyrical = Turbine.UI.Lotro.Quickslot()
		quickslotlyrical:SetParent( window );
		quickslotlyrical:SetPosition( 370, 52 );
		quickslotlyrical:SetSize( 38, 38 );
		quickslot1.DragLeave = function(sender, args)
			quickslot1:SetShortcut( Turbine.UI.Lotro.Shortcut(  ) );
		end
		quickslot2.DragLeave = function(sender, args)
			quickslot2:SetShortcut( Turbine.UI.Lotro.Shortcut(  ) );
		end
		quickslot3.DragLeave = function(sender, args)
			quickslot3:SetShortcut( Turbine.UI.Lotro.Shortcut(  ) );
		end
		quickslot4.DragLeave = function(sender, args)
			quickslot4:SetShortcut( Turbine.UI.Lotro.Shortcut(  ) );
		end
		quickslot5.DragLeave = function(sender, args)
			quickslot5:SetShortcut( Turbine.UI.Lotro.Shortcut(  ) );
		end
		quickslot6.DragLeave = function(sender, args)
			quickslot6:SetShortcut( Turbine.UI.Lotro.Shortcut(  ) );
		end
		quickslot7.DragLeave = function(sender, args)
			quickslot7:SetShortcut( Turbine.UI.Lotro.Shortcut(  ) );
		end
		quickslot8.DragLeave = function(sender, args)
			quickslot8:SetShortcut( Turbine.UI.Lotro.Shortcut(  ) );
		end
		quickslot9.DragLeave = function(sender, args)
			quickslot9:SetShortcut( Turbine.UI.Lotro.Shortcut(  ) );
		end
		quickslotlyrical.DragLeave = function(sender, args)
			if LyricalIsChecked == false then
				quickslotlyrical:SetShortcut( Turbine.UI.Lotro.Shortcut(  ) );
			end
		end
		quickslotlyrical.MouseUp = function(sender , args)
			if (LyricalIsChecked == true) then
				quickslotlyrical:SetShortcut( Turbine.UI.Lotro.Shortcut( Turbine.UI.Lotro.ShortcutType.Alias, ""..P20) )
				Turbine.PluginManager.LoadPlugin("Lyrical");
				lyricalIsLoaded = true
			end
		end
		quickslotlyrical:SetAllowDrop(true);
		quickslotlyrical:SetZOrder(100);
		quickslotlyrical:SetBackColor( Turbine.UI.Color( 0.0, 0.15, 1.0 ) );
		quickslotSP = Turbine.UI.Lotro.Quickslot()
		quickslotSP:SetParent( window );
		quickslotSP:SetPosition( 330, 92 );
		quickslotSP:SetSize( 38, 38 );
		quickslotSP:SetShortcut( Turbine.UI.Lotro.Shortcut( Turbine.UI.Lotro.ShortcutType.Alias, ""..P6 .." " ..label1:GetText() .." " ..label2:GetText() .." " ..P10) )
		quickslotSP:SetAllowDrop(true);
		quickslotSP:SetBackColor( Turbine.UI.Color( 0.0, 0.15, 1.0 ) );
		quickslotPS = Turbine.UI.Lotro.Quickslot()
		quickslotPS:SetParent( window );
		quickslotPS:SetPosition( 370, 92 );
		quickslotPS:SetSize( 38, 38 );
		quickslotPS:SetShortcut( Turbine.UI.Lotro.Shortcut( Turbine.UI.Lotro.ShortcutType.Alias, ""..P7) )
		quickslotPS:SetAllowDrop(true);
		quickslotPS:SetBackColor( Turbine.UI.Color( 0.0, 0.15, 1.0 ) );
		quickslotP = Turbine.UI.Lotro.Quickslot()
		quickslotP:SetParent( window );
		quickslotP:SetPosition( 290, 92 );
		quickslotP:SetSize( 38, 38 );
		quickslotP:SetShortcut( Turbine.UI.Lotro.Shortcut( Turbine.UI.Lotro.ShortcutType.Alias, ""..P6 .." " ..label1:GetText() .." " ..label2:GetText()) )
		quickslotP:SetAllowDrop(true);
		quickslotP:SetBackColor( Turbine.UI.Color( 0.0, 0.15, 1.0 ) );
		quickslotMM = Turbine.UI.Lotro.Quickslot()
		quickslotMM:SetParent( window );
		quickslotMM:SetPosition( 250, 92 );
		quickslotMM:SetSize( 38, 38 );
		quickslotMM:SetZOrder(100);
		quickslotMM:SetShortcut( Turbine.UI.Lotro.Shortcut( Turbine.UI.Lotro.ShortcutType.Alias, ""..P8) )
		quickslotMM:SetAllowDrop(true);
		quickslotMM:SetBackColor( Turbine.UI.Color( 0.0, 0.15, 1.0 ) );
		compactQuicks = Turbine.UI.Lotro.Quickslot()
		compactQuicks:SetParent( window );
		compactQuicks:SetPosition( 210, 92 );
		compactQuicks:SetSize( 38, 38 );
		compactQuicks:SetZOrder(100);
		compactQuicks:SetShortcut( Turbine.UI.Lotro.Shortcut( Turbine.UI.Lotro.ShortcutType.Alias, ""..P9) )
		compactQuicks:SetAllowDrop(true);
		compactQuicks:SetBackColor( Turbine.UI.Color( 0.0, 0.15, 1.0 ) );
		compactcontrol = Turbine.UI.Control();
		compactcontrol:SetParent( window );
		compactcontrol:SetPosition(210, 92);
		compactcontrol:SetSize(38, 38);
		compactcontrol:SetZOrder(110);
		compactcontrol:SetMouseVisible(false);
		compactcontrol:SetBackground("QueekusPlugins/kmabc/CompactBasicIcon.tga");
		compactcontrol:SetBackColor( Turbine.UI.Color(  0.0, 0.15, 1.0 ) );
		compactcontrol:SetBackColorBlendMode( Turbine.UI.BlendMode.Color );
		musicIcon = Turbine.UI.Control();
		musicIcon:SetParent( window );
		musicIcon:SetPosition(250, 92);
		musicIcon:SetSize(38, 38);
		musicIcon:SetZOrder(110);
		musicIcon:SetMouseVisible(false);
		musicIcon:SetBackground("QueekusPlugins/kmabc/MusicBasicIcon.tga");
		musicIcon:SetBackColor( Turbine.UI.Color(  0.0, 0.15, 1.0 ) );
		musicIcon:SetBackColorBlendMode( Turbine.UI.BlendMode.Color );
		playIcon = Turbine.UI.Control();
		playIcon:SetParent( window );
		playIcon:SetPosition(290, 92);
		playIcon:SetSize(38, 38);
		playIcon:SetZOrder(110);
		playIcon:SetMouseVisible(false);
		playIcon:SetBackground("QueekusPlugins/kmabc/PlayBasicIcon.tga");
		playIcon:SetBackColor( Turbine.UI.Color(  0.0, 0.15, 1.0 ) );
		playIcon:SetBackColorBlendMode( Turbine.UI.BlendMode.Color );
		PlaySyncIcon = Turbine.UI.Control();
		PlaySyncIcon:SetParent( window );
		PlaySyncIcon:SetPosition(330, 92);
		PlaySyncIcon:SetSize(38, 38);
		PlaySyncIcon:SetZOrder(110);
		PlaySyncIcon:SetMouseVisible(false);
		PlaySyncIcon:SetBackground("QueekusPlugins/kmabc/PlaySyncBasicIcon.tga");
		PlaySyncIcon:SetBackColor( Turbine.UI.Color(  0.0, 0.15, 1.0 ) );
		PlaySyncIcon:SetBackColorBlendMode( Turbine.UI.BlendMode.Color );
		PlayStartIcon = Turbine.UI.Control();
		PlayStartIcon:SetParent( window );
		PlayStartIcon:SetPosition(370, 92);
		PlayStartIcon:SetSize(38, 38);
		PlayStartIcon:SetZOrder(110);
		PlayStartIcon:SetMouseVisible(false);
		PlayStartIcon:SetBackground("QueekusPlugins/kmabc/PlaystartBasicIcon.tga");
		PlayStartIcon:SetBackColor( Turbine.UI.Color(  0.0, 0.15, 1.0 ) );
		PlayStartIcon:SetBackColorBlendMode( Turbine.UI.BlendMode.Color );
		LyricalIcon = Turbine.UI.Control();
		LyricalIcon:SetParent( window );
		LyricalIcon:SetPosition(370, 52);
		LyricalIcon:SetSize(38, 38);
		LyricalIcon:SetZOrder(110);
		LyricalIcon:SetMouseVisible(false);
		if (LyricalIsChecked == true) then
			LyricalIcon:SetBackground("QueekusPlugins/kmabc/LyricalBasicIcon.tga");
			LyricalIcon:SetParent( window );
		else
			LyricalIcon:SetParent( );
		end
		LyricalIcon:SetBackColor( Turbine.UI.Color(  0.0, 0.15, 1.0 ) );
		LyricalIcon:SetBackColorBlendMode( Turbine.UI.BlendMode.Color );
		Notes = Turbine.UI.Lotro.TextBox();
		Notes:SetParent( window );
		Notes:SetSelectable( true );
		Notes:SetPosition( 211, 132 );
		Notes:SetSize( 197, 284 );
		Notes:SetBackColor( Turbine.UI.Color( 0.0, 0.05, 1.0 ) );
		Notes:SetText( ""..P11 );
		Notes:SetTextAlignment( Turbine.UI.ContentAlignment.TopLeft );
		sidebar = Turbine.UI.Lotro.ScrollBar();
		sidebar:SetOrientation( Turbine.UI.Orientation.Vertical );
		sidebar:SetParent( window );
		sidebar:SetSize( 8, 284 );
		sidebar:SetPosition( 402, 132 );
		sidebar:SetZOrder(60);
		Notes:SetVerticalScrollBar( sidebar );
		PlistName = Turbine.UI.Label();
		PlistName:SetParent( window );
		PlistName:SetPosition( 10, 132 );
		PlistName:SetSize( 198, 20 );
		PlistName:SetBackColor( Turbine.UI.Color( 0.0, 0.05, 1.0 ) );
		PlistName:SetText( ""..P19 );
		PlistName:SetTextAlignment( Turbine.UI.ContentAlignment.MiddleCenter );
		PlistName:SetForeColor( Turbine.UI.Color(  0.0, 0.0, 0.0 ) );
		listbox = Turbine.UI.ListBox();
		listbox:SetParent( window );
		listbox:SetBackColor( Turbine.UI.Color( 0.0, 0.05, 1.0) );
		listbox:SetPosition( 11, 155 );
		listbox:SetSize( 197, 261 );
		function addtoListBox()			
			songname = label1:GetText();
			currentlistboxitems = {};			
			allow = true;
			for i=1, listbox:GetItemCount() do
				local currentItem = listbox:GetItem(i);  
				currentlistboxitems[i] = currentItem:GetText();			
			end
			currentlistboxitemsvalue = table.maxn(currentlistboxitems);
			for i=1, currentlistboxitemsvalue do
				local currentItem = listbox:GetItem(i); 
				if (songname == currentlistboxitems[i]) then
					allow = false
				end
			end		
			if (songname == ""..P4) then
				allow = false
			end
			if (allow == true) then
				local listItem = Turbine.UI.Label();
				listItem:SetSize( 197, 20 );
				listItem:SetBackColor( Turbine.UI.Color( currColour.R, currColour.G, currColour.B ) );
				listItem:SetForeColor( Turbine.UI.Color( 0.0, 0.0, 0.0 ) );
				listItem:SetTextAlignment( Turbine.UI.ContentAlignment.MiddleCenter );
				listItem:SetText("" ..songname);
				listbox:AddItem( listItem );
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
		sidebar2 = Turbine.UI.Lotro.ScrollBar();
		sidebar2:SetOrientation( Turbine.UI.Orientation.Vertical );
		sidebar2:SetParent( window );
		sidebar2:SetSize( 8, 261 );
		sidebar2:SetPosition( 200, 155 );
		sidebar2:SetZOrder(60);
		listbox:SetVerticalScrollBar(sidebar2);
		local songname = "";
		quickslotMM.MouseEnter = function( sender , args )                               --/Music*
			musicIcon:SetBackground("QueekusPlugins/kmabc/MusicHoverIcon.tga");
			if (label2:GetText() == ""..P5 ) then
				label2:SetText( "1" );
			else	
			end
			addtoListBox();
		end
		quickslotMM.MouseLeave = function( sender , args )
			musicIcon:SetBackground("QueekusPlugins/kmabc/MusicBasicIcon.tga");
		end
		quickslotP.MouseEnter = function(sender, args)                               --/Play
			quickslotSP:SetShortcut( Turbine.UI.Lotro.Shortcut( Turbine.UI.Lotro.ShortcutType.Alias, ""..P6 .." " ..label1:GetText() .." " ..label2:GetText() .." " ..P10 ))
			quickslotP:SetShortcut( Turbine.UI.Lotro.Shortcut( Turbine.UI.Lotro.ShortcutType.Alias, ""..P6 .." " ..label1:GetText() .." " ..label2:GetText()) )
			playIcon:SetBackground("QueekusPlugins/kmabc/PlayHoverIcon.tga");
			if (label2:GetText() == ""..P5 ) then
				label2:SetText( "1" );	
			end	
			addtoListBox();
		end
		quickslotP.MouseLeave = function( sender , args )
			playIcon:SetBackground("QueekusPlugins/kmabc/PlayBasicIcon.tga");
		end
		quickslotPS.MouseEnter = function( sender , args )                               --/PlayStart*
			PlayStartIcon:SetBackground("QueekusPlugins/kmabc/PlaystartHoverIcon.tga");
			if (label2:GetText() == ""..P5 ) then
				label2:SetText( "1" );
			end
			addtoListBox();
		end
		quickslotPS.MouseLeave = function( sender , args )
			PlayStartIcon:SetBackground("QueekusPlugins/kmabc/PlaystartBasicIcon.tga");
		end
		quickslotSP.MouseEnter = function( sender , args )                               --/SyncPlay
			quickslotSP:SetShortcut( Turbine.UI.Lotro.Shortcut( Turbine.UI.Lotro.ShortcutType.Alias, ""..P6 .." " ..label1:GetText() .." " ..label2:GetText() .." " ..P10 ))
			quickslotP:SetShortcut( Turbine.UI.Lotro.Shortcut( Turbine.UI.Lotro.ShortcutType.Alias, ""..P6 .." " ..label1:GetText() .." " ..label2:GetText()) )
			PlaySyncIcon:SetBackground("QueekusPlugins/kmabc/PlaySyncHoverIcon.tga");
			if (label2:GetText() == ""..P5 ) then
				label2:SetText( "1" );		
			end		
			addtoListBox();
		end
		quickslotSP.MouseLeave = function( sender , args )
			PlaySyncIcon:SetBackground("QueekusPlugins/kmabc/PlaySyncBasicIcon.tga");
		end
		quickslotlyrical.MouseEnter = function( sender , args )                               --/lyrical
			if (LyricalIsChecked == true) then
				LyricalIcon:SetBackground("QueekusPlugins/kmabc/LyricalHoverIcon.tga");
			end
		end
		quickslotlyrical.MouseLeave = function( sender , args )
			if (LyricalIsChecked == true) then
				LyricalIcon:SetBackground("QueekusPlugins/kmabc/LyricalBasicIcon.tga");
			end
		end
		compactQuicks.MouseEnter = function( sender , args )                               --/Compact
			compactcontrol:SetBackground("QueekusPlugins/kmabc/CompactHoverIcon.tga");

		end
		compactQuicks.MouseLeave = function( sender , args )
			compactcontrol:SetBackground("QueekusPlugins/kmabc/CompactBasicIcon.tga");
		end
		Save = Turbine.UI.Button(); -- So that following functions work
		Load = Turbine.UI.Button();
	Save.Click = function( sender , args )
			savedataTHD ={
					quickslot1SavData = { Data ,
							      Type ,
							    };
					quickslot2SavData = { Data ,
							      Type ,
							    };
					quickslot3SavData = { Data ,
							      Type ,
							    };
					quickslot4SavData = { Data ,
							      Type ,
							    };
					quickslot5SavData = { Data ,
							      Type ,
							    };
					quickslot6SavData = { Data ,
							      Type ,
							    };
					quickslot7SavData = { Data ,
							      Type ,
							    };
					quickslot8SavData = { Data ,
							      Type ,
							    };
					quickslot9SavData = { Data ,
							      Type ,
							    };
					lyricalQslotSavData = { Data ,
								Type ,
							      };
					PlaylistSave = {};
					NotesSave = "";
					CurrentLanguage = langnum;
					quickslot1ColourSave = quickslot1:GetBackColor();
					quickslot2ColourSave = quickslot2:GetBackColor();
					quickslot3ColourSave = quickslot3:GetBackColor();
					quickslot4ColourSave = quickslot4:GetBackColor();
					quickslot5ColourSave = quickslot5:GetBackColor();
					quickslot6ColourSave = quickslot6:GetBackColor();
					quickslot7ColourSave = quickslot7:GetBackColor();
					quickslot8ColourSave = quickslot8:GetBackColor();
					quickslot9ColourSave = quickslot9:GetBackColor();
					quickslotLyricalColourSave = quickslotlyrical:GetBackColor();
					labelColourSave = label:GetBackColor();
					CopywriteColourSave = Copywrite:GetBackColor();
					label1ColourSave = label1:GetBackColor();
					label2ColourSave = label2:GetBackColor();
					NotesColourSave = Notes:GetBackColor();
					labelPlaylistTitle = PlistName:GetBackColor();
					listboxcolour = listbox:GetBackColor();
					SaveColourSave = Save:GetBackColor();
					LoadColourSave = Load:GetBackColor();
					musicIconColourSave = musicIcon:GetBackColor();
					PlayIconColourSave = playIcon:GetBackColor();
					PlayStartIconColourSave = PlayStartIcon:GetBackColor();
					PlaySyncIconColourSave = PlaySyncIcon:GetBackColor();
					LyricalIconColourSave = LyricalIcon:GetBackColor();
					compactcontrolColourSave = compactcontrol:GetBackColor();
					positionX = 0;
					positionY = 0;
					AllowSongsFromMods = AllowSongs:IsChecked();
				}
				savedataTHD.NotesSave = Notes:GetText();
			for i=1, listbox:GetItemCount() do
				local currentItem = listbox:GetItem(i);  
				savedataTHD.PlaylistSave[i] = currentItem:GetText();
			end
			savedataTHD.PlaylistColourSave = listbox:GetBackColor();
			shortcut1 = quickslot1:GetShortcut();
			savedataTHD.quickslot1SavData.Data = shortcut1:GetData();
			savedataTHD.quickslot1SavData.Type = shortcut1:GetType();
			shortcut2 = quickslot2:GetShortcut();
			savedataTHD.quickslot2SavData.Data = shortcut2:GetData();
			savedataTHD.quickslot2SavData.Type = shortcut2:GetType();
			shortcut3 = quickslot3:GetShortcut();
			savedataTHD.quickslot3SavData.Data = shortcut3:GetData();
			savedataTHD.quickslot3SavData.Type = shortcut3:GetType();
			shortcut4 = quickslot4:GetShortcut();
			savedataTHD.quickslot4SavData.Data = shortcut4:GetData();
			savedataTHD.quickslot4SavData.Type = shortcut4:GetType();
			shortcut5 = quickslot5:GetShortcut();
			savedataTHD.quickslot5SavData.Data = shortcut5:GetData();
			savedataTHD.quickslot5SavData.Type = shortcut5:GetType();
			shortcut6 = quickslot6:GetShortcut();
			savedataTHD.quickslot6SavData.Data = shortcut6:GetData();
			savedataTHD.quickslot6SavData.Type = shortcut6:GetType();
			shortcut7 = quickslot7:GetShortcut();
			savedataTHD.quickslot7SavData.Data = shortcut7:GetData();
			savedataTHD.quickslot7SavData.Type = shortcut7:GetType();
			shortcut8 = quickslot8:GetShortcut();
			savedataTHD.quickslot8SavData.Data = shortcut8:GetData();
			savedataTHD.quickslot8SavData.Type = shortcut8:GetType();
			shortcut9 = quickslot9:GetShortcut();
			savedataTHD.quickslot9SavData.Data = shortcut9:GetData();
			savedataTHD.quickslot9SavData.Type = shortcut9:GetType();
			if (LyricalIsChecked == true) then
			else
				shortcutLyric = quickslotlyrical:GetShortcut();
				savedataTHD.lyricalQslotSavData.Data = shortcutLyric:GetData();
				savedataTHD.lyricalQslotSavData.Type = shortcutLyric:GetType();
			end
			X, Y = window:GetPosition();
			savedataTHD.positionX=X;
			savedataTHD.positionY=Y;
				Turbine.PluginData.Save(Turbine.DataScope.Character, "KmabcSaveData", savedataTHD); 
			Turbine.Shell.WriteLine("KMABC: "..P21 .." 100%");
		end
		Load.Click = function( sender , args )
			pcall(function() langnum = savedataTHD.CurrentLanguage end);
			language(langnum)
			optLang(langnum)
			ColourLBox:ClearItems();
			LanguageLBox:ClearItems();
			ButtonsLBox:ClearItems();
			PackageLBox:ClearItems();
			pcall(function() currColour.R = savedataTHD.CopywriteColourSave.R end);
			pcall(function() currColour.G = savedataTHD.CopywriteColourSave.G end);
			pcall(function() currColour.B = savedataTHD.CopywriteColourSave.B end);
			X = 350
			Y = 100		
			pcall(function()
				if savedataTHD.positionX then
					pcall(function() X = savedataTHD.positionX end);
					pcall(function() Y = savedataTHD.positionY end);
				end
			end);
			window:SetVisible(false);
			UdateScreen();
			pcall(function() window:SetPosition(X, Y) end);
			window:SetVisible(true);
			pcall(
				function()
					if (savedataTHD.NotesSave == "") then
						Notes:SetText(P11)
					else
						Notes:SetText(savedataTHD.NotesSave)
					end
				end
			);
			pcall(function() PlistName:SetBackColor( Turbine.UI.Color( savedataTHD.labelPlaylistTitle.R, savedataTHD.labelPlaylistTitle.G, savedataTHD.labelPlaylistTitle.B )) end); 
			pcall(function() listbox:SetBackColor(Turbine.UI.Color( savedataTHD.listboxcolour.R, savedataTHD.listboxcolour.G, savedataTHD.listboxcolour.B )) end);
			pcall(function() quickslot1:SetBackColor(Turbine.UI.Color( savedataTHD.quickslot1ColourSave.R, savedataTHD.quickslot1ColourSave.G, savedataTHD.quickslot1ColourSave.B )) end);
			pcall(function() quickslot2:SetBackColor(Turbine.UI.Color( savedataTHD.quickslot2ColourSave.R, savedataTHD.quickslot2ColourSave.G, savedataTHD.quickslot2ColourSave.B )) end);
			pcall(function() quickslot3:SetBackColor(Turbine.UI.Color( savedataTHD.quickslot3ColourSave.R, savedataTHD.quickslot3ColourSave.G, savedataTHD.quickslot3ColourSave.B )) end);
			pcall(function() quickslot4:SetBackColor(Turbine.UI.Color( savedataTHD.quickslot4ColourSave.R, savedataTHD.quickslot4ColourSave.G, savedataTHD.quickslot4ColourSave.B )) end);
			pcall(function() quickslot5:SetBackColor(Turbine.UI.Color( savedataTHD.quickslot5ColourSave.R, savedataTHD.quickslot5ColourSave.G, savedataTHD.quickslot5ColourSave.B )) end);
			pcall(function() quickslot6:SetBackColor(Turbine.UI.Color( savedataTHD.quickslot6ColourSave.R, savedataTHD.quickslot6ColourSave.G, savedataTHD.quickslot6ColourSave.B )) end);
			pcall(function() quickslot7:SetBackColor(Turbine.UI.Color( savedataTHD.quickslot7ColourSave.R, savedataTHD.quickslot7ColourSave.G, savedataTHD.quickslot7ColourSave.B )) end);
			pcall(function() quickslot8:SetBackColor(Turbine.UI.Color( savedataTHD.quickslot8ColourSave.R, savedataTHD.quickslot8ColourSave.G, savedataTHD.quickslot8ColourSave.B )) end);
			pcall(function() quickslot9:SetBackColor(Turbine.UI.Color( savedataTHD.quickslot9ColourSave.R, savedataTHD.quickslot9ColourSave.G, savedataTHD.quickslot9ColourSave.B )) end);		
			pcall(
				function()
					if (savedataTHD.lyricalQslotSavData.Data == nil) then
						quickslotlyrical:SetShortcut( Turbine.UI.Lotro.Shortcut( Turbine.UI.Lotro.ShortcutType.Alias, ""..P2) )	
					else
						local quickslotlyricalLoad = Turbine.UI.Lotro.Shortcut();
						quickslotlyricalLoad:SetData(savedataTHD.lyricalQslotSavData.Data)
						quickslotlyricalLoad:SetType(savedataTHD.lyricalQslotSavData.Type)
						quickslotlyrical:SetShortcut(quickslotlyricalLoad)
						LyricalIcon:SetParent( );
						isLoaded = true
						buffer();
					end
				end
			);
			local shortcutLoad1 = Turbine.UI.Lotro.Shortcut();
			pcall(function() shortcutLoad1:SetType(savedataTHD.quickslot1SavData.Type) end);
			pcall(function() shortcutLoad1:SetData(savedataTHD.quickslot1SavData.Data) end);
			pcall(function() quickslot1:SetShortcut(shortcutLoad1) end);
			local shortcutLoad2 = Turbine.UI.Lotro.Shortcut();
			pcall(function()shortcutLoad2:SetType(savedataTHD.quickslot2SavData.Type) end);
			pcall(function()shortcutLoad2:SetData(savedataTHD.quickslot2SavData.Data) end);
			pcall(function()quickslot2:SetShortcut(shortcutLoad2) end);
			local shortcutLoad3 = Turbine.UI.Lotro.Shortcut();
			pcall(function()shortcutLoad3:SetType(savedataTHD.quickslot3SavData.Type) end);
			pcall(function()shortcutLoad3:SetData(savedataTHD.quickslot3SavData.Data) end);
			pcall(function()quickslot3:SetShortcut(shortcutLoad3) end);
			local shortcutLoad4 = Turbine.UI.Lotro.Shortcut();
			pcall(function()shortcutLoad4:SetType(savedataTHD.quickslot4SavData.Type) end);
			pcall(function()shortcutLoad4:SetData(savedataTHD.quickslot4SavData.Data) end);
			pcall(function()quickslot4:SetShortcut(shortcutLoad4) end);
			local shortcutLoad5 = Turbine.UI.Lotro.Shortcut();
			pcall(function()shortcutLoad5:SetType(savedataTHD.quickslot5SavData.Type) end);
			pcall(function()shortcutLoad5:SetData(savedataTHD.quickslot5SavData.Data) end);
			pcall(function()quickslot5:SetShortcut(shortcutLoad5) end);
			local shortcutLoad6 = Turbine.UI.Lotro.Shortcut();
			pcall(function()shortcutLoad6:SetType(savedataTHD.quickslot6SavData.Type) end);
			pcall(function()shortcutLoad6:SetData(savedataTHD.quickslot6SavData.Data) end);
			pcall(function()quickslot6:SetShortcut(shortcutLoad6) end);
			local shortcutLoad7 = Turbine.UI.Lotro.Shortcut();
			pcall(function()shortcutLoad7:SetType(savedataTHD.quickslot7SavData.Type) end);
			pcall(function()shortcutLoad7:SetData(savedataTHD.quickslot7SavData.Data) end);
			pcall(function()quickslot7:SetShortcut(shortcutLoad7) end);
			local shortcutLoad8 = Turbine.UI.Lotro.Shortcut();
			pcall(function()shortcutLoad8:SetType(savedataTHD.quickslot8SavData.Type) end);
			pcall(function()shortcutLoad8:SetData(savedataTHD.quickslot8SavData.Data) end);
			pcall(function()quickslot8:SetShortcut(shortcutLoad8) end);
			local shortcutLoad9 = Turbine.UI.Lotro.Shortcut();
			pcall(function()shortcutLoad9:SetType(savedataTHD.quickslot9SavData.Type) end);
			pcall(function()shortcutLoad9:SetData(savedataTHD.quickslot9SavData.Data) end);
			pcall(function()quickslot9:SetShortcut(shortcutLoad9) end);			
			loadSongsFromFile();
			pcall(function() AllowSongs:SetChecked(savedataTHD.AllowSongsFromMods) end);
			pcall(function() Notes:SetText(""..savedataTHD.NotesSave) end);
			pcall(function() label:SetBackColor( Turbine.UI.Color( savedataTHD.labelColourSave.R, savedataTHD.labelColourSave.G, savedataTHD.labelColourSave.B )) end); 
			pcall(function() Copywrite:SetBackColor( Turbine.UI.Color( savedataTHD.CopywriteColourSave.R, savedataTHD.CopywriteColourSave.G, savedataTHD.CopywriteColourSave.B )) end); 
			pcall(function() label1:SetBackColor( Turbine.UI.Color( savedataTHD.label1ColourSave.R, savedataTHD.label1ColourSave.G, savedataTHD.label1ColourSave.B )) end);
			pcall(function() label2:SetBackColor( Turbine.UI.Color( savedataTHD.label2ColourSave.R, savedataTHD.label2ColourSave.G, savedataTHD.label2ColourSave.B )) end);
			pcall(function() Notes:SetBackColor( Turbine.UI.Color( savedataTHD.NotesColourSave.R, savedataTHD.NotesColourSave.G, savedataTHD.NotesColourSave.B )) end);
			pcall(function() Save:SetBackColor( Turbine.UI.Color( savedataTHD.SaveColourSave.R, savedataTHD.SaveColourSave.G, savedataTHD.SaveColourSave.B )) end); 
			pcall(function() Load:SetBackColor( Turbine.UI.Color( savedataTHD.LoadColourSave.R, savedataTHD.LoadColourSave.G, savedataTHD.LoadColourSave.B )) end); 
			pcall(function() playIcon:SetBackColor( Turbine.UI.Color( savedataTHD.PlayIconColourSave.R, savedataTHD.PlayIconColourSave.G, savedataTHD.PlayIconColourSave.B )) end); 
			pcall(function() PlayStartIcon:SetBackColor( Turbine.UI.Color( savedataTHD.PlayStartIconColourSave.R, savedataTHD.PlayStartIconColourSave.G, savedataTHD.PlayStartIconColourSave.B )) end); 
			pcall(function() LyricalIcon:SetBackColor( Turbine.UI.Color( savedataTHD.LyricalIconColourSave.R, savedataTHD.LyricalIconColourSave.G, savedataTHD.LyricalIconColourSave.B )) end); 
			pcall(function() musicIcon:SetBackColor( Turbine.UI.Color( savedataTHD.musicIconColourSave.R, savedataTHD.musicIconColourSave.G, savedataTHD.musicIconColourSave.B )) end); 
			pcall(function() PlaySyncIcon:SetBackColor( Turbine.UI.Color( savedataTHD.PlaySyncIconColourSave.R, savedataTHD.PlaySyncIconColourSave.G, savedataTHD.PlaySyncIconColourSave.B )) end); 
			pcall(function() compactcontrol:SetBackColor( Turbine.UI.Color( savedataTHD.compactcontrolColourSave.R, savedataTHD.compactcontrolColourSave.G, savedataTHD.compactcontrolColourSave.B )) end); 	
			pcall(function() quickslotlyrical:SetBackColor(Turbine.UI.Color( savedataTHD.quickslotLyricalColourSave.R, savedataTHD.quickslotLyricalColourSave.G, savedataTHD.quickslotLyricalColourSave.B )) end);
			pcall(function() listbox:SetBackColor( Turbine.UI.Color( savedataTHD.listboxcolour.R, savedataTHD.listboxcolour.G, savedataTHD.listboxcolour.B ) ) end);			
			Turbine.Shell.WriteLine("KMABC: "..P22 .." 100%");
			isLoaded = true;
			--UdateScreen();
			Save.Click();
			mod_init.load_mod_init() -- Loads All Of The External Mods Into Kmabc
		end
	end

	Turbine.Plugin.Unload = function (sender, args)
		AntiExploit("save")
	end
	Turbine.Plugin.Load = function (sender,args)
		AntiExploit("load")
	end
kmapiLoader()
end
function kmapiLoader()
--%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
--Standard Imports - DO NOT PUT YOUR NEW KMAPI CALLS HERE
--%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
ColourLBox:ClearItems();
LanguageLBox:ClearItems();
ButtonsLBox:ClearItems();
PackageLBox:ClearItems();
blue = { 0.0, 0.05, 1.0, 0.0, 0.05, 1.0, 0.0, 0.05, 1.0 } -- These are the default KMABC colours
red = { 1.0, 0.0, 0.0, 0.55, 0.0, 0.0, 0.10, 0.0, 0.0 }
grey = { 0.7, 0.7, 0.7, 0.6, 0.6, 0.6, 1.0, 1.0, 1.0 }
violet = { 0.5, 0.5, 1.0, 0.3, 0.3, 0.6, 0.5, 0.5, 1.0 }
brown = { 1.0, 0.5,0.25, 0.65, 0.3, 0.15, 1.0, 0.5, 0.25 } -- Read the colour part of the kmapi documentation to understand what each value means
defaultbuttons =	{	
				button_lyrical_basic = "QueekusPlugins/kmabc/LyricalBasicIcon.tga";
				button_lyrical_hover = "QueekusPlugins/kmabc/LyricalHoverIcon.tga";
				button_compact_basic = "QueekusPlugins/kmabc/CompactBasicIcon.tga";
				button_compact_hover = "QueekusPlugins/kmabc/CompactHoverIcon.tga";
				button_music_basic = "QueekusPlugins/kmabc/MusicBasicIcon.tga";
				button_music_hover = "QueekusPlugins/kmabc/MusicHoverIcon.tga";
				button_play_basic = "QueekusPlugins/kmabc/PlayBasicIcon.tga";
				button_play_hover = "QueekusPlugins/kmabc/PlayHoverIcon.tga";
				button_playstart_basic = "QueekusPlugins/kmabc/PlaystartBasicIcon.tga";
				button_playstart_hover = "QueekusPlugins/kmabc/PlaystartHoverIcon.tga";
				button_playsync_basic = "QueekusPlugins/kmabc/PlaySyncBasicIcon.tga";
				button_playsync_hover = "QueekusPlugins/kmabc/PlaySyncHoverIcon.tga";
			}
kmapi.addToTable( "colour", ""..P38); -- Title Text
kmapi.addToTable( "colour", ""..P43, blue );
kmapi.addToTable( "colour", ""..P44, red);
kmapi.addToTable( "colour", ""..P45, grey);
kmapi.addToTable( "colour", ""..P46, violet);
kmapi.addToTable( "colour", ""..P47, brown);
kmapi.addToTable( "colour", ""..P48);
kmapi.addToTable( "language", ""..P39); -- Title Text
kmapi.addToTable( "language", "English", "1");
kmapi.addToTable( "language", "Fran\195\167ais", "2");
kmapi.addToTable( "language", "Deutsch", "3");
kmapi.addToTable( "buttons", ""..P52); -- Title Text
kmapi.addToTable( "buttons", ""..P54);
kmapi.addToTable( "package", ""..P53); -- Title Text
end
UdateScreen();