%��ʼ��
clear all;
clc;

teacher = [ 1 2 9 13 2 3 ];

load 512
load 513
load 514
load 515
load 516
%load Total
%load Total(1)


% plan_512_v1 = cell(0,0); plan_513_v1 = cell(0,0); plan_514_v1 = cell(0,0); plan_515_v1 = cell(0,0);plan_516_v1 = cell(0,0);plan_517_v1 = cell(0,0);plan_518_v1 = cell(0,0);plan_519_v1 = cell(0,0);plan_521_v1 = cell(0,0);
plan_512_v2 = cell(0,0); plan_513_v2 = cell(0,0); plan_514_v2 = cell(0,0); plan_515_v2 = cell(0,0);plan_516_v2 = cell(0,0);plan_517_v2 = cell(0,0);plan_518_v2 = cell(0,0);plan_519_v2 = cell(0,0);plan_521_v2 = cell(0,0);
% real_512_v1 = cell(0,0); real_513_v1 = cell(0,0); real_514_v1 = cell(0,0); real_515_v1 = cell(0,0);real_516_v1 = cell(0,0);real_517_v1 = cell(0,0);real_518_v1 = cell(0,0);real_519_v1 = cell(0,0);real_521_v1 = cell(0,0);
real_512_v2 = cell(0,0); real_513_v2 = cell(0,0); real_514_v2 = cell(0,0); real_515_v2 = cell(0,0);real_516_v2 = cell(0,0);real_517_v2 = cell(0,0);real_518_v2 = cell(0,0);real_519_v2 = cell(0,0);real_521_v2 = cell(0,0);

% %plan v1��Ƭ
% for i = 1:37
%     plan_512_v1 = [plan_512_v1, Plan_s_1_v1{1, i}];
% end
% for i = 38:302
%     plan_513_v1 = [plan_513_v1, Plan_s_1_v1{1, i}];
% end
% for i = 303:426
%     plan_514_v1 = [plan_514_v1, Plan_s_1_v1{1, i}];
% end
% for i = 427:507
%     plan_515_v1 = [plan_515_v1, Plan_s_1_v1{1, i}];
% end
% for i = 1:80
%     plan_515_v1 = [plan_515_v1, Plan_s_2_v1{1, i}];
% end
% for i = 1:31
%     plan_515_v1 = [plan_515_v1, Plan_s_3_v1{1, i}];
% end
% for i = 32:287
%     plan_516_v1 = [plan_516_v1, Plan_s_3_v1{1, i}];
% end
% for i = 1:2
%     plan_516_v1 = [plan_516_v1, Plan_s_4_v1{1, i}];
% end
% for i = 3:164
%     plan_517_v1 = [plan_517_v1, Plan_s_4_v1{1, i}];
% end
% for i = 165:241
%     plan_518_v1 = [plan_518_v1, Plan_s_4_v1{1, i}];
% end
% for i = 1:6
%     plan_519_v1 = [plan_519_v1, Plan_s_5_v1{1, i}];
% end
% for i = 7:32
%     plan_521_v1 = [plan_521_v1, Plan_s_5_v1{1, i}];
% end

%plan v2��Ƭ
for i = 1:37
    plan_512_v2 = [plan_512_v2, Plan_s_1_v2{1, i}];
end
for i = 38:302
    plan_513_v2 = [plan_513_v2, Plan_s_1_v2{1, i}];
end
for i = 303:426
    plan_514_v2 = [plan_514_v2, Plan_s_1_v2{1, i}];
end
for i = 427:507
    plan_515_v2 = [plan_515_v2, Plan_s_1_v2{1, i}];
end
for i = 1:80
    plan_515_v2 = [plan_515_v2, Plan_s_2_v2{1, i}];
end
for i = 1:31
    plan_515_v2 = [plan_515_v2, Plan_s_3_v2{1, i}];
end
for i = 32:287
    plan_516_v2 = [plan_516_v2, Plan_s_3_v2{1, i}];
