%初始化
clear all;
clc;

teacher = [ 1 2 9 13 2 3 ];

load 512
load 513
load 514
load 515
load 516
load bestsort_Pr512v2
load bestsort_Pr513v2
load bestsort_Pr514v2
load bestsort_Pr515v2
load bestsort_Pr516v2
load bestsort_Pr517v2
load bestsort_Pr518v2
load bestsort_Pr519v2
load bestsort_Pr521v2

% plan_512_v1 = cell(0,0); plan_513_v1 = cell(0,0); plan_514_v1 = cell(0,0); plan_515_v1 = cell(0,0);plan_516_v1 = cell(0,0);plan_517_v1 = cell(0,0);plan_518_v1 = cell(0,0);plan_519_v1 = cell(0,0);plan_521_v1 = cell(0,0);
plan_512_v2 = cell(0,0); plan_513_v2 = cell(0,0); plan_514_v2 = cell(0,0); plan_515_v2 = cell(0,0);plan_516_v2 = cell(0,0);plan_517_v2 = cell(0,0);plan_518_v2 = cell(0,0);plan_519_v2 = cell(0,0);plan_521_v2 = cell(0,0);
% real_512_v1 = cell(0,0); real_513_v1 = cell(0,0); real_514_v1 = cell(0,0); real_515_v1 = cell(0,0);real_516_v1 = cell(0,0);real_517_v1 = cell(0,0);real_518_v1 = cell(0,0);real_519_v1 = cell(0,0);real_521_v1 = cell(0,0);
real_512_v2 = cell(0,0); real_513_v2 = cell(0,0); real_514_v2 = cell(0,0); real_515_v2 = cell(0,0);real_516_v2 = cell(0,0);real_517_v2 = cell(0,0);real_518_v2 = cell(0,0);real_519_v2 = cell(0,0);real_521_v2 = cell(0,0);

% %总体取出，跑，记录是否最优，重复！
% %512
% Y = [];
% TEMP1=10000;
% for i = 1:1000
%     plan_512_v2 = cell(0,0);
%     Y = randperm(1147);
%     YY = Y(1:37);
%     for i = YY
%         plan_512_v2 = [plan_512_v2, p_S{1, i}];
%     end
%     tic
%     [~, timingPr512v2] = project(plan_512_v2, teacher);
%     toc
%     if timingPr512v2 < TEMP1
%         best1 = YY;
%         TEMP1 = timingPr512v2 ;
%     end
% end
% save('bestnum_Pr512v2.mat','best1')
% bestsort_Pr512v2 = p_S(best1);
% save('bestsort_Pr512v2.mat','bestsort_Pr512v2')
% %删掉指定元素
% best1 = sort(best1,'descend');
% for i = best1
%     p_S(i)=[];
% end

