function [Time_out,timing] = project(student, teacher, Time)
%%
%初始数据及数据预处理
%这里的student值的是工件个体，teacher指的是操作工人与机器工位，class值的是工件所需要经过的工序及操作时长
N = length(student);

for i = 1:N
    class_num = 1:length(student{i}.cls(1, :));    %为了后面比较合并了哪几项
    [class_resort, class_site] = unique(student{i}.cls(1, :), 'first');
    class_site = class_site';                      %把位置列向量转化为行向量
    time_resort = student{i}.cls(2, class_site);
    merge_site = setdiff(class_num, class_site);   %merge_site表示哪几个数据被合并了
    for j = merge_site
        classes = student{i}.cls(1, j);            %被合并数据对应哪个class
        times = student{i}.cls(2, j);              %被合并数据对应的time
        sites = find(class_resort == classes);
        time_resort(sites) = time_resort(sites) + times;
    end
    %输出处理后的新的数据，这里注意已经重新定义了一个students,之后都用这个处理后的students
    students{i}.name = student{i}.name;
    students{i}.cls(1, :) = class_resort;
    students{i}.cls(2, :) = time_resort;
end
% clear class_num class_resort class_site merge_site times classes sites time_resort       %去掉多余的变量

%%
%迭代前数据处理(组好补零矩阵)

%把学生课表汇成一个矩阵
classes = cell(N, 1);
for i = 1:N
    b1 = [0]; b2 = [0, 0]; b3 = [0, 0, 0]; b4 = [0, 0, 0, 0]; b5 = [0, 0, 0, 0, 0];
    classes{i} = students{i}.cls(1, :);
    if length(classes{i}) == 1;
        classes{i} = [classes{i}, b5];
    elseif length(classes{i}) == 2;
        classes{i} = [classes{i}, b4];
    elseif length(classes{i}) == 3;
        classes{i} = [classes{i}, b3];
    elseif length(classes{i}) == 4;
        classes{i} = [classes{i}, b2];
    else length(classes{i}) == 5;
        classes{i} = [classes{i}, b1];
    end
end
classes = cell2mat(classes);        %此处的classes为所有同学课表组成的补0矩阵（对空课表进行了补0操作）
classes_copy = classes;             %复制一个原classes


%将所有学生对应的课时时长补零，组成一个矩阵
times = cell(N, 1);
for i = 1:N
    b1 = [0]; b2 = [0, 0]; b3 = [0, 0, 0]; b4 = [0, 0, 0, 0]; b5 = [0, 0, 0, 0, 0];
    times{i} = students{i}.cls(2, :);
    if length(times{i}) == 1;
        times{i} = [times{i}, b5];
    elseif length(times{i}) == 2;
        times{i} = [times{i}, b4];
    elseif length(times{i}) == 3;
        times{i} = [times{i}, b3];
    elseif length(times{i}) == 4;
        times{i} = [times{i}, b2];
    else length(times{i}) == 5;
        times{i} = [times{i}, b1];
    end
end
times = cell2mat(times);             %此处的b为所有同学上课时间组成的补0矩阵（对空课表进行了补0操作）
times_copy = times;                 %复制一个原times
clear b1 b2 b3 b4 b5        %去掉多余的变量



%%
%开始迭代      
timing = min(Time);          %设置一个初始时间，后面的Time_out里面的begintime和endtime都以timing=0为基准计时 
nn = 2;                      %记录下一次跳跃取最小值应该去倒数第几个
begintime = [];              %begintime可根据后面的endtime减去对应的课长时间可得
endtime = zeros(N, 6);       %endtime在完成的时候记录
AAAA = ones(N, 6);
isn = zeros(N, 6);
tf = 0;
now_class = [];
now_time = [];
num11 = 0; num22 = 0; num33 = 0; num44 = 0; num55 = 0; num66 = 0; 

