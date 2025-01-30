---@diagnostic disable: lowercase-global

local open = false
local textui = {}

---@param text string
function textui.showTextUI(text)
    exports['codem-textui' ]:OpenTextUI(text, 'E', 'thema-5')
    open = true
end

function textui.hideTextUI()
    open = false
    exports['codem-textui' ]:CloseTextUI()
end

---@return boolean
function textui.isTextUIOpen()
    return open
end

return textui
