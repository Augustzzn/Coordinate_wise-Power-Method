f=cell2mat(struct2cell(load('C:\Users\HP\Desktop\wb-cs-stanford.mat')));
P=f.A;

[n,n]=size(P);
pn=sum(P,2);
for i=1:n
    if pn(i)==0
        P(i,:)=ones(1,n)/n;
    else
        P(i,:)=P(i,:)/pn(i);
    end
end

d=0.95;
u=0.00001;

[x,c,r,c1,r1]=coordinate_wise(P,d,u);
[xx,cc,rr,cc1,rr1]=power_method(P,d,u);

plot(c1,r1,'b',cc1,rr1,'r--','linewidth',2.5);
xlabel('number of multiplications with vectors');
ylabel('residual');
legend('Coordinate_wise Power Method','Traditional Power Method');
title('wb-cs-stanford  d=0.95');
