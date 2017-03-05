--选择节点
local topics = {
    ['today.valentine'] = true,
    ['today.not.valentine'] = true,
}
return { 

    condition = function( bt , topic , ...) 
        return topics[topic]
    end,

    selector = {
        {
        condition = function( bt , topic , ... )
            return topic  == 'today.valentine' --今天是情人节
        end,
        action = function( bt , topic , ... )
            print('valentine node topic take.flower excute')
            bt:describe('take.flower')--去带一束花
        end
        },{
        condition = function(bt , topic , ... )
            return topic == 'today.not.valentine'
        end,
        action = function(bt , topic , ...)
            print('valentine node topic play.ball excute')
            bt:describe('play.ball') -- play ball
        end
        }
    }
}