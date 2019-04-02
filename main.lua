-----------------------------------------------------------------------------------------
--
-- Created by: Matsuru Hoshi
-- Created on: Apr 1, 2019
--
-- This file will play with if statements
-----------------------------------------------------------------------------------------


local Button = display.newRect( 160, 400, 60, 30)



local textBox = native.newTextField( 160, 140, 200, 25)
textBox.id = "TextBox"

local answerText = display.newText( "", 160, 300, "Times New Roman", 25)
answerText:setFillColor( 1, 1, 1)

local Check function Checker( event ) 

math.randomseed( 1234)

local GuessNumber = math.random( 1, 12)

print (GuessNumber)

local answer = tonumber(textBox.text)

	if (answer == GuessNumber) then
		answerText.text = "You guessed it!"
	else
		answerText.text = "Try again!"

	end

	return true
end

Button:addEventListener( "touch", Checker ) 
