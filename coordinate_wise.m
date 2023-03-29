function [x,count,runtime,c1,r1] =coordinate_wise(P,d,u) 
n = size(P);
count=0;
a=ones(n,1)/n; 
z=(d*P'+(1-d)/n*ones(n))*a;
h=a'*z;       
h=h/norm(a)^2;
z=z/norm(a);
x=a/norm(a);
r=z-h*a;      
t=norm(z-x);

r1=[];      
c1=[];
tic;

while t>u   
  [~,q]=max(r);  
    for i =1:n
        if i==q
        x(i)=z(i);
        else
        x(i)=a(i);
        end
    end
    
    t=x(q)-a(q);
    z=z+d*t*P(q,:)'+(1-d)*t*ones(n,1)/n;
    m=sqrt(1+2*t*a(q)+t^2);
    h=h+t*x(q)+d*t*a'*P(q,:)'+d*t^2*P(q,q)+(1-d)*t*a'*ones(n,1)/n+(1-d)*t^2/n;
    
    h=h/m^2;
    z=z/m;
    x=x/m;
    
    r=z-h*x;
    t=norm(x-a);
   
    a=x; 
    count=count+1;
    c1(1,count)=count;
    r1(1,count)=norm(r);
end
runtime=toc;
end
    
    



