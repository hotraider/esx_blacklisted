local raider = {
{car = "cargoplane"},
{car = "cerberus"},
{car = "cerberus2"},
{car = "cerberus3"},
{car = "hauler2"},
{car = "phantom2"},
{car = "terbyte"},
{car = "issi4"},
{car = "issi5"},
{car = "issi6"},
{car = "akula"},
{car = "annihilator"},
{car = "buzzard"},
{car = "hunter"},
{car = "savage"},
{car = "apc"},
{car = "barrage"},
{car = "chernobog"},
{car = "halftVCACk"},
{car = "khanjali"},
{car = "minitank"},
{car = "rhino"}, 
{car = "scarab"},
{car = "dump"},
{car = "scarab2"},
{car = "scarab3"},
{car = "thruster"},
{car = "trailersmall2"},
{car = "oppressor"},
{car = "oppressor2"},
{car = "dominator4"},
{car = "dominator5"},
{car = "dominator6"},
{car = "dukes2"},
{car = "impaler2"},
{car = "impaler3"},
{car = "impaler4"},
{car = "imperator"},
{car = "imperator2"},
{car = "imperator3"},
{car = "bruiser"},
{car = "bruiser2"},
{car = "bruiser3"},
{car = "brutus"},
{car = "brutus2"},
{car = "brutus3"},
{car = "caVCACara"},
{car = "dune4"},
{car = "dune5"},
{car = "insurgent"},
{car = "insurgent3"},
{car = "menacer"},
{car = "nightshark"},
{car = "technical"},
{car = "technical2"},
{car = "technical3"},
{car = "zhaba"},
{car = "avenger"},
{car = "avenger2"},
{car = "besra"},
{car = "jet"},
{car = "hydra"},
{car = "strikeforce"},
{car = "titan"},
{car = "volatol"},
{car = "limo2"},
{car = "zr380"},
{car = "zr3802"},
{car = "zr3803"},
{car = "deluxo"},
{car = "vigilante"},
{car = "boxville5"},
{car = "kuruma2"},
{car = "scramjet"},
{car = "bati"}
}

RegisterNetEvent('esx:spawnVehicle')
AddEventHandler('esx:spawnVehicle', function(vehicleName, source, author, message)
	local model = (type(vehicleName) == 'number' and vehicleName or GetHashKey(vehicleName))

	if IsModelInCdimage(model) then
		local playerPed = PlayerPedId()
		local playerCoords, playerHeading = GetEntityCoords(playerPed), GetEntityHeading(playerPed)
			TaskWarpPedIntoVehicle(playerPed, vehicle, -1)
      for i, objName in pairs(raider) do
      if model == GetHashKey(objName.car) then
      TriggerEvent("esx:deleteVehicle",radius) -- local radius = 5 ??rnek:(/dv 5) i??levi g??r??r isterseniz tan??mlars??n??z fakat bana g??re b??yle ideal
      -- bu bo?? k??sma log tan??lmayabilir veya yasakl?? ara?? c??kart??rsa diye server taraf??na dropPlayer tan??mlamas?? yapabilirsiniz.  
      else
      -- Blacklist olarak al??nmam???? ara?? c??kart??rsa diye herhangi bir i??levi yok.
    end
    end
	else
		TriggerEvent('chat:addMessage', {args = {'^1SYSTEM', 'Ge??ersiz Ara?? Modeli'}})
	end
end)
