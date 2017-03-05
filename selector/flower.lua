--selector node

local topics = {
    ['have.money'] = true,
    ['no.money'] = true
}

return {
    condition = function(bt , topic , ...)
        return topics[topic]
    end,
    selector = {
        {
        condition  = function(bt,topic , ...)
            return topic == 'have.money'
        end,
        action = function(bt,topic,... )
            print('flower node topic have.money excute')
            bt:describe('buy.flower')
        end
    },{
        condition = function(bt,topic ,...)
            return topic  == 'no.money'
        end,
        action = function(bt , topic , ...)
            print('flower node topic no.money excute')
            bt:describe('go.home')
        end
        }
    }
}