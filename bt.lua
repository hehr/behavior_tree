local _M = {}

function _M.new( self , _root )
    return setmetatable({
        root = _root,
     },{__index = _M })
end

-- 
function _M.describe(self , ...)

    local args = { ... }

    for i = 1 , #args do 
        
        local arg = args[i]
        
        print( 'arg:' .. arg )

    end

    self:loop( self.root , ... )

end

--遍历路径
function _M:loop( node , ...)

    if node.selector then --选择节点
        
        for i , v in pairs(node.selector) do --继续遍历 
            if v.condition( self , ... ) then
                self:loop( v , ...) break
            end
        end

    elseif node.sequence then --顺序执行
        
        for i , v in pairs(node.sequence) do --继续遍历 
            self:loop(v,...) break
        end 

    elseif  node.parallel then  --  并行执行
        
        for i , v in pairs(node.parallel) do 
            self.loop( v , ... ) break
        end

    elseif node.action then --执行节点

        node.action(self,...) --执行动作 

    end

end

return _M