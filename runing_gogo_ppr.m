%��ʼ��
clear all;
clc;

teacher = [ 1 2 9 13 2 3 ];

load 512
load 513
load 514
load 515
load 516
load Total



plan_512_v1 = cell(0,0); plan_513_v1 = cell(0,0); plan_514_v1 = cell(0,0); plan_515_v1 = cell(0,0);plan_516_v1 = cell(0,0);plan_517_v1 = cell(0,0);
plan_512_v2 = cell(0,0); plan_513_v2 = cell(0,0); plan_514_v2 = cell(0,0); plan_515_v2 = cell(0,0);plan_516_v2 = cell(0,0);plan_517_v2 = cell(0,0);
real_512_v1 = cell(0,0); real_513_v1 = cell(0,0); real_514_v1 = cell(0,0); real_515_v1 = cell(0,0);real_516_v1 = cell(0,0);real_517_v1 = cell(0,0);
real_512_v2 = cell(0,0); real_513_v2 = cell(0,0); real_514_v2 = cell(0,0); real_515_v2 = cell(0,0);real_516_v2 = cell(0,0);real_517_v2 = cell(0,0);

%plan v1��Ƭ
for i = 1:37
    plan_512_v1 = [plan_512_v1, plan_s_v1{1, i}];
end
for i = 38:302
    plan_513_v1 = [plan_513_v1, plan_s_v1{1, i}];
end
for i = 303:426
    plan_514_v1 = [plan_514_v1, plan_s_v1{1, i}];
end
for i = 427:618
    plan_515_v1 = [plan_515_v1, plan_s_v1{1, i}];
end
for i = 619:876
    plan_516_v1 = [plan_516_v1, plan_s_v1{1, i}];
end
for i = 877:1038
    plan_517_v1 = [plan_517_v1, plan_s_v1{1, i}];
end

%plan v2��Ƭ
for i = 1:37
    plan_512_v2 = [plan_512_v2, plan_s_v2{1, i}];
end
for i = 38:302
    plan_513_v2 = [plan_513_v2, plan_s_v2{1, i}];
end
for i = 303:426
    plan_514_v2 = [plan_514_v2, plan_s_v2{1, i}];
end
for i = 427:618
    plan_515_v2 = [plan_515_v2, plan_s_v2{1, i}];
end
for i = 619:876
    plan_516_v2 = [plan_516_v2, plan_s_v2{1, i}];
end
for i = 877:1038
    plan_517_v2 = [plan_517_v2, plan_s_v2{1, i}];
end

%real v1��Ƭ
for i = 1:37
    real_512_v1 = [real_512_v1, real_s_1_v1{1, i}];
end
for i = 38:302
    real_513_v1 = [real_513_v1, real_s_1_v1{1, i}];
end
for i = 303:426
    real_514_v1 = [real_514_v1, real_s_1_v1{1, i}];
end
for i = 427:507
    real_515_v1 = [real_515_v1, real_s_1_v1{1, i}];
end
for i = 1:80
    real_515_v1 = [real_515_v1, real_s_2_v1{1, i}];
end
for i = 1:31
    real_515_v1 = [real_515_v1, real_s_3_v1{1, i}];
end
for i = 32:287
    real_516_v1 = [real_516_v1, real_s_3_v1{1, i}];
end
for i = 1:2
    real_516_v1 = [real_516_v1, real_s_4_v1{1, i}];
end
for i = 3:164
    real_517_v1 = [real_517_v1, real_s_4_v1{1, i}];
end

%real v2��Ƭ
for i = 1:37
    real_512_v2 = [real_512_v2, real_s_1_v2{1, i}];
end
for i = 38:302
    real_513_v2 = [real_513_v2, real_s_1_v2{1, i}];
end
for i = 303:426
    real_514_v2 = [real_514_v2, real_s_1_v2{1, i}];
end
for i = 427:507
    real_515_v2 = [real_515_v2, real_s_1_v2{1, i}];
end
for i = 1:80
    real_515_v2 = [real_515_v2, real_s_2_v2{1, i}];
end
for i = 1:31
    real_515_v2 = [real_515_v2, real_s_3_v2{1, i}];
end
for i = 32:287
    real_516_v2 = [real_516_v2, real_s_3_v2{1, i}];
end
for i = 1:2
    real_516_v2 = [real_516_v2, real_s_4_v2{1, i}];
end
for i = 3:164
    real_517_v2 = [real_517_v2, real_s_4_v2{1, i}];
end


%plan v1��real v1�Ա�
[Time_out_p512v1, timing_p512v1] = project(plan_512_v1, teacher);
[Time_out_r512v1, timing_r512v1] = project(real_512_v1, teacher);

[Time_out_p513v1, timing_p513v1] = project(plan_513_v1, teacher);
[Time_out_r513v1, timing_r513v1] = project(real_513_v1, teacher);

[Time_out_p514v1, timing_p514v1] = project(plan_514_v1, teacher);
[Time_out_r514v1, timing_r514v1] = project(real_514_v1, teacher);

[Time_out_p515v1, timing_p515v1] = project(plan_515_v1, teacher);
[Time_out_r515v1, timing_r515v1] = project(real_515_v1, teacher);

[Time_out_p516v1, timing_p516v1] = project(plan_516_v1, teacher);
[Time_out_r516v1, timing_r516v1] = project(real_516_v1, teacher);

[Time_out_p517v1, timing_p517v1] = project(plan_517_v1, teacher);
[Time_out_r517v1, timing_r517v1] = project(real_517_v1, teacher);

%plan v2��real v2�Ա�
[Time_out_p512v2, timing_p512v2] = project(plan_512_v2, teacher);
[Time_out_r512v2, timing_r512v2] = project(real_512_v2, teacher);

