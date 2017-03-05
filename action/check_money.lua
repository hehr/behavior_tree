--假定口袋没有钱，table.flower之前一定要回去拿钱
--action node 

return {
    condition = function(bt , topic , ...) 
        return 'take.flower' == topic
    end,
    action = function(bt,topic , ...)
        print('check money!!!')
        bt:describe('no.money')
    end
}