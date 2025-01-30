---@diagnostic disable: lowercase-global

---@param data NotificationParams Notification data
function notify(data)
    local msg, type, duration in data
    if type == 'inform' then type = 'info' end
    local title = type
    TriggerEvent('codem-notification:Create', msg, type, title, duration)
end

return notify
