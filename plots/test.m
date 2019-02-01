x = 1:5;
y = [1,1,1,1,1];
z = [2,2,2,2,2];
a = [3,3,3,3,3];
b = [4,4,4,4,4];
c = [5,5,5,5,5];
h(1)=figure;
hold on
plot(x,y)
% figure;
plot(x,z)
hold off
h(2)=figure;
plot(x,a)
h(3)=figure;
plot(x,b)
h(4)=figure;
plot(x,c)
for k=1:4
  saveas(h(k),sprintf('figure_%d.jpg',k))
end