
% Question 2 (a)
function average_grade_matrix = grade_average(student_grade_matrix, max_grade, column_indicies)
    [row, column] = size(column_indicies);
    SIZE = column - row;
    % Sanity check
    if (SIZE < 0)
       disp("Invalid Column Indicies");
       return;
    end
    
    selected_grade_matrix = student_grade_matrix(:,2:column + 1);
    student_number_matrix = student_grade_matrix(:,1,:);
    average_grade_matrix = horzcat(student_number_matrix, mean(selected_grade_matrix, 2));
end
