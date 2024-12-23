function result = daohamtien_Oh(x_data, y_data, h, order, x_value)
    index = find(x_data == x_value); 
    n = length(x_data);

    if isempty(index)
        error('Giá trị cần tính đạo hàm không nằm trong dữ liệu x.');
    end

    if index == 1
        result = (-3 * y_data(index) + 4 * y_data(index + 1) - y_data(index + 2)) / (2 * h^order);
    elseif index == n
        result = (3 * y_data(index) - 4 * y_data(index - 1) + y_data(index - 2)) / (2 * h^order);
    else
        result = (y_data(index + 1) - y_data(index - 1)) / (2 * h^order);
    end
end