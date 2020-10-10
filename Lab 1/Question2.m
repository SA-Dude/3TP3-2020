% John Wyeth
% 400171677

COLUMNS = 11;
ROWS = 20;
LAB_AVG = 31.25;
MIDTERM_AVG = 50;
EXAM_AVG = 16.6667;

% (b)
average_lab_marks = grade_average(csvread("course_grades_2020.csv", 1, 0, [1, 0, ROWS, COLUMNS]), 0, [2:5]);
overall_average_lab_mark = mean(average_lab_marks(:,2));
disp("Overall average lab mark: " + overall_average_lab_mark);

average_exam_marks = grade_average(csvread("course_grades_2020.csv", 1, 5, [1, 5, ROWS, COLUMNS]), 0, [7:12]);
overall_average_exam_mark = mean(average_exam_marks(:,2));
disp("Overall average exam mark: " + overall_average_exam_mark);

% (c)
student_IDs = average_lab_marks(:,1);
average_midterm_marks = grade_average(csvread("course_grades_2020.csv", 1, 4, [1, 4, ROWS, COLUMNS]), 0, [6:6]);
EXAM_WEIGHT = 0.4;
LAB_WEIGHT = 0.3;
MIDTERM_WEIGHT = 0.3;

final_grades = ( LAB_WEIGHT.*(average_lab_marks(:,2) / LAB_AVG) ) + ( MIDTERM_WEIGHT.*(average_midterm_marks(:,2) / MIDTERM_AVG) ) + ( EXAM_WEIGHT.*(average_exam_marks(:,2) / EXAM_AVG) );
[sorted_final_grades, sortIndex] = sort(final_grades, 'descend');
matching_student_IDs = student_IDs(sortIndex);
final_everything = horzcat(matching_student_IDs, sorted_final_grades);

figure('Name','Sorted Final Grades (without student IDs)');
plot(final_everything(:,2), 'o');
