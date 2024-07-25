function color = get_planet_color(planet_name)
    switch planet_name
        case 'Mercury'
            color = [153, 153, 153];
        case 'Venus'
            color = [255, 153, 51];
        case 'Earth'
            color = [0, 128, 255];
        case 'Mars'
            color = [255, 0, 0];
        otherwise
            color = [255, 255, 255]
    end
end