-- d41d8cd98f00b204e9800998ecf8427e
-- This hash is used for caching, delete to decompile the file again

CoD[0x1C6516B4D5F3B5D] = {} --[[ @ 0]]
CoD[0x1C6516B4D5F3B5D][0x5090166150B2F10] = function --[[22]] ( f22_arg0, f22_arg1, f22_arg2, f22_arg3, f22_arg4 )
	return math.ceil( f22_arg1 / Dvar[0x42D42EFC73D739A]:get() ), f22_arg0, 1, f22_arg4
end
 --[[ @ 0]]
CoD[0x1C6516B4D5F3B5D][0xFBCE37FE455FD06] = function --[[18]] ( f18_arg0, f18_arg1, f18_arg2, f18_arg3, f18_arg4 )
	local f18_local0, f18_local1 = f18_arg1:getLocalSize() --[[ @ 0]]
	f18_arg1.__playHealthBarLossPulse = function --[[19]] ( f19_arg0, f19_arg1, f19_arg2 )
		local f19_local0 = f18_arg0 --[[ @ 0]]
		if 0 < f19_local0[0x5BE054CB26B3829]( f19_local0 ) then
			f19_local0 = f18_arg0 --[[ @ 0]]
			if f19_local0[0x8CA8B3D57836F57]( f19_local0 ) then
				f19_local0 = f18_arg0[0x8CA8B3D57836F57]( f18_arg0 ) --[[ @ 0]]
				if 0 >= f19_local0[0x5BE054CB26B3829]( f19_local0 ) then
				
				else
					f19_local0 = f18_arg0:new( f18_arg0, 0, 0, 0, f18_arg0, 0, 0, 0, f18_arg0 ) --[[ @ 0]]
					f19_local0:registerEventHandler( "clip_over", function --[[21]] ( element, event )
						element:close() --[[ @ 0]]
					end ) --[[ @ 0]]
					local f19_local1 = f19_local0 --[[ @ 0]]
					local f19_local2 = f19_local0.setModel --[[ @ 0]]
					local f19_local3 = f18_arg0 --[[ @ 0]]
					f19_local2( f19_local1, f19_local3[0x40E824FE270E174]( f19_local3 ), f18_arg0 ) --[[ @ 0]]
					f19_local0:linkToElementModel( f19_local0, 0x7C4E92C28FE61FB, true, function --[[20]] ( model )
						if model:get() then
							f19_arg0:close() --[[ @ 0]]
						end
					end ) --[[ @ 0]]
					if f19_local0.PulseBar then
						f19_local0.PulseBar[0xB19C76660112A05]( f19_local0.PulseBar, 0, f19_arg0, 1, 0, 0 ) --[[ @ 0]]
						f19_local0.PulseBar[0xB19C76660112A05]( f19_local0.PulseBar, 1, f19_arg1, f19_arg2, 0, 1 ) --[[ @ 0]]
					end
					f19_local0:playClip( "DefaultClip" ) --[[ @ 0]]
					f18_arg0[0x7CF3B0A5CFFA31C]( f18_arg0, f19_local0 ) --[[ @ 0]]
					f18_arg0:sendInitializationEvents( f18_arg0, f19_local0 ) --[[ @ 0]]
				end
			end
		end
	end
	 --[[ @ 0]]
end
 --[[ @ 0]]
CoD[0x1C6516B4D5F3B5D][0xCA5EF4A20A0D921] = function --[[17]] ( f17_arg0 )
	if not f17_arg0.__previousHealthBarDamageFeedbackWidgets then
		return 
	end
	for f17_local3, f17_local4 in ipairs( f17_arg0.__previousHealthBarDamageFeedbackWidgets ) --[[ @ 0]] do
		f17_local4:close() --[[ @ 0]]
	end
	f17_arg0.__previousHealthBarDamageFeedbackWidgets = nil --[[ @ 0]]
end
 --[[ @ 0]]
