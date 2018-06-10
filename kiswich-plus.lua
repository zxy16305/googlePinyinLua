--
-- Created by IntelliJ IDEA.
-- User: Administrator
-- Date: 2018/5/7
-- Time: 21:40
-- To change this template use File | Settings | File Templates.
--

function ParseColor(input)
    local colorNumber

    if(type(input) == string)then
        if #input == 3 then
            local color = string.sub(input, 3, 3) .. string.sub(input, 3, 3) .. string.sub(input, 2, 2) .. string.sub(input, 2, 2) .. string.sub(input, 1, 1) .. string.sub(input, 1, 1)
            colorNumber = tonumber(color, 16)
        end

        if #input == 6 then
            colorNumber = tonumber(input, 16)
        end

        if #input == 6 or #input == 3 then
            local blue = math.fmod(colorNumber, 256)
            local green = (colorNumber / 256) % 256
            local red = colorNumber / (256 * 256)
            return string.format("rgb(%d, %d, %d)", red, green, blue)
        end

    end

end

--------------------------------------------------
ime.register_command("co", "ParseColor", "输入颜色")


