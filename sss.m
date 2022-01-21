%≥ı ºªØ
clear all;
clc;

plan{1,1}.name = '111', plan{1,1}.cls = [1,2,3;4,5,5];
plan{1,2}.name = '222', plan{1,2}.cls = [2,3;5,5];
plan{1,3}.name = '333', plan{1,3}.cls = [1,3;8,5];
plan{1,4}.name = '444', plan{1,4}.cls = [1,2;3,5];

save('sss.mat','plan')