x=1:10;
y=x.*x;
X=[y;x]

[U S V]=svd(X)

SS=[160.2952 0 0 0 0 0 0 0 0 0;0 0 0 0 0 0 0 0 0 0]

A=U*SS*V'

figure;plot(A(2,:),A(1,:));grid on; hold on;plot(X(2,:),X(1,:),'g')

A=U*SS*V'

figure;plot(A(2,:),A(1,:));grid on; hold on;plot(X(2,:),X(1,:),'g')
for n=1:10;for m=1:10; if V(m,n)<0;VV(m,n)=0;else;VV(m,n)=V(m,n);end;end;end

plot(A(2,:),A(1,:),'*');grid on

for n=1:10;for m=1:10; if V(m,n)>0;VV(m,n)=0;else;VV(m,n)=V(m,n);end;end;end
B=U*S*VV'

plot(B(2,:),B(1,:),'r')

for n=1:10;for m=1:10; if V(m,n)<0;WW(m,n)=0;else;WW(m,n)=V(m,n);end;end;end
C=U*S*WW'


plot(C(2,:),C(1,:),'m*')