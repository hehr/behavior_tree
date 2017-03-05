-- 假定女友一直都在，see.gf 之后就能送花
-- action node

return {
    condition = function(bt , topic , ...)
        return 'see.gf' == topic
    end,
    action = function(bt , topic , ...)
        print('send flower!!!')
    end
}