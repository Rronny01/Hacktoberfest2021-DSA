
y=imread('F:\matlab\bright.jpg');

[m,n,num_colors]=size(y);
	if num_colors> 1;
		x1=rgb2gray(y);
		x=double(x1);
	else
		x=double(y);
	end

counter=zeros(256,1);
for i=1:size(x,1);
		for j=1:size(x,2)
		for k=0:255
			if(x(i,j)==k)
		counter(k+1)=counter(k+1)+1;
	end
end
end
end

bar(counter,0.00001),title('HISTOGRAM');