end
for i = 1:2
    plan_516_v2 = [plan_516_v2, Plan_s_4_v2{1, i}];
end
for i = 3:164
    plan_517_v2 = [plan_517_v2, Plan_s_4_v2{1, i}];
end
for i = 165:241
    plan_518_v2 = [plan_518_v2, Plan_s_4_v2{1, i}];
end
for i = 1:6
    plan_519_v2 = [plan_519_v2, Plan_s_5_v2{1, i}];
end
for i = 7:32
    plan_521_v2 = [plan_521_v2, Plan_s_5_v2{1, i}];
end

% %real v1��Ƭ
% for i = 1:37
%     real_512_v1 = [real_512_v1, real_s_1_v1{1, i}];
% end
% for i = 38:302
%     real_513_v1 = [real_513_v1, real_s_1_v1{1, i}];
% end
% for i = 303:426
%     real_514_v1 = [real_514_v1, real_s_1_v1{1, i}];
% end
% for i = 427:507
%     real_515_v1 = [real_515_v1, real_s_1_v1{1, i}];
% end
% for i = 1:80
%     real_515_v1 = [real_515_v1, real_s_2_v1{1, i}];
% end
% for i = 1:31
%     real_515_v1 = [real_515_v1, real_s_3_v1{1, i}];
% end
% for i = 32:287
%     real_516_v1 = [real_516_v1, real_s_3_v1{1, i}];
% end
% for i = 1:2
%     real_516_v1 = [real_516_v1, real_s_4_v1{1, i}];
% end
% for i = 3:164
%     real_517_v1 = [real_517_v1, real_s_4_v1{1, i}];
% end

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
for i = 165:241
    real_518_v2 = [real_518_v2, real_s_4_v2{1, i}];
end
for i = 1:6
    real_519_v2 = [real_519_v2, real_s_5_v2{1, i}];
end
for i = 7:32
    real_521_v2 = [real_521_v2, real_s_5_v2{1, i}];
end



% %plan v1��real v1�Ա�
% [Time_out_p512v1, timing_p512v1] = project(plan_512_v1, teacher);
% [Time_out_r512v1, timing_r512v1] = project(real_512_v1, teacher);
% 
% [Time_out_p513v1, timing_p513v1] = project(plan_513_v1, teacher);
% [Time_out_r513v1, timing_r513v1] = project(real_513_v1, teacher);
% 
% [Time_out_p514v1, timing_p514v1] = project(plan_514_v1, teacher);
% [Time_out_r514v1, timing_r514v1] = project(real_514_v1, teacher);
% 
% [Time_out_p515v1, timing_p515v1] = project(plan_515_v1, teacher);
% [Time_out_r515v1, timing_r515v1] = project(real_515_v1, teacher);
% 
% [Time_out_p516v1, timing_p516v1] = project(plan_516_v1, teacher);
% [Time_out_r516v1, timing_r516v1] = project(real_516_v1, teacher);
% 
% [Time_out_p517v1, timing_p517v1] = project(plan_517_v1, teacher);
% [Time_out_r517v1, timing_r517v1] = project(real_517_v1, teacher);

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

[Time_out_p518v2, timing_p518v2] = project(plan_518_v2, teacher);
[Time_out_r518v2, timing_r518v2] = project(real_518_v2, teacher);

[Time_out_p519v2, timing_p519v2] = project(plan_519_v2, teacher);
[Time_out_r519v2, timing_r519v2] = project(real_519_v2, teacher);

