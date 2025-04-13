-- Bank Server K-inc.

-- Load data file
local data = fs.open("bank_data", "r")
local bankData = {}

if data then
    local dataString = data.readAll()
    data.close()
    bankData = dataString
else
    error("Failed to load bank data file.")
end

-- Start the server