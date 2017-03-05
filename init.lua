local bt = require("bt")
local flower = require("selector.flower")
local valentine =  require("selector.valentine")
local buy_flower = require("action.buy_flower")
local check_money = require("action.check_money")
local play_ball = require("action.play_ball")
local see_gf = require("action.see_gf")
local take_money = require("action.take_money")


local root = {
    selector = {
        {
            condition = valentine.condition,
            selector = valentine.selector,
        },
        {
            condition = flower.condition,
            selector = flower.selector,
        },
        check_money,
        buy_flower,
        take_money,
        see_gf,
        play_ball,
    }
} 

local bt = bt:new(root)
bt:describe('today.valentine')