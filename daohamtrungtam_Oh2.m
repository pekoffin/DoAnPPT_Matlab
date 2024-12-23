function result = daohamtrungtam_Oh2(x_data, y_data, h, x_interpolate)
    index = find(x_data == x_interpolate);
    result = (y_data(index + 1) - 2 * y_data(index) + y_data(index - 1)) / h^2;
end