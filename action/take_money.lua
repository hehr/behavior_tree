--action node

return {

        condition = function(bt , topic , ... )
            return topic == 'go.home'
        end,
        action = function(bt , topic , ...)
            print('take money!!!')
            bt:describe('have.money')
        end,
}