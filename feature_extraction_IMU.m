% Phase 2 and 3
% Code for reference

% Code used to generate samples of the large dataset of IMU

number_of_samples = 200;
sample_eating = floor(length(IMU_fork_eating)/number_of_samples);
sample_non_eating = floor(length(IMU_fork_non_eating)/number_of_samples);


IMU_fork_sampled_eating_200 = [];
IMU_fork_sampled_non_eating_200 = [];

for i = 1 : sample_eating : length(IMU_fork_eating)
    if i+sample_eating <= length(IMU_fork_eating)
             m = mean(IMU_fork_eating(i:i+sample_eating,:));
    else
        m = mean(IMU_fork_eating(i:end,:));
    end
   IMU_fork_sampled_eating_200 = [IMU_fork_sampled_eating_200 ; m];

  
end


for i = 1 : sample_non_eating : length(IMU_fork_non_eating)
    if i+sample_non_eating <= length(IMU_fork_non_eating)
             m = mean(IMU_fork_non_eating(i:i+sample_non_eating,:));
    else
        m = mean(IMU_fork_non_eating(i:end,:));
    end
   IMU_fork_sampled_non_eating_200 = [IMU_fork_sampled_non_eating_200 ; m];
  
end

