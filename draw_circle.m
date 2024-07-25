function A = draw_circle(A, center, radius, color)
    [rows, columns, ~] = size(A);
    [gridX, gridY] = meshgrid(1:columns, 1:rows);
    distance = sqrt((gridX - center(1)).^2 + (gridY - center(2)).^2);
    mask = distance <= radius;
    for channel = 1:3
        A_channel = A(:,:,channel);
        A_channel(mask) = color(channel);
        A(:,:,channel) = A_channel;
    end
end