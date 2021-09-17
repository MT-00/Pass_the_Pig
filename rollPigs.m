function score = rollPigs(displayRoll)
% rollPigs
%
% Rolls two 6-"sided" pig dice and returns the score.
% If displayRoll is true, then the roll is displayed in the Command 
% Window, e.g., 'razorback : snouter'.
%
% The chances of getting each side (and what each side "means") are 
% given in the first table in the Homework 2a write-up.
%
% The score is determined using the second table in the Homework 2a 
% write-up and described below that.
%
% Note that the provided version does NOT roll the pigs with the 
% frequencies given above; you will need to change the code below to  
% make that happen as well as to determine the score for the roll.
%
pig1 = randperm(1000, 1);
pig2 = randperm(1000, 1);
%two pigs are the same
if pig1>651 && pig2>651 %two pigs are sider(dot down)
    score=1;
elseif (pig1<=651 && pig1>349) && (pig2<=651 && pig2>349)%two pigs are sider(dot up)
    score=1;
elseif (pig1<=349 && pig1>125) && (pig2<=349 && pig2>125)%two pigs are razorback
    score=20;
elseif (pig1<=125 && pig1>37) && (pig2<=125 && pig2>37)%two pigs are trotter
    score=20;
elseif (pig1<=37 && pig1>7) && (pig2<=37 && pig2>7)%two pigs are snouter
    score=40;
elseif (pig1<=7) && (pig2<=7)%two pigs are leaning jowler
    score=60;

%only one pig is sider
elseif (pig1>349 && (pig2<=349 && pig2>125)) || (pig2>349 && (pig1<=349 && pig1>125))%one pig is sider and the other one is razorback
    score=5;
elseif (pig1>349 && (pig2<=125 && pig2>37)) || (pig2>349 && (pig1<=125 && pig1>37))%one pig is sider and the other one is trotter
    score=5;
elseif (pig1>349 && (pig2<=37 && pig2>7)) || (pig2>349 && (pig1<=37 && pig1>7))%one pig is sider and the other one is snouter
    score=10;
elseif (pig1>349 && (pig2<=7)) || (pig2>349 && (pig1<=7))%one pig is sider and the other one is leaning jowler
    score=15;
%both pigs are not sider and one pig is razorback
elseif ((pig1<=349 && pig1>125) && (pig2<=125 && pig2>37)) || ((pig2<=349 && pig2>125) && (pig1<=125 && pig1>37))%one pig is razorback and the other one is trotter
    score=10;
elseif ((pig1<=349 && pig1>125) && (pig2<=37 && pig2>7)) || ((pig2<=349 && pig2>125) && (pig1<=37 && pig1>7))%one pig is razorback and the other one is snouter
    score=15;
elseif ((pig1<=349 && pig1>125) && (pig2<=7)) || ((pig2<=349 && pig2>125) && (pig1<=7)) %one pig is razorback and the other one is leaning jowler
    score=20;    
%both pigs are not sider and one pig is trotter
elseif ((pig1<=125 && pig1>37) && (pig2<=37 && pig2>7)) || ((pig2<=125 && pig2>37) && (pig1<=37 && pig1>7))%one pig is trotter and the other one is snouter
    score=15;
elseif ((pig1<=125 && pig1>37) && (pig2<=7)) || ((pig2<=125 && pig2>37) && (pig1<=7))%one pig is trotter and the other one is leaning jowler
    score=20;    
%both pigs are not sider, razorbak or trotter and one pig is snouter
elseif ((pig1<=37 && pig1>7) && (pig2<=7)) || ((pig2<=37 && pig2>7) && (pig1<=7))%%one pig is snouter and the other one is leaning jowler
    score=25;


%pig out
elseif (pig1>651 && (pig2<=651 && pig2>349)) || (pig2>651 && (pig1<=651 && pig1>349))%one pig is dot down and the other one is dot up
    score=0;
end
    
