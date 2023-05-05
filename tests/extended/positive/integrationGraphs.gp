# set global data variables
list assignment_names = ["hello_world", "scanner", "homework3"]; 
list assignment_id = [13, 12, 23]; 
int name_ix = 0; 
int id_ix = 1; 
list assignments = [assignment_names, assignment_id];

# load data
# student 1
node<list> steven_oh; 
steven_oh.name = "1352"; 
steven_oh.data = [95, 90, 99];
steven_oh.flag = false; 

# student 2
node<list> claudia_aranda_barrios; 
claudia_aranda_barrios.name = "1352"; 
claudia_aranda_barrios.data = [91, 12, 95];
claudia_aranda_barrios.flag = false; 

# student 3
node<list> aidan_barg; 
aidan_barg.name = "1352"; 
aidan_barg.data = [95, 90, 100];
aidan_barg.flag = false; 

# student 4
node<list> abby_larson; 
abby_larson.name = "1352"; 
abby_larson.data = [44, 3, 98];
abby_larson.flag = false; 

edge<list> partnership1 = abby_larson -> claudia_aranda_barrios; 
partnership1.weight = 3; 
edge<list> partnership2 = aidan_barg -> steven_oh; 
partnership2.weight = 2; 

graph<list> students; 
students.addNode(steven_oh); 
students.addNode(claudia_aranda_barrios); 
students.addNode(abby_larson); 
students.addNode(aidan_barg); 
students.addEdge(partnership1); 
students.addEdge(partnership2); 

int assignmentIndex(int assignment_id) {

    # find assignment index 
    list assignment_ids = array_get(assignments, id_ix);
    int num_assigments = array_len(assignments);
    int i = 0;    
    int index = -1; 
    for (i = 0; i < num_assigments; i = i + 1) {
        int id = array_get(assignment_ids, i);
        if (assignment_id == id) {
            index = i; 
        }
    }

    return index;
}

int assignment_id_num = 13; 
int assignment_index = assignmentIndex(assignment_id_num); 
printf("assignment we are averaging is assignment with name: ");
string assignment_name = array_get(assignment_names, assignment_index);
printf(assignment_name);
printf("we will now find the average score");
printf("The average score for assignment is: ");


list allStudents = students.getAllNodes(); 
int num_students = array_len(allStudents);
int i = 0;   
int sum = 0;  
for (i = 0; i < num_students; i = i + 1) {
    int curr = sum; 
    node<list> curr_student = array_get(allStudents, i);
    list score_list = curr_student.data;
    int score = array_get(score_list, assignment_index);
    sum = curr + score;
}
int average = sum / num_students; 

printf(average);
