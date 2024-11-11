function avgScore = simpleBlackjack(limit, trials)  
% 
% This function simulates playing many hands of 
% Simple Blackjack where the player continually 
% hits up to a given limit. Final score for each  
% hand is computed, and the average score over all 
% hands is returned. 
% 
% INPUT limit – The player always hits if their hand value is less than
% limit
%
% INPUT trials – The number of hands to simulate 
% 
% OUTPUT avgScore – The average final score of all hands 

cards = [ 2 3 4 5 6 7 8 9 10 10 10 10];
total_over_all_hands = 0;

for i = 1:trials
amount = onehand (limit);
total_over_all_hands = total_over_all_hands + amount;
end
avgScore = total_over_all_hands / trials;
end

function handTotal = onehand (limit)
cards = [ 2 3 4 5 6 7 8 9 10 10 10 10];
handTotal = 0;
while handTotal < limit
    x = randi(12);
    number = cards (x);
    handTotal = handTotal + number;
end
end

