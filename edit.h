#ifndef EDIT_H
#define EDIT_H

#define MAX_LINES 128
#define MAX_CHARS 128

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

// enum values that represent possible actions a line must undergo
enum action {
    EMPTY,
    INSERTION,
    SUBSTITUTION,
    DELETION,
    NO_OP
};

// Compute the edit path from file1 to file2
int edit_path(char*, char*);

// Finds the minimum of 3 numbers
int min_3(int, int, int);

// Strip trailing newline from line
void strip(char*);

// Counts the number of lines in a file
int line_count(char*);

// Makes a map of unique indices of lines to every unique line
// in both the files
int make_map(FILE*, FILE*, int [], int [], char [][MAX_CHARS]);

// Returns the unique index of a line in the map
int line_index(char*, char[][MAX_CHARS], int);

/* Print the minimum edit distance
(dynamic programming) table */
void print_dp(int, int, int*, int*, int*);

/* Compute the edit distance (Levenshtein Distance) and 
fills the matrix */
int LevenshteinDistance(int*, int *, int, int, int*);


int reconstruct(int *min_dist, int flines_1, int flines_2, int *operations, int steps) {
    // Reconstructing the path

    int row = flines_1-1;
    int col = flines_2-1;

    int step = 0;

    while (1) {

        // If upper left cell exists
        if (row > 0 && col > 0) {
            // Compare top, left and upper left 

            // If top is the smallest of the 3
            if (*(min_dist + (row-1)*flines_2 + col) <  *(min_dist + (row-1)*flines_2 + col-1) \
            && *(min_dist + (row-1)*flines_2 + col) <  *(min_dist + row*flines_2 + col-1)) {
                // Record a deletion
                operations[step] = DELETION;
                // Increment the step
                ++step;
                // Move up one cell
                --row;
                continue;
            }

            // If left is the smallest of the 3
            else if (*(min_dist + row*flines_2 + col-1) < *(min_dist + (row-1)*flines_2 + col-1)) {
                // Record an insertion
                operations[step] = INSERTION;
                // Increment the step
                ++step;
                // Move up one cell
                --col;
                continue;
            }

            // If diagonally up is the smallest
            else {

                // If the value of current cell = upper left
                if (*(min_dist + row*flines_2 + col) == *(min_dist + (row-1)*flines_2 + col-1)) {
                    // Record an empty operation
                    operations[step] = EMPTY;
                    // Account for empty steps
                    ++steps;
                    // Increment the step
                    ++step;
                    // Move diagonally up one cell
                    --row;
                    --col;
                    continue;

                }
                    
                // If they are unequal
                else {
                    // Record a substitution
                    operations[step] = SUBSTITUTION;
                    // Increment the step
                    ++step;
                    // Move diagonally up one cell
                    --row;
                    --col;
                    continue;
                }
                    

            }


        }

        // If only upper cells exist
        else if (row > 0) {
            // Record a deletion
            operations[step] = DELETION;
            // Increment the step
            ++step;
            // Move up one cell
            --row;
            continue;
        }
        
        // If only left cells exist
        else if (col > 0) {
            // Record an insertion
            operations[step] = INSERTION;
            // Increment the step
            ++step;
            // Move left one cell
            --col;
            continue;
        }

        else {
            break;
        }

    }
    return steps;
}

int min_3(int a, int b, int c) {
    if (a < b && a < c) {
        return a;
    }

    if (b < c) {
        return b;
    }

    return c;
}


void strip(char *s) {
    if (s[strlen(s)-1] == '\n') {
        s[strlen(s)-1] = 0;
    }
}

void print_dp(int flines_1, int flines_2, int *f1_map, int *f2_map, int *min_dist) {
    printf("  ");
    for (int i=0; i<flines_2; ++i) {
        printf("%d ", f2_map[i]);
    }
    printf("\n");

    for (int i=0; i<flines_1; ++i) {
        printf("%d ", f1_map[i]);
        for (int j=0; j<flines_2; ++j) {
            printf("%d ",*(min_dist + i*flines_2 + j)); 
        }
        printf("\n");
    }
}

