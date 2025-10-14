# README for Username Validation Script

## Author Information
- **Name:** [Joana Aguilar]
- **Course:** [CPSC298]
- **Assignment:** Username Validation
- **Date:** [10/13/25]

## Program Description
This script ensures that a username is entered by a user follows a specific set of rules, such as starting with a lowercase letter, containing only lowercase letters, digits, underscores, and being 3-12 characters long. The script repeatedly prompts the user until a valid username is entered, giving feedback if the input does not meet the requirements. Then the script uses a loop and a regular expression to check the input and only exit once a username that satisfies all the rules provided. 

## Username Requirements
This script validates usernames according to the following rules:
- Must start with a lowercase letter
- Can only contain lowercase letters, digits, and underscores
- Must be between 3 and 12 characters in length (inclusive)

## Usage
To run the script interactively:
```bash
./username.sh
```

To test with the provided input file:
```bash
./username.sh < username-input
```

## How the Script Works
[Explain in 3-5 sentences how your script validates usernames. Include information about:]
- The use of the `while` loop
- The `grep` command with extended regular expressions
- The meaning of the `-E` and `-v` flags
- The redirect `> /dev/null 2>&1`
- In this script, a while loop is used to repeatedly prompt the user for a username until a valid one is entered, ensuring the program keeps running for invalid input. The script uses `grep` with extended regular expressions (`-E`) to match the username against the required pattern, checking that it starts with a lowercase letter, contains only lowercase letters, digits, or underscores, and is 3–12 characters long. The `-v` flag with `grep` inverts the match, allowing the script to detect invalid usernames instead of valid ones. The redirect `> /dev/null 2>&1` is used to suppress any output or error messages from `grep`, keeping the prompt clean and only displaying user-friendly messages.


## Regular Expression Pattern
The validation uses the following regular expression pattern:
```
^[a-z][a-z0-9_]{2,11}$
```
This pattern ensures that:
- The username starts with a lowercase letter `[a-z]`
- The following characters are lowercase letters, digits, or underscores `[a-z0-9_]`
- The total length is between 3 and 12 characters

## Testing Results
[Describe your testing process and results. Include:]
- Example valid usernames you tested (at least two)
- Example invalid usernames and why they fail (at least two)
- How you used the username-input file to test
- 
- joan_doe → valid because it starts with a lowercase letter, only contains lowercase letters and an underscore, and is 8 characters long.

user123 → valid because it starts with a lowercase letter, contains only lowercase letters and digits, and is 7 characters long.

Invalid usernames tested:

JoanDoe → invalid because it starts with an uppercase letter, which violates the rule that usernames must start with a lowercase letter.

ab → invalid because it is only 2 characters long, below the minimum requirement of 3 characters.

## Challenges and Solutions
[Optional: Describe any challenges you encountered while creating this script and how you solved them. This could include debugging issues, understanding regular expressions, or Git workflow problems.]

## Resources
[List any resources you used (class slides, ChatGPT, etc.). Please refer to the course syllabus for more details on citations.]
-ChatGBT
-Devin Miller Youtube Videos
-Class Slides
## License
This project is part of coursework for Chapman University and is intended for educational purposes.