% %513
% Y = [];
% TEMP2=10000;
% for i = 1:1000
%     plan_513_v2 = cell(0,0);
%     Y = randperm(1110);
%     YY = Y(1:265);
%     for i = YY
%         plan_513_v2 = [plan_513_v2, p_S{1, i}];
%     end
%     tic
%     [~, timingPr513v2] = project(plan_513_v2, teacher);
%     toc
%     if timingPr513v2 < TEMP2
%         best2 = YY;
%         TEMP2 = timingPr513v2 ;
%     end
% end
% save('bestnum_Pr513v2.mat','best2')
% bestsort_Pr513v2 = p_S(best2);
% save('bestsort_Pr513v2.mat','bestsort_Pr513v2')
% %删掉指定元素
% best2 = sort(best2,'descend');
% for i = best2
%     p_S(i)=[];
% end
% 
% %514
% Y = [];
% TEMP3=10000;
% for i = 1:1000
%     plan_514_v2 = cell(0,0);
%     Y = randperm(845);
%     YY = Y(1:124);
%     for i = YY
%         plan_514_v2 = [plan_514_v2, p_S{1, i}];
%     end
%     tic
%     [~, timingPr514v2] = project(plan_514_v2, teacher);
%     toc
%     if timingPr514v2 < TEMP3
%         best3 = YY;
%         TEMP3 = timingPr514v2 ;
%     end
% end
% save('bestnum_Pr514v2.mat','best3')
% bestsort_Pr514v2 = p_S(best3);
% save('bestsort_Pr514v2.mat','bestsort_Pr514v2')
% %删掉指定元素
% best3 = sort(best3,'descend');
% for i = best3
%     p_S(i)=[];
% end
% 
% %515
% Y = [];
% TEMP4=10000;
% for i = 1:1000
%     plan_515_v2 = cell(0,0);
%     Y = randperm(721);
%     YY = Y(1:192);
%     for i = YY
%         plan_515_v2 = [plan_515_v2, p_S{1, i}];
%     end
%     tic
%     [~, timingPr515v2] = project(plan_515_v2, teacher);
%     toc
%     if timingPr515v2 < TEMP4
%         best4 = YY;
%         TEMP4 = timingPr515v2 ;
%     end
% end
% save('bestnum_Pr515v2.mat','best4')
% bestsort_Pr515v2 = p_S(best4);
% save('bestsort_Pr515v2.mat','bestsort_Pr515v2')
% best4 = sort(best4,'descend');
% %删掉指定元素
% for i = best4
%     p_S(i)=[];
% end
% 
% %516
% Y = [];
% TEMP5=10000;
% for i = 1:1000
%     plan_516_v2 = cell(0,0);
%     Y = randperm(529);
%     YY = Y(1:258);
%     for i = YY
%         plan_516_v2 = [plan_516_v2, p_S{1, i}];
%     end
%     tic
%     [~, timingPr516v2] = project(plan_516_v2, teacher);
%     toc
%     if timingPr516v2 < TEMP5
%         best5 = YY;
%         TEMP5 = timingPr516v2 ;
%     end
% end
% save('bestnum_Pr516v2.mat','best5')
% bestsort_Pr516v2 = p_S(best5);
% save('bestsort_Pr516v2.mat','bestsort_Pr516v2')
% %删掉指定元素
% best5 = sort(best5,'descend');
% for i = best5
%     p_S(i)=[];
% end
% 
% %517
% Y = [];
% TEMP6=10000;
% for i = 1:1000
%     plan_517_v2 = cell(0,0);
%     Y = randperm(271);
%     YY = Y(1:162);
%     for i = YY
%         plan_517_v2 = [plan_517_v2, p_S{1, i}];
%     end
%     tic
%     [~, timingPr517v2] = project(plan_517_v2, teacher);
%     toc
%     if timingPr517v2 < TEMP6
%         best6 = YY;
%         TEMP6 = timingPr517v2 ;
%     end
% end
% save('bestnum_Pr517v2.mat','best6')
% bestsort_Pr517v2 = p_S(best6);
% save('bestsort_Pr517v2.mat','bestsort_Pr517v2')
% %删掉指定元素
% best6 = sort(best6,'descend');
% for i = best6
%     p_S(i)=[];
% end
% 
% %518
% Y = [];
% TEMP7=10000;
% for i = 1:1000
%     plan_518_v2 = cell(0,0);
%     Y = randperm(109);
%     YY = Y(1:77);
%     for i = YY
%         plan_518_v2 = [plan_518_v2, p_S{1, i}];
%     end
%     tic
%     [~, timingPr518v2] = project(plan_518_v2, teacher);
%     toc
%     if timingPr518v2 < TEMP7
%         best7 = YY;
%         TEMP7 = timingPr518v2 ;
%     end
% end
% save('bestnum_Pr518v2.mat','best7')
% bestsort_Pr518v2 = p_S(best7);
% save('bestsort_Pr518v2.mat','bestsort_Pr518v2')
% %删掉指定元素
% best7 = sort(best7,'descend');
% for i = best7
%     p_S(i)=[];
% end
% 
% %519
% Y = [];
% TEMP8=10000;
% for i = 1:1000
%     plan_519_v2 = cell(0,0);
%     Y = randperm(32);
%     YY = Y(1:6);
%     for i = YY
%         plan_519_v2 = [plan_519_v2, p_S{1, i}];
%     end
%     tic
%     [~, timingPr519v2] = project(plan_519_v2, teacher);
%     toc
%     if timingPr519v2 < TEMP8
%         best8 = YY;
%         TEMP8 = timingPr519v2 ;
%     end
% end
% save('bestnum_Pr519v2.mat','best8')
% bestsort_Pr519v2 = p_S(best8);
% save('bestsort_Pr519v2.mat','bestsort_Pr519v2')
% %删掉指定元素
% best8 = sort(best8,'descend');
% for i = best8
%     p_S(i)=[];
% end
% 
% %521
% Y = [];
% TEMP9=10000;
% for i = 1:1000
%     plan_521_v2 = cell(0,0);
%     Y = randperm(26);
%     YY = Y(1:26);
%     for i = YY
%         plan_521_v2 = [plan_521_v2, p_S{1, i}];
%     end
%     tic
%     [~, timingPr521v2] = project(plan_521_v2, teacher);
%     toc
%     if timingPr521v2 < TEMP9
%         best9 = YY;
%         TEMP9 = timingPr521v2 ;
%     end
% end
% save('bestnum_Pr521v2.mat','best9')
% bestsort_Pr521v2 = p_S(best9);
% save('bestsort_Pr521v2.mat','bestsort_Pr521v2')
% %删掉指定元素
% best9 = sort(best9,'descend');
% for i = best9
%     p_S(i)=[];
% end