CoD[0x1C6516B4D5F3B5D][0x426FA3C19B06BCE] = function --[[16]] ( f16_arg0, f16_arg1 )
	if not f16_arg0.__previousHealthBarDamageFeedbackWidgets then
		f16_arg0.__previousHealthBarDamageFeedbackWidgets = {} --[[ @ 0]]
	end
	table.insert( f16_arg0.__previousHealthBarDamageFeedbackWidgets, f16_arg1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD[0x1C6516B4D5F3B5D][0x680C0BE5729B4C7] = function --[[15]] ( f15_arg0, f15_arg1 )
	if not f15_arg0.__previousHealthBarDamageFeedbackWidgets then
		return 
	end
	local f15_local0 = nil --[[ @ 0]]
	for f15_local4, f15_local5 in ipairs( f15_arg0.__previousHealthBarDamageFeedbackWidgets ) --[[ @ 0]] do
		if f15_local5 == f15_arg1 then
			f15_local0 = f15_local4 --[[ @ 0]]
			break
		end
	end
	if f15_local0 then
		table.remove( f15_arg0.__previousHealthBarDamageFeedbackWidgets, f15_local0 ) --[[ @ 0]]
	end
end
 --[[ @ 0]]
CoD[0x1C6516B4D5F3B5D][0x79879107C60D40C] = function --[[7]] ( f7_arg0, f7_arg1, f7_arg2, f7_arg3, f7_arg4 )
	f7_arg0.anyChildUsesUpdateState = true --[[ @ 0]]
	f7_arg0.__healthBarDamageFeedbackVerticalScale = f7_arg4 --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( f7_arg0, "close", function --[[14]] ( element )
		CoD[0x1C6516B4D5F3B5D][0xCA5EF4A20A0D921]( element ) --[[ @ 0]]
	end ) --[[ @ 0]]
	f7_arg0.__playHealthBarDamageFeedback = function --[[8]] ( f8_arg0, f8_arg1, f8_arg2, f8_arg3, f8_arg4 )
		local f8_local0 --[[ @ 0]]
		if f8_arg0 then
			f8_local0 = f8_arg0 --[[ @ 0]]
		else
			f8_local0 = f8_arg0[0x8CA8B3D57836F57]( f8_arg0 ) --[[ @ 0]]
		end
		if f8_local0 and 0 < f8_local0[0x5BE054CB26B3829]( f8_local0 ) and f8_local0[0x8CA8B3D57836F57]( f8_local0 ) then
			local f8_local1 = f8_local0[0x8CA8B3D57836F57]( f8_local0 ) --[[ @ 0]]
			if 0 >= f8_local1[0x5BE054CB26B3829]( f8_local1 ) then
			
			else
				local f8_local1 = (1 - f8_arg0.__healthBarDamageFeedbackVerticalScale) / 2 --[[ @ 0]]
				local f8_local2 = f7_arg0:new( f7_arg0, f8_arg1, f8_arg2, 0, 0, f8_local1, 1 - f8_local1, 0, 0 ) --[[ @ 0]]
				f8_local2[0x1BA9B5F4F74766B]( f8_local2, 9999 ) --[[ @ 0]]
				f8_local2.isCritical = f8_arg3 --[[ @ 0]]
				f8_local2.isElemental = f8_arg4 --[[ @ 0]]
				local f8_local3 = {} --[[ @ 0]]
				if f8_arg4 ~= nil and f8_arg3 ~= nil then
					table.insert( f8_local3, {
						stateName = 0x1698BDF86FE688A,
						condition = function --[[13]] ( f13_arg0, f13_arg1, f13_arg2, f13_arg3 )
							local f13_local0 = f13_arg1.isElemental --[[ @ 0]]
							if f13_local0 then
								f13_local0 = f13_arg1.isCritical --[[ @ 0]]
							end
							return f13_local0
						end
					} ) --[[ @ 0]]
				end
				if f8_arg4 ~= nil then
					table.insert( f8_local3, {
						stateName = 0xADBBC277505F5EA,
						condition = function --[[12]] ( f12_arg0, f12_arg1, f12_arg2, f12_arg3 )
							return f12_arg1.isElemental
						end
					} ) --[[ @ 0]]
				end
				if f8_arg3 ~= nil then
					table.insert( f8_local3, {
						stateName = 0x87748CC2AD39108,
						condition = function --[[11]] ( f11_arg0, f11_arg1, f11_arg2, f11_arg3 )
							return f11_arg1.isCritical
						end
					} ) --[[ @ 0]]
				end
				if #f8_local3 ~= 0 then
					f8_local2:mergeStateConditions( f8_local3 ) --[[ @ 0]]
				end
				f8_local2:registerEventHandler( "clip_over", function --[[10]] ( element, event )
					if element then
						element:close() --[[ @ 0]]
					end
				end ) --[[ @ 0]]
				f8_local2:setModel( f8_local0[0x40E824FE270E174]( f8_local0 ), f7_arg0 ) --[[ @ 0]]
				f8_arg0[0x7CF3B0A5CFFA31C]( f8_arg0, f8_local2 ) --[[ @ 0]]
				f7_arg0:sendInitializationEvents( f7_arg0, f8_local2 ) --[[ @ 0]]
				LUI.OverrideFunction_CallOriginalSecond( f8_local2, "close", function --[[9]] ( element )
					local f9_local0 --[[ @ 0]]
					if element then
						f9_local0 = element --[[ @ 0]]
					else
						f9_local0 = element[0x8CA8B3D57836F57]( element ) --[[ @ 0]]
					end
					CoD[0x1C6516B4D5F3B5D][0x680C0BE5729B4C7]( f9_local0, element ) --[[ @ 0]]
				end ) --[[ @ 0]]
				CoD[0x1C6516B4D5F3B5D][0x426FA3C19B06BCE]( f8_arg0, f8_local2 ) --[[ @ 0]]
			end
		end
	end
	 --[[ @ 0]]
end
 --[[ @ 0]]
CoD[0x1C6516B4D5F3B5D][0x61C35ACDED2AFCA] = function --[[3]] ( f3_arg0, f3_arg1, f3_arg2, f3_arg3, f3_arg4, f3_arg5, f3_arg6, f3_arg7, f3_arg8, f3_arg9, f3_arg10, f3_arg11 )
	CoD[0x1C6516B4D5F3B5D][0x79879107C60D40C]( f3_arg0, f3_arg1, f3_arg2, f3_arg3, f3_arg4 ) --[[ @ 0]]
	f3_arg0.__ignoreNextHealthModelUpdate = false --[[ @ 0]]
	local f3_local0 --[[ @ 0]]
	if f3_arg5 then
		f3_local0 = f3_arg5 --[[ @ 0]]
	else
		f3_local0 = f3_arg5:get() --[[ @ 0]]
	end
	f3_arg0.__oldFrac = f3_local0 --[[ @ 0]]
	if f3_arg10 then
		if f3_arg11 then
			f3_local0 = f3_arg11 --[[ @ 0]]
		else
			f3_local0 = f3_arg11:get() --[[ @ 0]]
		end
		f3_arg0.__oldEntNum = f3_local0 --[[ @ 0]]
		f3_arg0.__entNumModelSubscription = f3_arg0[0x6A30303CE9867BB]( f3_arg0, f3_arg11, function --[[6]] ( f6_arg0, f6_arg1 )
			local f6_local0 --[[ @ 0]]
			if f6_arg0 then
				f6_local0 = f6_arg0 --[[ @ 0]]
			else
				f6_local0 = f6_arg0:get() --[[ @ 0]]
			end
			if f6_local0 ~= f6_arg1.__oldEntNum then
				f6_arg1.__ignoreNextHealthModelUpdate = true --[[ @ 0]]
			end
			f6_arg1.__oldEntNum = f6_local0 --[[ @ 0]]
			CoD[0x1C6516B4D5F3B5D][0xCA5EF4A20A0D921]( f6_arg1 ) --[[ @ 0]]
		end, false ) --[[ @ 0]]
	end
	f3_arg0.__fracModelSubscription = f3_arg0[0x6A30303CE9867BB]( f3_arg0, f3_arg5, function --[[5]] ( f5_arg0, f5_arg1 )
		local f5_local0 --[[ @ 0]]
		if f5_arg0 then
			f5_local0 = f5_arg0 --[[ @ 0]]
		else
			f5_local0 = f5_arg0:get() --[[ @ 0]]
		end
		if f5_arg1.__ignoreNextHealthModelUpdate then
			f5_arg1.__ignoreNextHealthModelUpdate = false --[[ @ 0]]
		elseif f5_arg1.__playHealthBarDamageFeedback then
			if f5_local0 ~= f5_arg1.__oldFrac then
				CoD[0x1C6516B4D5F3B5D][0xCA5EF4A20A0D921]( f5_arg1 ) --[[ @ 0]]
			end
			if f5_local0 < f5_arg1.__oldFrac then
				local f5_local1 = f5_arg1.__playHealthBarDamageFeedback --[[ @ 0]]
				local f5_local2 = f5_arg1 --[[ @ 0]]
				local f5_local3 = f5_local0 --[[ @ 0]]
				local f5_local4 = f5_arg1.__oldFrac --[[ @ 0]]
				local f5_local5 = f3_arg0 --[[ @ 0]]
				if f5_local5 then
					f5_local5 = f3_arg0 --[[ @ 0]]
					if f5_local5 then
						f5_local5 = f3_arg0:get() --[[ @ 0]]
					end
				end
				local f5_local6 = f3_arg0 --[[ @ 0]]
				if f5_local6 then
					f5_local6 = f3_arg0 --[[ @ 0]]
					if f5_local6 then
						f5_local6 = f3_arg0:get() --[[ @ 0]]
					end
				end
				f5_local1( f5_local2, f5_local3, f5_local4, f5_local5, f5_local6 ) --[[ @ 0]]
			end
		end
		f5_arg1.__oldFrac = f5_local0 --[[ @ 0]]
	end, false ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( f3_arg0, "close", function --[[4]] ( element )
		if element.__entNumModelSubscription then
			element[0x520F9815BE4082C]( element, element.__entNumModelSubscription ) --[[ @ 0]]
			element.__entNumModelSubscription = nil --[[ @ 0]]
		end
		if element.__fracModelSubscription then
			element[0x520F9815BE4082C]( element, element.__fracModelSubscription ) --[[ @ 0]]
			element.__fracModelSubscription = nil --[[ @ 0]]
		end
	end ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD[0x1C6516B4D5F3B5D][0xB844266E68177DF] = function --[[2]] ( f2_arg0, f2_arg1, f2_arg2, f2_arg3, f2_arg4 )
	if f2_arg1.__overrideHealthBarColorSet then
		local f2_local0 = ColorSet[CoD[0xD1B915B69530950][0xEF506E9EB2F3D63]( f2_arg0, f2_arg1.__overrideHealthBarColorSet )] --[[ @ 0]]
		return f2_local0.r, f2_local0.g, f2_local0.b
	else
		return f2_arg2, f2_arg3, f2_arg4
	end
end
 --[[ @ 0]]
CoD[0x1C6516B4D5F3B5D][0xF0EF5A1826AFB73] = function --[[1]] ( f1_arg0, f1_arg1 )
	local f1_local0 = f1_arg0[0x40E824FE270E174]( f1_arg0 ) --[[ @ 0]]
	local f1_local1 = #CoD[0x796EA0461C1A2D4][0xFDC00D5CD8F4286]( f1_arg1, false, false ) --[[ @ 0]]
	for f1_local2 = 0 --[[ @ 0]], f1_local1, 1 do
		local f1_local5 = CoD[0x20D1815E1D95F30][0xE592494B1101617]( f1_arg1, 0x5CA288D0AF45E6F ) --[[ @ 0]]
		f1_local5 = f1_local5[0x446115CDA0D7F13] --[[ @ 0]]
		if f1_local5 and f1_local5[f1_local2] and f1_local5[f1_local2].clientNum:get() == f1_local0.clientNum:get() then
			f1_local0.revivePrompt:set( f1_local5[f1_local2] ) --[[ @ 0]]
			return 
		end
	end
end
 --[[ @ 0]]
