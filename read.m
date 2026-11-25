coords = readmatrix("Clark_Y_Coordinates.txt");

x = coords(:,1);
y = coords(:,2);

% Close the shape if the first and last points differ
if x(1) ~= x(end) || y(1) ~= y(end)
    x(end+1) = x(1);
    y(end+1) = y(1);
end

plot(x,y)
axis equal
grid on
xlabel("X")
ylabel("Y")
title("Shape")