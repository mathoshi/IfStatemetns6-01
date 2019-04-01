-----------------------------------------------------------------------------------------
--
-- Created by: Matsuru Hoshi
-- Created on: Apr 1, 2019
--
-- This file will play with if statements
-----------------------------------------------------------------------------------------



local textBox = native.newTextField( 160, 140, 200, 25)
textBox.id = "TextBox"

local answerText = display.newText( "", 160, 300, "Times New Roman", 25)
answerText:setFillColor( 1, 1, 1)

local Button = display.newRect( 160, 400, 60, 30)


math.randomseed( os.time())

local GuessNumber = math.random( 1, 2)

answer = tonumber(answerText.text)

local Check function Checker( event ) 

	if (answer == GuessNumber) then
		answerText.text = "You guessed it!"
	else
		answerText.text = "Try again!"

	end

	return true
end

Button:addEventListener( "touch", Checker ) 