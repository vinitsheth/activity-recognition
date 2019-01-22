
% dataname = 'test/forkEMG.txt'
% reference = 'test/reference.txt'
% data = csvread(dataname)
% ref = csvread(reference)

% function p(user)
% ground_truth_files = dir('groundTruth/user'+user);
% for i = 1:length(ground_truth_files)
%     ground_truth_files(i).name
% end
%z

users = [9  10 11 12 13 14 16 17 18 19 21 22 23 24 25 26 27 28 29 30 31 32 33 34 36 37 38 39 40 41];
EMG_fork = [];
EMG_spoon = [];
IMU_fork = [];
IMU_spoon =[];
for i = 1:length(users)
    [e1,e2,i1,i2] = data_preprocessing(users(i));
    EMG_fork = [ EMG_fork ; e1];
    EMG_spoon = [EMG_spoon ; e2];
    IMU_fork = [IMU_fork ; i1];
    IMU_spoon = [IMU_spoon; i2];

end

function [EMG_fork_processed_data   , EMG_spoon_processed_data ,IMU_fork_processed_data , IMU_spoon_processed_data ] =  data_preprocessing(user) 
path_fork = strcat('groundTruth/user',num2str(user),'/fork');
txtpattern = fullfile(path_fork, '*.txt');
fork_file = dir(txtpattern);
ground_truth_fork_data = csvread([fork_file.folder,'/',fork_file.name]);

path_spoon = strcat('groundTruth/user',num2str(user),'/spoon');
txtpattern = fullfile(path_spoon, '*.txt');
spoon_file = dir(txtpattern);
ground_truth_spoon_data = csvread([spoon_file.folder,'/',spoon_file.name]);

path_fork = strcat('MyoData/user',num2str(user),'/fork');
txtpattern_EMG = fullfile(path_fork, '*EMG.txt');
txtpattern_IMU = fullfile(path_fork, '*IMU.txt');
EMG_file = dir(txtpattern_EMG);
IMU_file = dir(txtpattern_IMU);
EMG_fork_data = csvread([EMG_file.folder,'/',EMG_file.name]);
IMU_fork_data = csvread([IMU_file.folder,'/',IMU_file.name]);

path_spoon = strcat('MyoData/user',num2str(user),'/spoon');
txtpattern_EMG = fullfile(path_spoon, '*EMG.txt');
txtpattern_IMU = fullfile(path_spoon, '*IMU.txt');
EMG_file = dir(txtpattern_EMG);
IMU_file = dir(txtpattern_IMU);
EMG_spoon_data = csvread([EMG_file.folder,'/',EMG_file.name]);
IMU_spoon_data = csvread([IMU_file.folder,'/',IMU_file.name]);

EMG_fork_processed_data = [zeros(size(EMG_fork_data,1),1) EMG_fork_data(:,2:end) zeros(size(EMG_fork_data,1),1)];
IMU_fork_processed_data = [zeros(size(IMU_fork_data,1),1) IMU_fork_data(:,2:end) zeros(size(IMU_fork_data,1),1)];
EMG_fork_processed_data(:,1) = user;
IMU_fork_processed_data(:,1) = user;
for i= 1:length(ground_truth_fork_data)
    EMG_fork_processed_data(ground_truth_fork_data(i,1) :ground_truth_fork_data(i,2) , end ) = 1 ;
    IMU_fork_processed_data(ground_truth_fork_data(i,1) :ground_truth_fork_data(i,2) , end ) = 1 ;
end

EMG_spoon_processed_data = [zeros(size(EMG_spoon_data,1),1) EMG_spoon_data(:,2:end) zeros(size(EMG_spoon_data,1),1)];
IMU_spoon_processed_data = [zeros(size(IMU_spoon_data,1),1) IMU_spoon_data(:,2:end) zeros(size(IMU_spoon_data,1),1)];
EMG_spoon_processed_data(:,1) = user;
IMU_spoon_processed_data(:,1) = user;

for i= 1:length(ground_truth_spoon_data)
    EMG_spoon_processed_data(ground_truth_spoon_data(i,1) :ground_truth_spoon_data(i,2) , end ) = 1 ;
    IMU_spoon_processed_data(ground_truth_spoon_data(i,1) :ground_truth_spoon_data(i,2) , end ) = 1 ;
end


end