while tf ~= 1;
    i = 1;                   %这里设定i一直为1，原因是我们对class和time进行推进，即最前排的为正在进行的
    
    for j = 1:N ;            %此处的time_slice为对第i阶段进行的课程切片，便于下一步进行课程数量统计，判断teacher是否足够
    	class_slice(j) = classes(j, i) ;  
    end
    for k = 1:N;             %此处的time_slice为对第i阶段进行的课程时间切片，便于下一步进行课程时间统计
        time_slice(k) = times(k, i);
    end
    %对这一阶段的各个科目的人数进行统计
    num1 = length(find(class_slice==1)); num2 = length(find(class_slice==2)); num3 = length(find(class_slice==3));   
    num4 = length(find(class_slice==4)); num5 = length(find(class_slice==5)); num6 = length(find(class_slice==6));
    %有哪几个人要上对应的科目
    who1 = find(class_slice==1); who2 = find(class_slice==2); who3 = find(class_slice==3);      
    who4 = find(class_slice==4); who5 = find(class_slice==5); who6 = find(class_slice==6); 
    
    %对比人数，判断逻辑
    if timing >= Time(1,1)
        if num11 < teacher(1)
            if num1 <= teacher(1)
                for k = who1
                    now_class(k) = 1;
                    now_time(k) = time_slice(k);
                end
            else
                who1 = who1(1:teacher(1));
                for k = who1
                    now_class(k) = 1;
                    now_time(k) = time_slice(k);
                end
            end
        end
    end
    
    if timing >= Time(2,1)
        if num22 < teacher(2)
            if num2 <= teacher(2)
                for k = who2
                    now_class(k) = 2;
                    now_time(k) = time_slice(k);
                end
            else
                who2 = who2(1:teacher(2));
                for k = who2
                    now_class(k) = 2;
                    now_time(k) = time_slice(k);
                end
            end
        end
    end
    
    if timing >= Time(3,1)
        if num33 < teacher(3)
            if num3 <= teacher(3)
                for k = who3
                    now_class(k) = 3;
                    now_time(k) = time_slice(k);
                end
            else
                who3 = who3(1:teacher(3));
                for k = who3
                    now_class(k) = 3;
                    now_time(k) = time_slice(k);
                end
            end
        end
    end
    
    if timing >= Time(4,1)
        if num44 < teacher(4)
            if num4 <= teacher(4)
                for k = who4
                    now_class(k) = 4;
                    now_time(k) = time_slice(k);
                end
            else
                who4 = who4(1:teacher(4));
                for k = who4
                    now_class(k) = 4;
                    now_time(k) = time_slice(k);
                end
            end
        end
    end
    
    if timing >= Time(5,1)
        if num55 < teacher(5)
            if num5 <= teacher(5)
                for k = who5
                    now_class(k) = 5;
                    now_time(k) = time_slice(k);
                end
            else
                who5 = who5(1:teacher(5));
                for k = who5
                    now_class(k) = 5;
                    now_time(k) = time_slice(k);
                end
            end
        end
    end
    
    if timing >= Time(6,1)
        if num66 < teacher(6)
            if num6 <= teacher(6)
                for k = who6
                    now_class(k) = 6;
                    now_time(k) = time_slice(k);
                end
            else
                who6 = who6(1:teacher(6));
                for k = who6
                    now_class(k) = 6;
                    now_time(k) = time_slice(k);
                end
            end
        end
    end
    
    now_class = [now_class , zeros(1,N-length(now_class))];     % 补零操作
    now_time = [now_time , zeros(1,N-length(now_time))];
   
    %人数分析后，此时class_slice中对应0的位置即正在进行class的，now_time为其距离ending的时间
    classfree_site = find(now_class == 0);   %classfree_site表示正在空闲的位置
    now_time(find(now_time == 0)) = NaN;    %便于下一行找出least_time,把为0的值变为NaN
    now_class(find(now_class == 0)) = NaN;
    least_time = min(now_time);             %找出endtime最小的值
    if numel(find(isnan(now_class))) == length(students)
        paitime = sort(Time);
        least_time = paitime(nn) - timing;
        nn = nn + 1;
    end
    timing = timing + least_time;           %记录上述的least_time，表示这段时间过去了
    now_time(find(~isnan(now_class))) = now_time(find(~isnan(now_class))) - least_time;       %上一行表示时间过去了，那对应的classing的时间自然都要减去least_time
    
    %以下两个数据在下一步进行更新class-time矩阵时要用到
    classend_site = find(now_time == 0);     %classend_site表示这一时刻endclass的位置  

    %更新课程表和时间表
    for m = classend_site
        %找出classend对应的位置，下面会记录ending_time
        cl = class_slice(m);
        a = find(classes_copy(m, :) == cl);      %结束的这门课在m中是第几门
        %此操作为结束的一栏class向前推进一格
        classes(m ,1) = classes(m ,2);   
        classes(m ,2) = classes(m ,3);
        classes(m ,3) = classes(m ,4);
        classes(m ,4) = classes(m ,5);
        classes(m ,5) = classes(m ,6);
        classes(m ,6) = 0;
        endtime(m, a) = timing ;         %记录对应课的ending_time
         %此操作为结束的一栏time向前推进一格
        for j = classfree_site
        	now_time(j) = time_slice(j);  %给没上课的位置记录原本的时间
        end
        for j = 1:N
            times(j, 1) = now_time(j);
        end
        times(m ,1) = times(m ,2);
        times(m ,2) = times(m ,3);
        times(m ,3) = times(m ,4);
        times(m ,4) = times(m ,5);
        times(m ,5) = times(m ,6);
        times(m ,6) = 0;
        now_time(m) = times(m, 1);
        for i = 1:N
            if classes(i, 1)==0 & classes(i, 2)==0 & classes(i, 3)==0 & classes(i, 4)==0 & classes(i, 5)==0 & classes(i, 6)==0 
            	classes(i, 1) = NaN; classes(i, 2) = NaN; classes(i, 3) = NaN;
                classes(i, 4) = NaN; classes(i, 5) = NaN; classes(i, 6) = NaN;
                times(i, 1) = NaN; times(i, 2) = NaN; times(i, 3) = NaN;
                times(i, 4) = NaN; times(i, 5) = NaN; times(i, 6) = NaN;
            end
        end
    end
	isn = isnan(classes);
    tf = isequal(AAAA,isn);
    
    for q = classend_site
        now_class(classend_site) = 0;
        now_time(classend_site) = 0;
    end
    num11 = length(find(now_class==1)); num22 = length(find(now_class==2)); num33 = length(find(now_class==3));   %其他人结束时，还在上课的人有几个
    num44 = length(find(now_class==4)); num55 = length(find(now_class==5)); num66 = length(find(now_class==6));
end   
%找出对应的begintime和endtime    
endtime(find(endtime == 0)) = NaN;
begintime = endtime - times_copy;
begintime(find(isnan(begintime)==1)) = 0;
endtime(find(isnan(endtime)==1)) = 0;

%把多余的变量删除，简洁！
% clear AAAA a cl class_slice classend_site classfree_site isn i j k least_time m now_class now_time tf time_slice 
% clear classes times
% clear num1 num2 num3 num4 num5 num6 who1 who2 who3 who4 who5 who6

%%输出结果Time_out
Time_out = cell(1, N);
for i = 1:N
    Time_out{1, i} = [classes_copy(i, :); begintime(i, :); endtime(i, :)]; 
    a = Time_out{1,i}';     %转置，为了删掉全为0的列
    a(all(a==0,2),:)=[];    %删掉全为0的行
    a = a';                 %再转置回来
    Time_out{1, i} = a;
end

end