%real v2切片
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




% %plan v1和real v1对比
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
% 
% %plan v2和real v2对比
% [Time_out_p512v2, timing_p512v2] = project(plan_512_v2, teacher);
% [Time_out_r512v2, timing_r512v2] = project(real_512_v2, teacher);
% 
% [Time_out_p513v2, timing_p513v2] = project(plan_513_v2, teacher);
% [Time_out_r513v2, timing_r513v2] = project(real_513_v2, teacher);
% 
% [Time_out_p514v2, timing_p514v2] = project(plan_514_v2, teacher);
% [Time_out_r514v2, timing_r514v2] = project(real_514_v2, teacher);
% 
% [Time_out_p515v2, timing_p515v2] = project(plan_515_v2, teacher);
% [Time_out_r515v2, timing_r515v2] = project(real_515_v2, teacher);
% 
% [Time_out_p516v2, timing_p516v2] = project(plan_516_v2, teacher);
% [Time_out_r516v2, timing_r516v2] = project(real_516_v2, teacher);
% 
% [Time_out_p517v2, timing_p517v2] = project(plan_517_v2, teacher);
% [Time_out_r517v2, timing_r517v2] = project(real_517_v2, teacher);

% %bestsort_plan v1和bestsort_real v1对比
% % bestsort_Pr512v1 = plan_512_v1;
% [Time_out_p512v1, timing_p512v1] = project(bestsort_Pr512v1, teacher);
% [Time_out_r512v1, timing_r512v1] = project(real_512_v1, teacher);
% 
% [Time_out_p513v1, timing_p513v1] = project(bestsort_Pr513v1, teacher);
% [Time_out_r513v1, timing_r513v1] = project(real_513_v1, teacher);
% 
% [Time_out_p514v1, timing_p514v1] = project(bestsort_Pr514v1, teacher);
% [Time_out_r514v1, timing_r514v1] = project(real_514_v1, teacher);
% 
% [Time_out_p515v1, timing_p515v1] = project(bestsort_Pr515v1, teacher);
% [Time_out_r515v1, timing_r515v1] = project(real_515_v1, teacher);
% 
% [Time_out_p516v1, timing_p516v1] = project(bestsort_Pr516v1, teacher);
% [Time_out_r516v1, timing_r516v1] = project(real_516_v1, teacher);
% 
% [Time_out_p517v1, timing_p517v1] = project(bestsort_Pr517v1, teacher);
% [Time_out_r517v1, timing_r517v1] = project(real_517_v1, teacher);
% 
%bestsort_plan v2和bestsort_real v2对比
[Time_out_p512v2, timing_p512v2] = project(bestsort_Pr512v2, teacher);
[Time_out_r512v2, timing_r512v2] = project(real_512_v2, teacher);

