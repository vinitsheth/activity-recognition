sample_size = 500; %for application of mean,rms, etc
EMG_fork_eating_sample = 
IMU_fork_non_eating_sample = 


mean_orientation_x_eating = []; 
mean_orientation_x_non_eating = [];
plot_eating_x = [];
plot_non_eating_x = [];


% IMU_fork_eating = [];
% IMU_fork_non_eating = [];
% 
lastcolumn = IMU_fork(:,end);
IMU_fork_non_eating = IMU_fork(lastcolumn==0,:);
IMU_fork_eating = IMU_fork(lastcolumn==1,:);
% lc = []; %line color

% IMU_fork_eating = IMU_fork;

j=1;

for i = 1 : sample_size : length(IMU_fork_eating)
    if i+sample_size <= length(IMU_fork_eating)
             m = mean(IMU_fork_eating(i:i+sample_size,3));
    else
        m = mean(IMU_fork_eating(i:end,3));
    end
    mean_orientation_x_eating = [mean_orientation_x_eating ; m];
    plot_eating_x = [plot_eating_x; j];
%     lc = [lc ; IMU_fork_eating(i,end)];
    j = j+1;
  

end
for i = 1 : sample_size : length(IMU_fork_eating)
    if i+sample_size <= length(IMU_fork_eating)
             m = mean(IMU_fork_eating(i:i+sample_size,3));
    else
        m = mean(IMU_fork_eating(i:end,3));
    end
    mean_orientation_x_eating = [mean_orientation_x_eating ; m];
    plot_eating_x = [plot_eating_x; j];
%     lc = [lc ; IMU_fork_eating(i,end)];
    j = j+1;
  

end
% j=1;
% for i = 1 : sample_size : length(IMU_fork_non_eating)
%     if i+sample_size <= length(IMU_fork_non_eating)
%              m = mean(IMU_fork_non_eating(i:i+sample_size,3));
%     else
%         m = mean(IMU_fork_non_eating(i:end,3));
%     end
%     mean_orientation_x_non_eating = [mean_orientation_x_non_eating ; m];
%     plot_non_eating_x = [plot_non_eating_x; j];
%     
%     j = j+1;
% 
% end
% ps = 5;
figure;
plot(plot_eating_x,mean_orientation_x_eating)
% hold on
% plot(plot_non_eating_x,mean_orientation_x_non_eating)
% xlabel("samples")
% ylabel(" Mean")
% title("Orientation X")
%hold on
%plot(plot_x,gt)
figure;
plot(plot_eating_x,mean_orientation_x_eating)




