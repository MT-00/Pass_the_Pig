function [rolls, score] = rollUntilPigOut()
% rollUntilPigOut
%
% Simulate repeatedly rolling the pigs (using the rollPigs function) 
% until a pig out is rolled. 
%
% The function returns a row vector containing the number of rolls 
% taken before the pig out is rolled (i.e., not including the roll 
% that resulted in a pig out) and the total points scored before the 
% pig out is rolled.
%

rolls = 0;%set the initial number of rolls
score = 0;%set the initial number of score
tempscore = rollPigs(0);%the first roll but not count

while tempscore ~= 0%if pigout happens,the game is over
    rolls=rolls+1;%the number of rolls counts every time
    score = score +tempscore;%the score adds up everytime
    tempscore = rollPigs(0);%set the next trial
end

end