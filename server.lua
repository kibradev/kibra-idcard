ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

local kartfiyat = 50

RegisterServerEvent("kibra-idcard:KimlikVer")
AddEventHandler("kibra-idcard:KimlikVer", function(para)
local src = source 
local xPlayer = ESX.GetPlayerFromId(src)
local isim1 = MySQL.Sync.fetchAll("SELECT * FROM users WHERE identifier = @identifier", { ['@identifier'] = xPlayer.identifier })
info = {
    adsoyad = isim1[1].firstname.." "..isim1[1].lastname,
    cinsiyet = isim1[1].sex,
    dogumtarih = isim1[1].dateofbirth
} 
if xPlayer.getQuantity('kimlik') >= 1 then 
    TriggerClientEvent('okokNotify:Alert', src, "Kimliğiniz Zaten Var!", "Zaten bir kimliğiniz var! Kaybettiğinizde buraya müracaat ediniz.", 5000, 'error')
else 
    if xPlayer.getQuantity('cash') < kartfiyat then
        TriggerClientEvent('okokNotify:Alert', src, "Yetersiz Para!", "Kimlik çıkaracak paranız yok!", 5000, 'error')
    else 
        xPlayer.removeMoney(kartfiyat)
        xPlayer.addInventoryItem("kimlik", 1, false, info) 
        TriggerClientEvent('okokNotify:Alert', src, "Kimliğiniz Çıkarıldı!", "Kimliğiniz hazırlandı, ve size teslim edildi! Kaybetmemeye dikkat edin :)", 5000, 'success')
        TriggerClientEvent('okokNotify:Alert', src, "Para Ödediniz", "Kimlik için 50 $ ödediniz.", 5000, 'success')
    end 
end
end)




