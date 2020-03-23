function [eje_rot,angulo] = sel_vector(vectores,valores)

eje_rot=vectores(3,:);
angulo=angle(vectores(1,:));