[Time_out_p513v2, timing_p513v2] = project(plan_513_v2, teacher);
[Time_out_r513v2, timing_r513v2] = project(real_513_v2, teacher);

[Time_out_p514v2, timing_p514v2] = project(plan_514_v2, teacher);
[Time_out_r514v2, timing_r514v2] = project(real_514_v2, teacher);

[Time_out_p515v2, timing_p515v2] = project(plan_515_v2, teacher);
[Time_out_r515v2, timing_r515v2] = project(real_515_v2, teacher);

[Time_out_p516v2, timing_p516v2] = project(plan_516_v2, teacher);
[Time_out_r516v2, timing_r516v2] = project(real_516_v2, teacher);

[Time_out_p517v2, timing_p517v2] = project(plan_517_v2, teacher);
[Time_out_r517v2, timing_r517v2] = project(real_517_v2, teacher);


%�ȽϽ�����������(v1)
disp(strcat('plan_512_v1����ʱ��Ԥ�� = ', num2str(timing_p512v1), 'min'));
disp(strcat('real_512_v1ʵ��ʱ��Ԥ�� = ', num2str(timing_r512v1), 'min'));
disp(strcat('Ч������',num2str((timing_r512v1 - timing_p512v1)/timing_r512v1*100), '%'))

disp(strcat('plan_513_v1����ʱ��Ԥ�� = ', num2str(timing_p513v1), 'min'));
disp(strcat('real_513_v1ʵ��ʱ��Ԥ�� = ', num2str(timing_r513v1), 'min'));
disp(strcat('Ч������',num2str((timing_r513v1 - timing_p513v1)/timing_r513v1*100), '%'))

disp(strcat('plan_514_v1����ʱ��Ԥ�� = ', num2str(timing_p514v1), 'min'));
disp(strcat('real_514_v1ʵ��ʱ��Ԥ�� = ', num2str(timing_r514v1), 'min'));
disp(strcat('Ч������',num2str((timing_r514v1 - timing_p514v1)/timing_r514v1*100), '%'))

disp(strcat('plan_515_v1����ʱ��Ԥ�� = ', num2str(timing_p515v1), 'min'));
disp(strcat('real_515_v1ʵ��ʱ��Ԥ�� = ', num2str(timing_r515v1), 'min'));
disp(strcat('Ч������',num2str((timing_r515v1 - timing_p515v1)/timing_r515v1*100), '%'))

disp(strcat('plan_516_v1����ʱ��Ԥ�� = ', num2str(timing_p516v1), 'min'));
disp(strcat('real_516_v1ʵ��ʱ��Ԥ�� = ', num2str(timing_r516v1), 'min'));
disp(strcat('Ч������',num2str((timing_r516v1 - timing_p516v1)/timing_r516v1*100), '%'))

disp(strcat('plan_517_v1����ʱ��Ԥ�� = ', num2str(timing_p517v1), 'min'));
disp(strcat('real_517_v1ʵ��ʱ��Ԥ�� = ', num2str(timing_r517v1), 'min'));
disp(strcat('Ч������',num2str((timing_r517v1 - timing_p517v1)/timing_r517v1*100), '%'))

%�ȽϽ�����������(v2)
disp(strcat('plan_512_v2����ʱ��Ԥ�� = ', num2str(timing_p512v2), 'min'));
disp(strcat('real_512_v2ʵ��ʱ��Ԥ�� = ', num2str(timing_r512v2), 'min'));
disp(strcat('Ч������',num2str((timing_r512v2 - timing_p512v2)/timing_r512v2*100), '%'))

disp(strcat('plan_513_v2����ʱ��Ԥ�� = ', num2str(timing_p513v2), 'min'));
disp(strcat('real_513_v2ʵ��ʱ��Ԥ�� = ', num2str(timing_r513v2), 'min'));
disp(strcat('Ч������',num2str((timing_r513v2 - timing_p513v2)/timing_r513v2*100), '%'))

disp(strcat('plan_514_v2����ʱ��Ԥ�� = ', num2str(timing_p514v2), 'min'));
disp(strcat('real_514_v2ʵ��ʱ��Ԥ�� = ', num2str(timing_r514v2), 'min'));
disp(strcat('Ч������',num2str((timing_r514v2 - timing_p514v2)/timing_r514v2*100), '%'))

disp(strcat('plan_515_v2����ʱ��Ԥ�� = ', num2str(timing_p515v2), 'min'));
disp(strcat('real_515_v2ʵ��ʱ��Ԥ�� = ', num2str(timing_r515v2), 'min'));
disp(strcat('Ч������',num2str((timing_r515v2 - timing_p515v2)/timing_r515v2*100), '%'))

disp(strcat('plan_516_v2����ʱ��Ԥ�� = ', num2str(timing_p516v2), 'min'));
disp(strcat('real_516_v2ʵ��ʱ��Ԥ�� = ', num2str(timing_r516v2), 'min'));
disp(strcat('Ч������',num2str((timing_r516v2 - timing_p516v2)/timing_r516v2*100), '%'))

disp(strcat('plan_517_v2����ʱ��Ԥ�� = ', num2str(timing_p517v2), 'min'));
disp(strcat('real_517_v2ʵ��ʱ��Ԥ�� = ', num2str(timing_r517v2), 'min'));
disp(strcat('Ч������',num2str((timing_r517v2 - timing_p517v2)/timing_r517v2*100), '%'))

% X = [];
% TEMP1=2945.1;
% for i = 1:100
%     X = randperm(1385);
%     n_plan1 = tem(X);
%     tic
%     [~, timing11] = project(n_plan1, teacher);
%     toc
%     if timing11 < TEMP1
%         best1 = X;
%         TEMP1 = timing11 ;
%     end
% end
% m_plan1 = tem(best1);

