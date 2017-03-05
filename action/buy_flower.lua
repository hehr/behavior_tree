--action node 

return {
        condition = function(bt , topic , ...)
            return 'buy.flower' == topic
        end,
        action = function(bt , topic , ...)
            print('buy flower!!!')
            bt:describe('see.gf')
        end
}