%display the result
if displayRoll ~= 0%dispay the result of two pigs as well as the score if the displayRoll is true
 
    %one pig is sider(dot down)
    if pig1>651 && pig2>651%two pigs are sider(dot down)
        position1=pig2str(1);
        position2=pig2str(1);
        X = [position1,':',position2];
        disp(X);
    elseif (pig1>651 && pig2<=651 && pig2>349)||(pig2>651 && pig1<=651 && pig1>349)%one pig is sider(dot down) and the other one is sider(dot up)
        position1=pig2str(1);
        position2=pig2str(2);
        X = [position1,':',position2];
        disp(X);
    elseif (pig1>651 && pig2<=349 && pig2>125)||(pig2>651 && pig1<=349 && pig1>125)%one pig is sider(dot down) and the other one is razorback
        position1=pig2str(1);
        position2=pig2str(3);
        X = [position1,':',position2];
        disp(X);
    elseif (pig1>651 && pig2<=125 && pig2>37)||(pig2>651 && pig1<=125 && pig1>37)%one pig is sider(dot down) and the other one is trotter
        position1=pig2str(1);
        position2=pig2str(4);
        X = [position1,':',position2];
        disp(X);
    elseif (pig1>651 && pig2<=37 && pig2>7)||(pig2>651 && pig1<=37 && pig1>7)%one pig is sider(dot down) and the other one is snouter
        position1=pig2str(1);
        position2=pig2str(5);
        X = [position1,':',position2];
        disp(X);
    elseif (pig1>651 && pig2<=7)||(pig2>651 && pig1<=7)%one pig is sider(dot down) and the other one is leaning jowler
        position1=pig2str(1);
        position2=pig2str(6);
        X = [position1,':',position2];
        disp(X);
    % no pig is sider(dot down) and one pig is sider(dot up)   
    elseif (pig1<=651 && pig1>349 && pig2<=651 && pig2>349)%two pigs are sider(dot up)
        position1=pig2str(2);
        position2=pig2str(2);
        X = [position1,':',position2];
        disp(X);
    elseif (pig1<=651 && pig1>349 && pig2<=349 && pig2>125)||(pig2<=651 && pig2>349 && pig1<=349 && pig1>125)%one pig is sider(dot up) and the other one is razorback
        position1=pig2str(2);
        position2=pig2str(3);
        X = [position1,':',position2];
        disp(X);
    elseif (pig1<=651 && pig1>349 && pig2<=125 && pig2>37)||(pig2<=651 && pig2>349 && pig1<=125 && pig1>37)%one pig is sider(dot up) and the other one is trotter
        position1=pig2str(2);
        position2=pig2str(4);
        X = [position1,':',position2];
        disp(X);
    elseif (pig1<=651 && pig1>349 && pig2<=37 && pig2>7)||(pig2<=651 && pig2>349 && pig1<=37 && pig1>7)%one pig is sider(dot up) and the other one is snouter
        position1=pig2str(2);
        position2=pig2str(5);
        X = [position1,':',position2];
        disp(X);
    elseif (pig1<=651 && pig1>349 && pig2<=7)||(pig2<=651 && pig2>349 && pig1<=7)%one pig is sider(dot up) and the other one is leaning jowler
        position1=pig2str(2);
        position2=pig2str(6);
        X = [position1,':',position2];
        disp(X);
     %no pig is sider and one pig is razorback   
    elseif (pig1<=349 && pig1>125 && pig2<=349 && pig2>125)%two pigs are razorback
        position1=pig2str(3);
        position2=pig2str(3);
        X = [position1,':',position2];
        disp(X);
    elseif (pig1<=349 && pig1>125 && pig2<=125 && pig2>37)||(pig2<=349 && pig2>125 && pig1<=125 && pig1>37)%one pig is razorback and the other one is trotter
        position1=pig2str(3);
        position2=pig2str(4);
        X = [position1,':',position2];
        disp(X);
    elseif (pig1<=349 && pig1>125 && pig2<=37 && pig2>7)||(pig2<=349 && pig2>125 && pig1<=37 && pig1>7)%one pig is razorback and the other one is snouter
        position1=pig2str(3);
        position2=pig2str(5);
        X = [position1,':',position2];
        disp(X);
    elseif (pig1<=349 && pig1>125 && pig2<=7)||(pig2<=349 && pig2>125 && pig1<=7)%one pig is razorback and the other one is leaning jowler
        position1=pig2str(3);
        position2=pig2str(6);
        X = [position1,':',position2];
        disp(X);
    %no pig is sider or razorback and one pig is trotter    
    elseif (pig1<=125 && pig1>37 && pig2<=125 && pig2>37)%two pigs are trotters
        position1=pig2str(4);
        position2=pig2str(4);
        X = [position1,':',position2];
        disp(X);
    elseif (pig1<=125 && pig1>37 && pig2<=37 && pig2>7)||(pig2<=125 && pig2>37 && pig1<=37 && pig1>7)%one pig is trotter and the other one is snouter
        position1=pig2str(4);
        position2=pig2str(5);
        X = [position1,':',position2];
        disp(X);
    elseif (pig1<=125 && pig1>37 && pig2<=7)||(pig2<=125 && pig2>37 && pig1<=7)%one pig is trotter and the other one is leaning jowler
        position1=pig2str(4);
        position2=pig2str(6);
        X = [position1,':',position2];
        disp(X);
    %no pig is sider, razorback or trotter and one pig is snouter    
    elseif (pig1<=37 && pig1>7 && pig2<=37 && pig2>7)%two pigs are snouters
        position1=pig2str(5);
        position2=pig2str(5);
        X = [position1,':',position2];
        disp(X);
    elseif (pig1<=37 && pig1>7 && pig2<=7)||(pig2<=37 && pig2>7 && pig1<=7)%one pig is snouter and the other one is leaning jowler
        position1=pig2str(5);
        position2=pig2str(6);
        X = [position1,':',position2];
        disp(X);
     %no pig is sider, razorback, trotter and snouter and one pig is leaning jowler 
    elseif pig1<=7 && pig2<=7%two pigs are leaning jowlers
        position1=pig2str(6);
        position2=pig2str(6);
        X = [position1,':',position2];
        disp(X);
    end
end
end