function result = daohamtien_Oh2(x_data, y_data, h, order, x_value)
    index = find(x_data == x_value); 
    n = length(x_data);

    if isempty(index)
        error('Giá trị cần tính đạo hàm không nằm trong dữ liệu x.');
    end

    if index == 1
        result = (y_data(index + 2) - 2 * y_data(index + 1) + y_data(index)) / h^order;
    elseif index == n
        result = (y_data(index) - 2 * y_data(index - 1) + y_data(index - 2)) / h^order;
    else
        result = (y_data(index + 1) - 2 * y_data(index) + y_data(index - 1)) / h^order;
    end
end