[Time_out_p513v2, timing_p513v2] = project(bestsort_Pr513v2, teacher);
[Time_out_r513v2, timing_r513v2] = project(real_513_v2, teacher);

[Time_out_p514v2, timing_p514v2] = project(bestsort_Pr514v2, teacher);
[Time_out_r514v2, timing_r514v2] = project(real_514_v2, teacher);

[Time_out_p515v2, timing_p515v2] = project(bestsort_Pr515v2, teacher);
[Time_out_r515v2, timing_r515v2] = project(real_515_v2, teacher);

[Time_out_p516v2, timing_p516v2] = project(bestsort_Pr516v2, teacher);
[Time_out_r516v2, timing_r516v2] = project(real_516_v2, teacher);

[Time_out_p517v2, timing_p517v2] = project(bestsort_Pr517v2, teacher);
[Time_out_r517v2, timing_r517v2] = project(real_517_v2, teacher);

[Time_out_p518v2, timing_p518v2] = project(bestsort_Pr518v2, teacher);
[Time_out_r518v2, timing_r518v2] = project(real_518_v2, teacher);

[Time_out_p519v2, timing_p519v2] = project(bestsort_Pr519v2, teacher);
[Time_out_r519v2, timing_r519v2] = project(real_519_v2, teacher);

[Time_out_p521v2, timing_p521v2] = project(bestsort_Pr521v2, teacher);
[Time_out_r521v2, timing_r521v2] = project(real_521_v2, teacher);
% 
% %比较结果并输出环节(v1)
% disp(strcat('plan_512_v1理论时间预计 = ', num2str(timing_p512v1), 'min'));
% disp(strcat('real_512_v1实际时间预计 = ', num2str(timing_r512v1), 'min'));
% disp(strcat('效率提升',num2str((timing_r512v1 - timing_p512v1)/timing_r512v1*100), '%'))
% 
% disp(strcat('plan_513_v1理论时间预计 = ', num2str(timing_p513v1), 'min'));
% disp(strcat('real_513_v1实际时间预计 = ', num2str(timing_r513v1), 'min'));
% disp(strcat('效率提升',num2str((timing_r513v1 - timing_p513v1)/timing_r513v1*100), '%'))
% 
% disp(strcat('plan_514_v1理论时间预计 = ', num2str(timing_p514v1), 'min'));
% disp(strcat('real_514_v1实际时间预计 = ', num2str(timing_r514v1), 'min'));
% disp(strcat('效率提升',num2str((timing_r514v1 - timing_p514v1)/timing_r514v1*100), '%'))
% 
% disp(strcat('plan_515_v1理论时间预计 = ', num2str(timing_p515v1), 'min'));
% disp(strcat('real_515_v1实际时间预计 = ', num2str(timing_r515v1), 'min'));
% disp(strcat('效率提升',num2str((timing_r515v1 - timing_p515v1)/timing_r515v1*100), '%'))
% 
% disp(strcat('plan_516_v1理论时间预计 = ', num2str(timing_p516v1), 'min'));
% disp(strcat('real_516_v1实际时间预计 = ', num2str(timing_r516v1), 'min'));
% disp(strcat('效率提升',num2str((timing_r516v1 - timing_p516v1)/timing_r516v1*100), '%'))
% 
% disp(strcat('plan_517_v1理论时间预计 = ', num2str(timing_p517v1), 'min'));
% disp(strcat('real_517_v1实际时间预计 = ', num2str(timing_r517v1), 'min'));
% disp(strcat('效率提升',num2str((timing_r517v1 - timing_p517v1)/timing_r517v1*100), '%'))
% 
%比较结果并输出环节(v2)
disp(strcat('plan_512_v2理论时间预计 = ', num2str(timing_p512v2), 'min'));
disp(strcat('real_512_v2实际时间预计 = ', num2str(timing_r512v2), 'min'));
disp(strcat('效率提升',num2str((timing_r512v2 - timing_p512v2)/timing_r512v2*100), '%'))

