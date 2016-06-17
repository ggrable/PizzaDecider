function pizza_decider
khoa_score = 0;
hollis_score = 0;
graham_score = 0;
current_round = 0;
scoreboard = zeros(3);

while(1)
if current_round < 6 
        khoa_score = khoa_score + randi([0 3],1)
        hollis_score = hollis_score + randi([0 3],1)
        graham_score = graham_score + randi([0 3],1)
        pause(1);
        current_round = current_round + 1;
        
        figure(1)
        scoreboard(1) = khoa_score;
        scoreboard(2) = hollis_score;
        scoreboard(3) = graham_score;
        bar([1,2,3],scoreboard);
        set(gca,'XTickLabel',{'Khoa','Hollis','Graham'})
end
    
if current_round < 11 && current_round > 5
        khoa_score = khoa_score + randi([0 5],1)
        hollis_score = hollis_score + randi([0 5],1)
        graham_score = graham_score + randi([0 5],1)
        pause(1);
        current_round = current_round + 1;
        
        scoreboard(1) = khoa_score;
        scoreboard(2) = hollis_score;
        scoreboard(3) = graham_score;
        bar([1,2,3],scoreboard)
        set(gca,'XTickLabel',{'Khoa','Hollis','Graham'})
end
    
if current_round < 21 && current_round > 10
        khoa_score = khoa_score + randi([0 10],1)
        hollis_score = hollis_score + randi([0 10],1)
        graham_score = graham_score + randi([0 10],1)
        pause(1);
        current_round = current_round + 1;
        
        scoreboard(1) = khoa_score;
        scoreboard(2) = hollis_score;
        scoreboard(3) = graham_score;
        bar([1,2,3],scoreboard)
        set(gca,'XTickLabel',{'Khoa','Hollis','Graham'})
end

if current_round == 21
    break
end
end
end