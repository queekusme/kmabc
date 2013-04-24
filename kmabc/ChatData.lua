kmabcCommand = Turbine.ShellCommand();

Turbine.Shell.AddCommand("kmabc",kmabcCommand);

function kmabcCommand:GetShortHelp()	--/help in chat
	return "usage: "..L[16];
end

function kmabcCommand:Execute( command, arguments)

	if (arguments==""..L[26]) then
		window:SetVisible( true )

	elseif (arguments==""..L[27]) then
		window:SetVisible( false )

	elseif (arguments==""..L[28]) then
		window:SetVisible(not window:IsVisible());

	elseif (arguments==""..L[29]) then
		Notes:SetVisible(not Notes:IsVisible());
		sidebar:SetVisible(not sidebar:IsVisible());

		if (Notes:IsVisible() == true) then
			window:SetSize( 418, 443 );
			Copywrite:SetPosition( 50, 418 );	
			sidebar:SetParent( window );
			PlistName:SetParent( window );
			listbox:SetParent( window );

		elseif (Notes:IsVisible() == false) then
			window:SetSize( 418, 160 );
			Copywrite:SetPosition( 50, 135 );
			sidebar:SetParent();
			PlistName:SetParent(  );
			listbox:SetParent(  );

		end

	elseif (arguments==""..L[30]) then
		PlistItem2:SetText("");
		PlistItem3:SetText("");
		PlistItem4:SetText("");
		PlistItem5:SetText("");
		PlistItem6:SetText("");
		PlistItem7:SetText("");
		PlistItem8:SetText("");
		PlistItem9:SetText("");
		PlistItem10:SetText("");
		PlistItem11:SetText("");
		PlistItem12:SetText("");
		PlistItem13:SetText("");
		Turbine.Shell.WriteLine(""..L[25]);

	elseif (arguments=="") then
		Turbine.Shell.WriteLine("");
		Turbine.Shell.WriteLine("------------------------------------");
		Turbine.Shell.WriteLine(""..L[13] );
		Turbine.Shell.WriteLine("------------------------------------");
		Turbine.Shell.WriteLine(""..L[14] );
		Turbine.Shell.WriteLine("------------------------------------");
		Turbine.Shell.WriteLine(""..L[15] );
		Turbine.Shell.WriteLine(""..L[16] );
		Turbine.Shell.WriteLine("------------------------------------");
		Turbine.Shell.WriteLine(""..L[17] );
		Turbine.Shell.WriteLine("------------------------------------");
		Turbine.Shell.WriteLine("");
	end
end


