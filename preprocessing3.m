EMG_Matched = [];
i=1;
j = 1;
while i<length(IMU_fork)
    ts =  IMU_fork(i,2);
    temp =[];
    while EMG_fork(j,2) < ts
        temp = [temp;EMG_fork(j,:)];
        j=j+1;
    end
    m = mean(temp,1);
    EMG_Matched=[EMG_Matched;m];
    i=i+1;
end
