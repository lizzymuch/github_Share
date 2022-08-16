%**************************************************************************
% 32种声音，静音开始静音结束
% clear;clc;
X=[
1500	20	1300	10	;
1380	20	1180	10	;
1100	20	900	10	;
480	20	280	10	;
3478	20	3278	10	;
3358	20	3158	10	;
3078	20	2878	10	;
2458	20	2258	10	;
7900	20	7700	10	;
7780	20	7580	10	;
7500	20	7300	10	;
6880	20	6680	10	;
17789	20	17589	10	;
17669	20	17469	10	;
17389	20	17189	10	;
16769	20	16569	10	;

];% X的三列分别为offduraion静音总时长,offmin静音最小值,offmax静音最大值,SNDCYCLES响几声
arrayInd = 15;
arrayInd = arrayInd + 1;% Matlab的下标比C语言多1
duration=X(arrayInd,1);%静音总时长
offtime=[X(arrayInd,2),X(arrayInd,3)];%单次静音的时间范围（单位：毫秒）
num=X(arrayInd,4);%静音次数

TAB8=[];
for k=1:500000000
    off8=randi(offtime,1,num);
    on8=duration-sum(off8);
    if on8>0
        TAB8=[TAB8;on8,off8];
    end
end
id=0:size(TAB8,1)-1;
Y=[id',TAB8];

