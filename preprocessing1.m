
users = [9  10 11 12 13 14 16 17 18 19 21 22 23 24 25 26 27 28 29 30 31 32 33 34 36 37 38 39 40 41];
EMG_fork = [];

IMU_fork = [];

for i = 1:length(users)
    [e1,i1] = data_process(users(i));
    EMG_fork = [ EMG_fork ; e1];
   
    IMU_fork = [IMU_fork ; i1];
    

end

function [EMG_fork_processed_data, IMU_fork_processed_data] = data_process(user)
path_fork = strcat('groundTruth/user',num2str(user),'/fork');
txtpattern = fullfile(path_fork, '*.txt');
fork_file = dir(txtpattern);
ground_truth_fork_data = csvread([fork_file.folder,'/',fork_file.name]);

path_fork = strcat('MyoData/user',num2str(user),'/fork');
txtpattern_EMG = fullfile(path_fork, '*EMG.txt');
txtpattern_IMU = fullfile(path_fork, '*IMU.txt');
EMG_file = dir(txtpattern_EMG);
IMU_file = dir(txtpattern_IMU);
EMG_fork_data = csvread([EMG_file.folder,'/',EMG_file.name]);
IMU_fork_data = csvread([IMU_file.folder,'/',IMU_file.name]);

EMG_fork_processed_data = [zeros(size(EMG_fork_data,1),1) EMG_fork_data zeros(size(EMG_fork_data,1),1)];
IMU_fork_processed_data = [zeros(size(IMU_fork_data,1),1) IMU_fork_data zeros(size(IMU_fork_data,1),1)];
EMG_fork_processed_data(:,1) = user;
IMU_fork_processed_data(:,1) = user;

first_frame = ground_truth_fork_data(1,1);
first_EMG_time_stamp = EMG_fork_data(1,1) ;

first_IMU_time_stamp = IMU_fork_data(1,1);



for i= 1:length(ground_truth_fork_data)
    start_time_EMG = compute_last_time(ground_truth_fork_data(i,1),first_frame,first_EMG_time_stamp);
    end_time_EMG = compute_last_time(ground_truth_fork_data(i,2),first_frame,first_EMG_time_stamp);
    
    start_time_IMU = compute_last_time(ground_truth_fork_data(i,1),first_frame,first_IMU_time_stamp);
    end_time_IMU = compute_last_time(ground_truth_fork_data(i,2),first_frame,first_IMU_time_stamp);
    j=1;
    while (j<= length(EMG_fork_data) ) 
        if (EMG_fork_data(j,1) >= start_time_EMG ) && (EMG_fork_data(j,1) <= end_time_EMG )
        
        EMG_fork_processed_data(j,end) = 1;
        end
        j= j +1;
    end
    
    
    j=1;
    while (j<= length(IMU_fork_data) ) 
        if (IMU_fork_data(j,1) >= start_time_IMU ) && (IMU_fork_data(j,1) <= end_time_IMU )
        
        IMU_fork_processed_data(j,end) = 1;
        end
        j= j +1;
    end
    %EMG_fork_processed_data(ground_truth_fork_data(i,1) :ground_truth_fork_data(i,2) , end ) = 1 ;
    %IMU_fork_processed_data(ground_truth_fork_data(i,1) :ground_truth_fork_data(i,2) , end ) = 1 ;
    
    
end

end

function [last_time] = compute_last_time(frame_number , first_frame , first_time )
    last_time = (((frame_number - first_frame)/30)*1000) + first_time;
end