[Time_out_p521v2, timing_p521v2] = project(plan_521_v2, teacher);
[Time_out_r521v2, timing_r521v2] = project(real_521_v2, teacher);
% 
% 
% %�ȽϽ�����������(v1)
% disp(strcat('plan_512_v1����ʱ��Ԥ�� = ', num2str(timing_p512v1), 'min'));
% disp(strcat('real_512_v1ʵ��ʱ��Ԥ�� = ', num2str(timing_r512v1), 'min'));
% disp(strcat('Ч������',num2str((timing_r512v1 - timing_p512v1)/timing_r512v1*100), '%'))
% 
% disp(strcat('plan_513_v1����ʱ��Ԥ�� = ', num2str(timing_p513v1), 'min'));
% disp(strcat('real_513_v1ʵ��ʱ��Ԥ�� = ', num2str(timing_r513v1), 'min'));
% disp(strcat('Ч������',num2str((timing_r513v1 - timing_p513v1)/timing_r513v1*100), '%'))
% 
% disp(strcat('plan_514_v1����ʱ��Ԥ�� = ', num2str(timing_p514v1), 'min'));
% disp(strcat('real_514_v1ʵ��ʱ��Ԥ�� = ', num2str(timing_r514v1), 'min'));
% disp(strcat('Ч������',num2str((timing_r514v1 - timing_p514v1)/timing_r514v1*100), '%'))
% 
% disp(strcat('plan_515_v1����ʱ��Ԥ�� = ', num2str(timing_p515v1), 'min'));
% disp(strcat('real_515_v1ʵ��ʱ��Ԥ�� = ', num2str(timing_r515v1), 'min'));
% disp(strcat('Ч������',num2str((timing_r515v1 - timing_p515v1)/timing_r515v1*100), '%'))
% 
% disp(strcat('plan_516_v1����ʱ��Ԥ�� = ', num2str(timing_p516v1), 'min'));
% disp(strcat('real_516_v1ʵ��ʱ��Ԥ�� = ', num2str(timing_r516v1), 'min'));
% disp(strcat('Ч������',num2str((timing_r516v1 - timing_p516v1)/timing_r516v1*100), '%'))
% 
% disp(strcat('plan_517_v1����ʱ��Ԥ�� = ', num2str(timing_p517v1), 'min'));
% disp(strcat('real_517_v1ʵ��ʱ��Ԥ�� = ', num2str(timing_r517v1), 'min'));
% disp(strcat('Ч������',num2str((timing_r517v1 - timing_p517v1)/timing_r517v1*100), '%'))

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

disp(strcat('plan_518_v2����ʱ��Ԥ�� = ', num2str(timing_p518v2), 'min'));
disp(strcat('real_518_v2ʵ��ʱ��Ԥ�� = ', num2str(timing_r518v2), 'min'));
disp(strcat('Ч������',num2str((timing_r518v2 - timing_p518v2)/timing_r518v2*100), '%'))

disp(strcat('plan_519_v2����ʱ��Ԥ�� = ', num2str(timing_p519v2), 'min'));
disp(strcat('real_519_v2ʵ��ʱ��Ԥ�� = ', num2str(timing_r519v2), 'min'));
disp(strcat('Ч������',num2str((timing_r519v2 - timing_p519v2)/timing_r519v2*100), '%'))

disp(strcat('plan_521_v2����ʱ��Ԥ�� = ', num2str(timing_p521v2), 'min'));
disp(strcat('real_521_v2ʵ��ʱ��Ԥ�� = ', num2str(timing_r521v2), 'min'));
disp(strcat('Ч������',num2str((timing_r521v2 - timing_p521v2)/timing_r521v2*100), '%'))

plan_time_all = timing_p512v2 + timing_p513v2 + timing_p514v2 + timing_p515v2 + timing_p516v2 + timing_p517v2 + timing_p518v2 + timing_p519v2 + timing_p521v2;
real_time_all = timing_r512v2 + timing_r513v2 + timing_r514v2 + timing_r515v2 + timing_r516v2 + timing_r517v2 + timing_r518v2 + timing_r519v2 + timing_r521v2;
disp(strcat('������ʱ��Ԥ�� = ', num2str(plan_time_all), 'min'));
disp(strcat('ʵ��ʱ����Ԥ�� = ', num2str(real_time_all), 'min'));
disp(strcat('��Ч������',num2str((real_time_all - plan_time_all)/real_time_all*100), '%'))