1. `$(( ... ))` This is the syntax for arithmetic expansion in bash. 
    It allows you to perform mathematical operations.

2. Input Redirection

    Purpose: Redirects input to a command or script from a file or
    another source instead of standard input (keyboard).
    Syntax: Uses the `<` operator.
    Use Case: Reading input from files
3. Piping

    Purpose: Connects the output of one command as the input to another command.
    Syntax: Uses the `|` operator.
    Use Case: Passing the output of one command dynamically to another command.
4. Double Brackets `[[...]]`

    Double brackets support more complex expressions, such as logical operators `(&&, ||)`, pattern matching `(=~)`, and improved variable handling.

    ~~~
        [[ $var -ge 0 && $var -lt 10 ]]
    ~~~

5. `wc -l < $filename` is used to count the number of lines in the file specified by $filename.

    `wc`: Stands for word count. It's a command-line utility that can count lines, words, characters, and bytes in a file or input.

    `-l`: An option for wc that tells it to count only the lines.

6.  `-s $filename` in a shell script checks whether the specified file exists and is not empty.

7. Append Redirection

    `>>` appends the text to the end of the file without overwriting its existing contents.

8. `$(...)` construct in Bash is called command substitution. It allows the output of a command to be captured and used as part of a larger command or assigned to a variable.

9. delete a specific line in a file

    `sed -i "${line_number}d" file`
10. update a specific line in a file

    `sed -i "${line_number}s/.*/new_content/" file`



---
       run script file: bash  filename
       debug and run script file: bash -v filename
---

