local casino = nil
local Hyper = false
local QBCore = exports['qb-core']:GetCoreObject()

local casino_enter = {
	["x"] = 1090.0,
	["y"] = 207.06,
	["z"] = -49.0,
	["a"] = 0.97
} -- vector(41090.0, 207.06, -49.0, 0.97)


local casino_leave = {
	["x"] = 935.9,
	["y"] = 47.01,
	["z"] = 81.1, -- vector4(935.9, 47.01, 81.1, 166.25)
	["a"] = 166.25
}



RegisterNetEvent("githubkingentering:casino")
AddEventHandler("githubkingentering:casino",function()
    local ped = GetPlayerPed(-1)
    local pos = GetEntityCoords(ped)
    local tploc_enter = casino_leave
    local tploc_exit = casino_enter
    Wait(300)
    QBCore.Functions.Notify('Loading System...', 'error', 3500)
    Wait(3000)
    QBCore.Functions.Notify('!Welcome to Diamond Casino!', 'success', 3500)
      SetEntityCoords(ped, tploc_exit.x, tploc_exit.y, tploc_exit.z - 0.8)
      SetEntityHeading(ped, tploc_exit.a)
end)


RegisterNetEvent("githubkingentering:casino2")
AddEventHandler("githubkingentering:casino2",function()
    local ped = GetPlayerPed(-1)
    local pos = GetEntityCoords(ped)
    local tploc_enter = casino_leave
    Wait(300)
    QBCore.Functions.Notify('Loading System...', 'error', 3500)
    Wait(3000)
    QBCore.Functions.Notify('!You Left the Casino!', 'success', 3500)
      SetEntityCoords(ped, tploc_enter.x, tploc_enter.y, tploc_enter.z - 0.8)
      SetEntityHeading(ped, tploc_enter.a)
end)

-- Just an shit code writen in 1 minute lmaop

-- ahh basic
-- Using Basic QBCore

-- Here Test Command if you have an basic casino added not the DLCIplLoader, but you can change the coords any time around


RegisterCommand('imcool', function()
  TriggerEvent("githubkingentering:casino") -- enter the casino
end)

RegisterCommand('imcool2', function()
  TriggerEvent("githubkingentering:casino2") -- leave the casino
end)


-- But ye thanks for downloading my 1 minute script


-- From the love of Github/Hyper :)