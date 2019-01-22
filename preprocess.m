
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


user = 9;

path_fork = strcat('groundTruth/user',num2str(user),'/fork');
txtpattern = fullfile(path_fork, '*.txt');
fork_file = dir(txtpattern);
ground_truth_fork_data = csvread([fork_file.folder,'/',fork_file.name]);

path_spoon = strcat('groundTruth/user',num2str(user),'/spoon');
txtpattern = fullfile(path_spoon, '*.txt');
spoon_file = dir(txtpattern);
ground_truth_spoon_data = csvread([spoon_file.folder,'/',spoon_file.name]);
