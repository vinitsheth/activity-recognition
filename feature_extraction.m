% sample_size = 500;
% feature=4;
% mean_orientation_x_eating = [];
% mean_orientation_x_non_eating = [];
% plot_eating_x = [];
% plot_non_eating_x = [];
% 
% 
% % IMU_fork_eating = [];
% % IMU_fork_non_eating = [];
% % 
% % lastcolumn = IMU_fork(:,end);
% % IMU_fork_non_eating = IMU_fork(lastcolumn==0,:);
% % IMU_fork_eating = IMU_fork(lastcolumn==1,:)
%  lc = [];
% 
% IMU_fork_eating = IMU_fork;
% 
% j=1;
% 
% for i = 1 : sample_size : length(IMU_fork_eating)
%     if i+sample_size <= length(IMU_fork_eating)
%              m = mean(IMU_fork_eating(i:i+sample_size,feature));
%     else
%         m = mean(IMU_fork_eating(i:end,feature));
%     end
%     mean_orientation_x_eating = [mean_orientation_x_eating ; m];
%     plot_eating_x = [plot_eating_x; j];
%     lc = [lc ; IMU_fork_eating(i,end)];
%     j = j+1;
%   
% 
% end
% j=1;
% for i = 1 : sample_size : length(IMU_fork_non_eating)
%     if i+sample_size <= length(IMU_fork_non_eating)
%              m = mean(IMU_fork_non_eating(i:i+sample_size,feature));
%     else
%         m = mean(IMU_fork_non_eating(i:end,feature));
%     end
%     mean_orientation_x_non_eating = [mean_orientation_x_non_eating ; m];
%     plot_non_eating_x = [plot_non_eating_x; j];
%     
%     j = j+1;
% 
% end
% % ps = 5;
% % scatter(plot_eating_x,mean_orientation_x_eating, ps, lc)
% % hold on
% plot(plot_non_eating_x,mean_orientation_x_non_eating)
% xlabel("samples")
% ylabel(" Mean")
% title("Orientation X")
% hold on
% plot(plot_eating_x,mean_orientation_x_eating)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%5

number_of_samples = 200;
sample_eating = floor(length(IMU_fork_eating)/number_of_samples);
sample_non_eating = floor(length(IMU_fork_non_eating)/number_of_samples);


IMU_fork_sampled_eating = [];
IMU_fork_sampled_non_eating = [];

for i = 1 : sample_eating : length(IMU_fork_eating)
    if i+sample_eating <= length(IMU_fork_eating)
             m = mean(abs(fft(IMU_fork_eating(i:i+sample_eating,:))));
    else
        m = mean(abs(fft(IMU_fork_eating(i:end,:))));
    end
   IMU_fork_sampled_eating = [IMU_fork_sampled_eating ; m];

  
end


for i = 1 : sample_non_eating : length(IMU_fork_non_eating)
    if i+sample_non_eating <= length(IMU_fork_non_eating)
             m = mean(abs(fft(IMU_fork_non_eating(i:i+sample_non_eating,:))));
    else
        m = mean(abs(fft(IMU_fork_non_eating(i:end,:))));
    end
   IMU_fork_sampled_non_eating = [IMU_fork_sampled_non_eating ; m];
  
end

