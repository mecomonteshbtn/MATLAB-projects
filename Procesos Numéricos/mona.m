[L,P]=mona(X,Y)
orden=length(X);
n=orden-1;
L= zeros(orden,orden);

for k=1:n+1
product=Y(k);
	for i=1:n+1
		if i~=k
		product=conv(product,poly(X(i)))/(X(k)-X(i));
		end
		z=1
	end
	L(k,:)=product;
end
P=0
	for k=1:n+1
	P=L(k,:)+P;
	end
