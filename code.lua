--[[
webook settings

Webhooks = {
	['createCode'] = {
		link = 'discordURL',
		avatar = 'imageURL',
		username = 'webhookUsername'
	}
}
--]]

local numbers = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9'}

function randomTable(table)
    return table[math.random (#table)]
end

function getRandomKey()
    key = randomTable(numbers)..''..randomTable(numbers)..''..randomTable(numbers)..''..randomTable(numbers)..''..randomTable(numbers)..''..randomTable(numbers)
    return key
end

function sendCode(element)
    myCode = getRandomKey()
    sendMessage('createCode',getPlayerName(element)..' işte kodunuz: '..myCode)
end
addCommandHandler('kodver', sendCode)

function useCommand(element, command, code)
    if code == myCode then
        iprint('true')
        else
        iprint('false')
    end
end
addCommandHandler('kodkullan', useCommand)
