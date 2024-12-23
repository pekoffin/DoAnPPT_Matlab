function result = daohamtrungtam_Oh(x_data, y_data, h, x_interpolate)
    index = find(x_data == x_interpolate);
    result = (y_data(index + 1) - y_data(index - 1)) / (2 * h);
end
