function A = create_frame(frame_number, total_frames)
    planets = [
        {"Mercury", 0.39, 0.24};
        {"Venus", 0.72, 0.62};
        {"Earth", 1.00, 1.00};
        {"Mars", 1.52, 1.88};
    ];
    image_size = [800, 800, 3];
    A = uint8(zeros(image_size));
    sun_position = [image_size(1)/2, image_size(2)/2];
    A = draw_circle(A, sun_position, 20, [255, 255, 0]);
    for i = 1:size(planets, 1)
        planet_name = planets{i, 1};
        distance_from_sun = planets{i, 2};
        orbital_period = planets{i, 3};
        angle = 2 * pi * (frame_number / total_frames) / orbital_period;
        x = sun_position(1) + distance_from_sun * cos(angle) * 100;
        y = sun_position(2) + distance_from_sun * sin(angle) * 100;
        A = draw_circle(A, [x, y], 5, get_planet_color(planet_name));
    end
end