users = [9  10 11 12 13 14 16 17 18 19 21 22 23 24 25 26 27 28 29 30 31 32 33 34 36 37 38 39 40 41];

for i = 1:length(users)
user = users(i);
firstColumn = IMU_fork_eating(:,1);
IMU_fork_eating_user = IMU_fork_eating(firstColumn==user, :);
number_of_samples = length(IMU_fork_eating_user);

firstColumn = EMG_fork_eating(:,1);
EMG_fork_eating_user = EMG_fork_eating(firstColumn==user, :);
EMG_fork_eating_user_sampled = [];

firstColumn = EMG_fork_non_eating(:,1);
EMG_fork_non_eating_user = EMG_fork_non_eating(firstColumn==user, :);
EMG_fork_non_eating_user_sampled = [];


firstColumn = IMU_fork_non_eating(:,1);
IMU_fork_non_eating_user = IMU_fork_non_eating(firstColumn==user, :);
IMU_fork_non_eating_user_sampled = [];


sample_EMG_eating = floor(length(EMG_fork_eating_user)/number_of_samples);
sample_EMG_non_eating = floor(length(EMG_fork_non_eating_user)/number_of_samples);
sample_IMU_non_eating = floor(length(IMU_fork_non_eating_user)/number_of_samples);

for i = 1 : sample_EMG_eating: length(EMG_fork_eating_user)
    if i+sample_EMG_eating <= length(EMG_fork_eating_user)
             m = mean(EMG_fork_eating_user(i:i+sample_EMG_eating,:),1);
    else
        m = mean(EMG_fork_eating_user(i:end,:),1);
    end
   EMG_fork_eating_user_sampled = [EMG_fork_eating_user_sampled ; m];

  
end

for i = 1 : sample_EMG_non_eating: length(EMG_fork_non_eating_user)
    if i+sample_EMG_non_eating <= length(EMG_fork_non_eating_user)
             m = mean(EMG_fork_non_eating_user(i:i+sample_EMG_non_eating,:),1);
    else
        m = mean(EMG_fork_non_eating_user(i:end,:),1);
    end
   EMG_fork_non_eating_user_sampled = [EMG_fork_non_eating_user_sampled ; m];

  
end

for i = 1 : sample_IMU_non_eating: length(IMU_fork_non_eating_user)
    if i+sample_IMU_non_eating <= length(IMU_fork_non_eating_user)
             m = mean(IMU_fork_non_eating_user(i:i+sample_IMU_non_eating,:),1);
    else
        m = mean(IMU_fork_non_eating_user(i:end,:),1);
    end
   IMU_fork_non_eating_user_sampled = [IMU_fork_non_eating_user_sampled ; m];

  
end

EMG_fork_eating_user_sampled = EMG_fork_eating_user_sampled(1:number_of_samples,:);
EMG_fork_non_eating_user_sampled = EMG_fork_non_eating_user_sampled(1:number_of_samples,:);
IMU_fork_non_eating_user_sampled = IMU_fork_non_eating_user_sampled(1:number_of_samples,:);

eating = [EMG_fork_eating_user_sampled(:,3:10) IMU_fork_eating_user(:,3:12)];
not_eating = [EMG_fork_non_eating_user_sampled(:,3:10) IMU_fork_non_eating_user_sampled(:,3:12) ];
 
save(['processed-data/Assign2/' num2str(user) '_eating'  '.mat'],'eating');
save(['processed-data/Assign2/' num2str(user) '_not_eating'  '.mat'],'not_eating');
  


% save(['processed-data/Assign2/' num2str(user) '_EMG_fork_eating'  '.mat'],'EMG_fork_eating_user_sampled');
% save(['processed-data/Assign2/' num2str(user) '_EMG_fork_non_eating'  '.mat'],'EMG_fork_non_eating_user_sampled');
% save(['processed-data/Assign2/' num2str(user) '_IMU_fork_eating'  '.mat'],'IMU_fork_eating_user');
% save(['processed-data/Assign2/' num2str(user) '_IMU_fork_non_eating'  '.mat'],'IMU_fork_non_eating_user_sampled');



end
