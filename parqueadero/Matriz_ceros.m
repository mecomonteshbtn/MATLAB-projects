%Crea Matriz en ceros

clc
i=0;
k=0;
Parq=0;
for i=1:1:20
    for k=1:1:20
        Parq(i,k)=0;
    end
end
save Parq
disp('La matriz se creo satisfactoriamente')
pause(3)