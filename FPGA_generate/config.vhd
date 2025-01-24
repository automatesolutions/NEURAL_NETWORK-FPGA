--This file is automatically generated by generate_VHDL_file.m, 18-Jan-2025

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

package CONFIG is
	type INPUT is array (natural range <>) of integer range 0 to 255;
	signal connection : INPUT (12 downto 0);
	--connection 2 downto 0 is the input of the neural network
	--connection 12 downto 11 is the output of the neural network

	-- int Arrays with Constants
	type constIntArray is ARRAY (natural range <>) of integer;
	constant networkStructure : constIntArray (2 downto 0) := (2,8,3);
	constant connnectionRange : constIntArray (3 downto 0) := (13,11,3,0);
	constant weights : constIntArray (49 downto 0) := (2259,80,-87,-138,-150,-24,-13,-15,111,-2340,-93,28,110,92,4,-10,-4,-147,11475,-252,77,205,6433,202,-14,-140,-2401,301,-66,-261,-1460,361,-37,-208,7274,65,16,-5,16865,24,24,19,8067,39,27,5,14300,-354,82,287);

	--mapping the 2D network to the 1D Array with the weights
	type KOORDINATES is array (0 to 8, 1 to 2) of natural;
	constant positions: KOORDINATES:=( 
				(0,32),
				(4,41),
				(8,50),
				(12,0),
				(16,0),
				(20,0),
				(24,0),
				(28,0),
				(32,0));

	-- Ranges for the sum inside a neuron and the multiplication of an input signal with a weight
	constant maxSumRange: integer:=131071;
	constant minSumRange: integer:=-131072;
	constant maxMultRange: integer:=131071;
	constant minMultRange: integer:=-131072;

	-- -- Array for all multiplication results inside a neuron
	type multResults is ARRAY (natural range <>) of integer range minMultRange to maxMultRange;
end CONFIG;
