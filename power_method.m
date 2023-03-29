function [x,count,runtime,c1,x1] =power_method(P,d,u) %P是邻接矩阵；a是初始向量; d是阻尼因子; u是停机精度
[n,n]=size(P);
a=ones(n,1)/n;  %初始化向量x
a=a/norm(a);
z=(d*P'+(1-d)/n*ones(n))*a;
t=norm(z-a);
z=z/norm(z);

count=0;
c1(1,1)=0;
x1=[];
x1(1,1)=t;
%count1=[];
tim=tic;

while t>u
    x=z;
    z=(d*P'+(1-d)/n*ones(n))*x;
    t=norm(z-x);
    z=z/norm(z);

    count=count+n;
    c1(1,count/n)=count;
    x1(1,count/n)=t;
end
runtime=toc(tim);
%plot(c1,x1,'r','linewidth',2,'marker','*');
%xlabel('迭代次数');
%ylabel('残量');
end