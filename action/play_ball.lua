--action node 

return {
    condition = function(bt,topic , ...) 
        return topic == 'play.ball'
    end,
    action = function(bt,topic , ...) 
        --模拟实际动作之行
        print('let`t play ball!!!')
    end,
}