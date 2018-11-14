local kuku = {}

-- 九九表を作成
function kuku.createTable(min, max)
    local t = {}
    for i = 1, max - min + 1 do
        t[i] = {}
        for j = 1, max do
           t[i][j] = (min + i - 1) * j
        end
    end
    return t
end

-- 九九表をCSV形式に変換
function kuku.ary2csv(ary)
    local result = ''
    for i, v in ipairs(ary) do
        for j, w in ipairs(ary[i]) do
            result = result .. w
            -- コンマを挿入
            if j ~= #ary[i] then
                result = result .. ','
            end
        end
        -- 改行を挿入
        result = result .. '\n'
    end
    return result
end

return kuku
