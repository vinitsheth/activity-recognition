% IMU_first_col = IMU_fork(:,1);
% 
% 
% 
% IMU_fork_user_9_all = IMU_fork(IMU_first_col==9,:);
% IMU_last_col = IMU_fork_user_9_all(:,end);
% IMU_fork_user_9_eating = IMU_fork_user_9_all(IMU_last_col==1,:);
% IMU_fork_user_9_non_eating = IMU_fork_user_9_all(IMU_last_col==0,:);

pointsize = 5
scatter(1:length(IMU_fork_user_9_all) , IMU_fork_user_9_all(:,10) , pointsize , IMU_fork_user_9_all(:,end) )