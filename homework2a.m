%% CS310 Spring 2019 Homework Assignment 2a
% * Name: Meng Tian
% * Team Lab: 302
% * Due Date: Friday, March 15 by 11:59 pm

clear
numRolls=0;%set the initial total number of rolls
scorePoints=0;%set the initial total score
maxRolls=0;%set the initial maximum rolls to reach pigsout
maxScore=0;%set the initial maximum score when reaching pigsout

for i=1:6000% total of 6000 rolls
[temprolls,tempscore] = rollUntilPigOut();%call rollUntilPigOut function to get the rolls and scores each time
 numRolls = numRolls + temprolls;%add up all the rolls
 scorePoints = scorePoints + tempscore;%add up all the scores
 
 if tempscore > maxScore %compare the scores with the maxScore
     maxScore = tempscore;%if the score is greater than maxScore, the maxScore will be substituted
 end
 
 if temprolls > maxRolls%compare the rolls with the maxRolls
     maxRolls = temprolls;%if the rolls is greater than maxRolls, the maxRolls will be substituted
 end
 
averPoints(i)=scorePoints/i;%calculate the average score everytime
averTurn(i)=numRolls/i;%calculate the average rolls everytime

end

figure
hold on
xx=1:6000;%set the x-axis from 1 to 6000,the increment is 1
yy=averTurn;%yy stands for the average number of rolls
zz=averPoints;%zz stands for the average score
plot(xx,yy,':');%plot the average number of rolls vs the number of trials completed
plot(xx,zz,'--');%plot the average score vs the number of trials completed
xlabel('the number of trials completed');
ylabel('the average number of rolls/the average score');
title('result of rollPigs');
hold off
%display the result of max score, max rolls, average score and average rolls in 6000 trial

disp(['maximum score until reaching pigout = ', num2str(maxScore)])
disp(['maximum rolls until reaching pigout',num2str(maxRolls)])
avPoints=scorePoints/6000;
disp(['average score = ',num2str(avPoints)])
avTurn=numRolls/6000;
disp(['average rolls = ',num2str(avTurn)])