disp(strcat('plan_513_v2理论时间预计 = ', num2str(timing_p513v2), 'min'));
disp(strcat('real_513_v2实际时间预计 = ', num2str(timing_r513v2), 'min'));
disp(strcat('效率提升',num2str((timing_r513v2 - timing_p513v2)/timing_r513v2*100), '%'))

disp(strcat('plan_514_v2理论时间预计 = ', num2str(timing_p514v2), 'min'));
disp(strcat('real_514_v2实际时间预计 = ', num2str(timing_r514v2), 'min'));
disp(strcat('效率提升',num2str((timing_r514v2 - timing_p514v2)/timing_r514v2*100), '%'))

disp(strcat('plan_515_v2理论时间预计 = ', num2str(timing_p515v2), 'min'));
disp(strcat('real_515_v2实际时间预计 = ', num2str(timing_r515v2), 'min'));
disp(strcat('效率提升',num2str((timing_r515v2 - timing_p515v2)/timing_r515v2*100), '%'))

disp(strcat('plan_516_v2理论时间预计 = ', num2str(timing_p516v2), 'min'));
disp(strcat('real_516_v2实际时间预计 = ', num2str(timing_r516v2), 'min'));
disp(strcat('效率提升',num2str((timing_r516v2 - timing_p516v2)/timing_r516v2*100), '%'))

disp(strcat('plan_517_v2理论时间预计 = ', num2str(timing_p517v2), 'min'));
disp(strcat('real_517_v2实际时间预计 = ', num2str(timing_r517v2), 'min'));
disp(strcat('效率提升',num2str((timing_r517v2 - timing_p517v2)/timing_r517v2*100), '%'))

disp(strcat('plan_518_v2理论时间预计 = ', num2str(timing_p518v2), 'min'));
disp(strcat('real_518_v2实际时间预计 = ', num2str(timing_r518v2), 'min'));
disp(strcat('效率提升',num2str((timing_r518v2 - timing_p518v2)/timing_r518v2*100), '%'))

disp(strcat('plan_519_v2理论时间预计 = ', num2str(timing_p519v2), 'min'));
disp(strcat('real_519_v2实际时间预计 = ', num2str(timing_r519v2), 'min'));
disp(strcat('效率提升',num2str((timing_r519v2 - timing_p519v2)/timing_r519v2*100), '%'))

disp(strcat('plan_521_v2理论时间预计 = ', num2str(timing_p521v2), 'min'));
disp(strcat('real_521_v2实际时间预计 = ', num2str(timing_r521v2), 'min'));
disp(strcat('效率提升',num2str((timing_r521v2 - timing_p521v2)/timing_r521v2*100), '%'))

plan_time_all = timing_p512v2 + timing_p513v2 + timing_p514v2 + timing_p515v2 + timing_p516v2 + timing_p517v2 + timing_p518v2 + timing_p519v2 + timing_p521v2;
real_time_all = timing_r512v2 + timing_r513v2 + timing_r514v2 + timing_r515v2 + timing_r516v2 + timing_r517v2 + timing_r518v2 + timing_r519v2 + timing_r521v2;
disp(strcat('理论总时间预计 = ', num2str(plan_time_all), 'min'));
disp(strcat('实际时间总预计 = ', num2str(real_time_all), 'min'));
disp(strcat('总效率提升',num2str((real_time_all - plan_time_all)/real_time_all*100), '%'))