// The total number of lines in each file
int line_count(char *fname) {
    FILE *file = fopen(fname, "r");
    
    if (!file) {
        //printf("Error in opening file.\n");
        return -1;
    }

    int ch;
    int cnt=0;

    while ((ch = fgetc(file)) != EOF) {
        if (!cnt) {
            cnt = 1;
        }
        if ((char) ch == '\n') ++cnt;
    }

    fclose(file);

    return cnt;
}

// Returns the index of a line in a file 
int line_index(char *line, char map[][MAX_CHARS], int unique_lines) {
    for (int i=0; i<unique_lines; ++i) {
        // If the line matches a line in the map
        if (!strcmp(line, map[i])) {
            return i;
        }
    }

    return -1;
}

// Makes a map from numbers (indices) to lines
int make_map(FILE *f1, FILE *f2, int f1_map[], int f2_map[], char map[][MAX_CHARS]) {

    // Map the lines in each file to a global index
    // for all unique lines
    char line[MAX_CHARS];

    int ind, i=0;
    int unique_lines = 0;

    // File 1
    while (fgets(line, MAX_CHARS, f1) != NULL) {
        // Remove trailing whitespace
        strip(line);

        // Find the index of the line number in common set
        // of unique lines in both files
        ind = line_index(line, map, unique_lines);

        // If that line has been read already
        if (ind >= 0) {
            f1_map[i] = ind;
        }

        else {
            f1_map[i] = unique_lines;
            strcpy(map[unique_lines], line);
            ++unique_lines;
        }
        ++i;
    }

    i=0;
    // File 2
    while (fgets(line, MAX_CHARS, f2) != NULL) {
        // Remove trailing whitespace
        strip(line);

        // Find the index of the line number in common set
        // of unique lines in both files
        ind = line_index(line, map, unique_lines);

        // If that line has been read already
        if (ind >= 0) {
            f2_map[i] = ind;
        }

        else {
            f2_map[i] = unique_lines;
            strcpy(map[unique_lines], line);
            ++unique_lines;
        }
        ++i;
    }

    return unique_lines;
}

int LevenshteinDistance(int *f1_map, int *f2_map, int flines_1, int flines_2, int *min_dist) {
    // All elements are initialised to 0

    // First row, transformation by adding all elements
    // to empty string
    for (int i=1; i<flines_2; ++i) {
        *(min_dist + i) = i; 
    }


    // First column, transformation by deleting 
    // all elements to form empty string
    for (int i=1; i<flines_1; ++i) {
        *(min_dist + i*flines_2) = i; 
    }

    // Remaining elements
    int sub_cost;

    for (int i=1; i<flines_1; ++i) {
        for (int j=1; j<flines_2; ++j) {
            if (f1_map[i] == f2_map[j]) {
                sub_cost = 0;
            }
            else {
                sub_cost = 1;
            }

            // Compute minimum edit distance
            *(min_dist + i*flines_2 + j) = min_3(
                *(min_dist + (i-1)*flines_2 + j) + 1,               // Deletion
                *(min_dist + i*flines_2 + (j-1)) + 1,               // Addition       
                *(min_dist + (i-1)*flines_2 + (j-1)) + sub_cost     // Substitution
            ); 

        }
    }

    return *(min_dist + flines_1*flines_2 - 1);
}

