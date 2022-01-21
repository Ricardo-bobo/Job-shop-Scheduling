function [Time_out,timing] = project(student, teacher, Time)
%%
%��ʼ���ݼ�����Ԥ����
N = length(student);

for i = 1:N
    class_num = 1:length(student{i}.cls(1, :));    %Ϊ�˺���ȽϺϲ����ļ���
    [class_resort, class_site] = unique(student{i}.cls(1, :), 'first');
    class_site = class_site';                      %��λ��������ת��Ϊ������
    time_resort = student{i}.cls(2, class_site);
    merge_site = setdiff(class_num, class_site);   %merge_site��ʾ�ļ������ݱ��ϲ���
    for j = merge_site
        classes = student{i}.cls(1, j);            %���ϲ����ݶ�Ӧ�ĸ�class
        times = student{i}.cls(2, j);              %���ϲ����ݶ�Ӧ��time
        sites = find(class_resort == classes);
        time_resort(sites) = time_resort(sites) + times;
    end
    %����������µ����ݣ�����ע���Ѿ����¶�����һ��students,֮�������������students
    students{i}.name = student{i}.name;
    students{i}.cls(1, :) = class_resort;
    students{i}.cls(2, :) = time_resort;
end
% clear class_num class_resort class_site merge_site times classes sites time_resort       %ȥ������ı���

%%
%����ǰ���ݴ���(��ò������)

%��ѧ���α���һ������
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
classes = cell2mat(classes);        %�˴���classesΪ����ͬѧ�α���ɵĲ�0���󣨶Կտα�����˲�0������
classes_copy = classes;             %����һ��ԭclasses


%������ѧ����Ӧ�Ŀ�ʱʱ�����㣬���һ������
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
times = cell2mat(times);             %�˴���bΪ����ͬѧ�Ͽ�ʱ����ɵĲ�0���󣨶Կտα�����˲�0������
times_copy = times;                 %����һ��ԭtimes
clear b1 b2 b3 b4 b5        %ȥ������ı���



%%
%��ʼ����      
timing = min(Time);          %����һ����ʼʱ�䣬�����Time_out�����begintime��endtime����timing=0Ϊ��׼��ʱ 
nn = 2;                      %��¼��һ����Ծȡ��СֵӦ��ȥ�����ڼ���
begintime = [];              %begintime�ɸ��ݺ����endtime��ȥ��Ӧ�Ŀγ�ʱ��ɵ�
endtime = zeros(N, 6);       %endtime����ɵ�ʱ���¼
AAAA = ones(N, 6);
isn = zeros(N, 6);
tf = 0;
now_class = [];
now_time = [];
num11 = 0; num22 = 0; num33 = 0; num44 = 0; num55 = 0; num66 = 0; 

while tf ~= 1;
    i = 1;                   %�����趨iһֱΪ1��ԭ�������Ƕ�class��time�����ƽ�������ǰ�ŵ�Ϊ���ڽ��е�
    
    for j = 1:N ;            %�˴���time_sliceΪ�Ե�i�׶ν��еĿγ���Ƭ��������һ�����пγ�����ͳ�ƣ��ж�teacher�Ƿ��㹻
    	class_slice(j) = classes(j, i) ;  
    end
    for k = 1:N;             %�˴���time_sliceΪ�Ե�i�׶ν��еĿγ�ʱ����Ƭ��������һ�����пγ�ʱ��ͳ��
        time_slice(k) = times(k, i);
    end
    %����һ�׶εĸ�����Ŀ����������ͳ��
    num1 = length(find(class_slice==1)); num2 = length(find(class_slice==2)); num3 = length(find(class_slice==3));   
    num4 = length(find(class_slice==4)); num5 = length(find(class_slice==5)); num6 = length(find(class_slice==6));
    %���ļ�����Ҫ�϶�Ӧ�Ŀ�Ŀ
    who1 = find(class_slice==1); who2 = find(class_slice==2); who3 = find(class_slice==3);      
    who4 = find(class_slice==4); who5 = find(class_slice==5); who6 = find(class_slice==6); 
    
    %�Ա��������ж��߼�
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
    
    now_class = [now_class , zeros(1,N-length(now_class))];     % �������
    now_time = [now_time , zeros(1,N-length(now_time))];
   
    %���������󣬴�ʱclass_slice�ж�Ӧ0��λ�ü����ڽ���class�ģ�now_timeΪ�����ending��ʱ��
    classfree_site = find(now_class == 0);   %classfree_site��ʾ���ڿ��е�λ��
    now_time(find(now_time == 0)) = NaN;    %������һ���ҳ�least_time,��Ϊ0��ֵ��ΪNaN
    now_class(find(now_class == 0)) = NaN;
    least_time = min(now_time);             %�ҳ�endtime��С��ֵ
    if numel(find(isnan(now_class))) == length(students)
        paitime = sort(Time);
        least_time = paitime(nn) - timing;
        nn = nn + 1;
    end
    timing = timing + least_time;           %��¼������least_time����ʾ���ʱ���ȥ��
    now_time(find(~isnan(now_class))) = now_time(find(~isnan(now_class))) - least_time;       %��һ�б�ʾʱ���ȥ�ˣ��Ƕ�Ӧ��classing��ʱ����Ȼ��Ҫ��ȥleast_time
    
    %����������������һ�����и���class-time����ʱҪ�õ�
    classend_site = find(now_time == 0);     %classend_site��ʾ��һʱ��endclass��λ��  

    %���¿γ̱��ʱ���
    for m = classend_site
        %�ҳ�classend��Ӧ��λ�ã�������¼ending_time
        cl = class_slice(m);
        a = find(classes_copy(m, :) == cl);      %���������ſ���m���ǵڼ���
        %�˲���Ϊ������һ��class��ǰ�ƽ�һ��
        classes(m ,1) = classes(m ,2);   
        classes(m ,2) = classes(m ,3);
        classes(m ,3) = classes(m ,4);
        classes(m ,4) = classes(m ,5);
        classes(m ,5) = classes(m ,6);
        classes(m ,6) = 0;
        endtime(m, a) = timing ;         %��¼��Ӧ�ε�ending_time
         %�˲���Ϊ������һ��time��ǰ�ƽ�һ��
        for j = classfree_site
        	now_time(j) = time_slice(j);  %��û�Ͽε�λ�ü�¼ԭ����ʱ��
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
    num11 = length(find(now_class==1)); num22 = length(find(now_class==2)); num33 = length(find(now_class==3));   %�����˽���ʱ�������Ͽε����м���
    num44 = length(find(now_class==4)); num55 = length(find(now_class==5)); num66 = length(find(now_class==6));
end   
%�ҳ���Ӧ��begintime��endtime    
endtime(find(endtime == 0)) = NaN;
begintime = endtime - times_copy;
begintime(find(isnan(begintime)==1)) = 0;
endtime(find(isnan(endtime)==1)) = 0;

%�Ѷ���ı���ɾ������࣡
% clear AAAA a cl class_slice classend_site classfree_site isn i j k least_time m now_class now_time tf time_slice 
% clear classes times
% clear num1 num2 num3 num4 num5 num6 who1 who2 who3 who4 who5 who6

%%������Time_out
Time_out = cell(1, N);
for i = 1:N
    Time_out{1, i} = [classes_copy(i, :); begintime(i, :); endtime(i, :)]; 
    a = Time_out{1,i}';     %ת�ã�Ϊ��ɾ��ȫΪ0����
    a(all(a==0,2),:)=[];    %ɾ��ȫΪ0����
    a = a';                 %��ת�û���
    Time_out{1, i} = a;
end

end