/* Find the edit path from file 1 to file 2 */
int edit_path(char *fname_1, char *fname_2) {
    // Total number of lines in each file
    int flines_1 = line_count(fname_1);
    int flines_2 = line_count(fname_2);

    // If files could not open properly, exit
    if (flines_1 < 0 || flines_2 < 0) {
        printf("Error in opening files.\n");
        return -1;
    }

    // If the number of lines exceeds MAX_LINES, exit
    if (flines_1 > MAX_LINES || flines_2 > MAX_LINES) {
        printf("Files too big.\n");
        return -1;
    }

    // Open the two files in read mode
    FILE *f1 = fopen(fname_1, "r");
    FILE *f2 = fopen(fname_2, "r");

    /* 
    Maps each line in the file to a unique index
    For instance
    0 -> line a
    1 -> line b
    2 -> line c
    and so forth (across both files) 
    */
    char map[2*MAX_LINES][MAX_CHARS];

    /* 
    Maps the line number in each file to the
    unique index in map
    0 -> 2 (global unique index 2) -> line c
    1 -> 0 (global unique index 0) -> line a
    2 -> 0 (global unique index 0) -> line a 
    */
    int f1_map[MAX_LINES];
    int f2_map[MAX_LINES];

    /* Store total number of unique lines (length of map) */  
    int unique_lines = make_map(f1, f2, f1_map, f2_map, map);

    /* 
    Initialise a matrix for minimum edit distances 
    (also called Levenshtein Distance)
    
    eg: for the words "apple" and "pear", the matrix
        to caluculate edit distance awould look like

          _ P E A R
        _ 0 1 2 3 4
        A 1 1 2 2 3
        P 2 1 2 3 3
        P 3 2 2 3 4
        L 4 3 3 3 4
        E 5 4 3 4 4

    The minimum edit distance is the bottom-right value (4)

    This means a minimum of 4 steps are required to change
    teh word "apple" to the word "pear"

    Here the same process is mimicked but with the unique line 
    indices instead of letters in the alphabet

    The values get stored ina dynamic array made to work like
    a matrix
    */
    int *min_dist = (int *) malloc(flines_1 * flines_2 * sizeof(int));

    /* Initialise matrix with 0s */
    for (int i=0; i<flines_1; ++i) {
        for (int j=0; j<flines_2; ++j) {
            *(min_dist + i*flines_2 + j) = 0; 
        }
    }

    /* 
    Compute Levenshtein Distance and store the number of steps 
    required in the variable steps
    */
    int steps = LevenshteinDistance(f1_map, f2_map, flines_1, flines_2, min_dist);

    /* 
    An array that stores all the edit opeartions to change
    file 1 to file 2 (the steps)
    */
    int *operations = (int *) malloc(steps * sizeof(int));

    // Set all operations to NO_OP (default)
    for (int i=0; i<steps; ++i) {
        operations[i] = NO_OP;
    }

    /*
    Here, edit path is reconstruced based on the matrix
    of edit distances and adjancent actions
    */
    steps = reconstruct(min_dist, flines_1, flines_2, operations, steps);

    // Statring coordinate
    int start[] = {0, 0};

    // Go through the steps in reverse order
    for (int i=steps-1; i>=0; --i) {

        // If the action was an insertion of a line
        if (operations[i] == INSERTION) {
            ++start[1];
            // Print line numbers and 'a' for addition
            printf("%da%d\n", start[0]+1, start[1]+1);
            // Followed by the new line to insert from file 2
            printf("> %s\n", map[f2_map[start[1]]]);

        }

        // If the action was an deletion of a line
        else if (operations[i] == DELETION) {
            ++start[0];
            // Print line numbers and 'd' for deletion
            printf("%dd%d\n", start[0]+1, start[1]+1);
            // Followed by the new line to delete from file 1
            printf("< %s\n", map[f1_map[start[0]]]);
        }

        // If the action was an substitution of a line
        else if (operations[i] == SUBSTITUTION) {
            ++start[0];
            ++start[1];
            // Print line numbers and 'c' for change
            printf("%dc%d\n", start[0]+1, start[1]+1);
            // Followed by the line from file 1 to be 
            // changed to line from file 2
            printf("< %s\n", map[f1_map[start[0]]]);
            printf("---\n");
            printf("> %s\n", map[f2_map[start[1]]]);

        }

        // If the action was empty, do nothing
        else if (operations[i] == EMPTY) {
            ++start[0];
            ++start[1];
        }

    } 
    printf("\n");

    // Deallocate the memory
    free(operations);
    free(min_dist);

    // Close the files
    fclose(f1);
    fclose(f2);

    return 0;
}

#endif