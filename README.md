## Introduction

Shell scripting is a handy way to automate everyday tasks so you don’t have to repeat the same commands over and over. In this guide, we’ll cover the basics of shell scripting, including what scripts are, how to run them, and core topics like variables, conditions, and decision-making.

## What is a Script?

A script is a command-line program that contains multiple commands, run in order by an interpreter. Think of it like a set of step-by-step instructions, similar to following a recipe. By writing scripts, you can automate common tasks and save time by letting your system do the work for you.

Here’s an example of a simple shell script:

```bash
#!/bin/bash
# This is a basic shell script

echo "Hello, world!"
```

This script tells the computer to print the message **"Hello, world!"** to the screen. Before you run a shell script, you’ll usually need to give it permission to execute:

```bash
chmod +x script.sh
```

## Using Variables in Shell Scripts

In shell scripting, variables work like named containers that store information you can reuse later. To create a variable, use the format `VARIABLE_NAME=value` (with no spaces around the equals sign). Variable names are case-sensitive, and many people write them in uppercase to make them easier to spot.

To use the value stored in a variable, you can reference it with `$VARIABLE_NAME` or `${VARIABLE_NAME}`. The `${VARIABLE_NAME}` format is especially useful when you want to attach extra text before or after the variable name without confusion.

### Example

```bash
MY_SHELL="bash"
echo"I am using ${MY_SHELL} shell."
```

In this example, `MY_SHELL` stores the value `"bash"`, and we reference it to print a message showing which shell we’re using.

You can also store the output of a command inside a variable using command substitution:

```bash
SERVER_NAME=$(hostname)
echo"Server name is ${SERVER_NAME}."
```

## Performing Tests and Making Decisions

Shell scripts often need to behave differently depending on the situation. This is where tests (also called conditional checks) come in. Tests are written using expressions inside square brackets `[ ]`. They let you check things like whether a file or directory exists, whether something is readable or writable, and they also support string and number comparisons.

```bash
if [ -d"/path/to/directory" ];then
echo"Directory exists."
fi
```

## Using If Statements in Bash

Sometimes you want your script to make decisions depending on what’s happening. That’s where if statements come in, they let your script run certain commands only when a condition is true.

Here’s the basic format:

```bash
if [ condition ];then
# Commands to run if the condition is true
fi
```

### Example:

```bash
#!/bin/bash
# Simple if statement example

value=42

if [$value -eq 42 ];then
echo"The value is 42."
fi
```

In this script, it checks whether `value` is equal to 42. If it is, it prints a message.

## Adding **else** and **elif** Statements

If statements get even more useful when you add **else** and elif, because they let your script handle multiple outcomes.

Here’s an example with else:

```bash
if [ condition ];then
# Runs if the condition is true
else
# Runs if the condition is false
fi

```

And here’s one using elif (which means “else if”):

```bash
if [ condition ];then
# Runs if the first condition is true
elif [ another_condition ];then
# Runs if the second condition is true
else
# Runs if none of the conditions are true
fi
```

## Implementing **For Loops**

A for loop is basically a way to tell your computer: *“*Repeat this action for every item in a list*.”*

The general format looks like this:

```bash
for variablein item1 item2 item3;do
# Commands to run for each item
done
```

### Example:

```bash
#!/bin/bash
# Simple for loop example

colors="red green blue"

for colorin$colors;do
echo"Color: $color"
done
```

This script goes through each color one by one and prints it out. Simple and effective!

## Positional Parameters: Reading Command-Line Inputs

When you run a script, you can pass values into it from the command line. These values are called positional parameters.

- `$0` → the script name
- `$1` → first argument
- `$2` → second argument
- `$@` → all arguments

### Example:

```
#!/bin/bash
# Using positional parameters

echo "Script name: $0"
echo "First parameter: $1"
echo "Second parameter: $2"
echo "All parameters: $@"
```

This makes it easy to grab and use whatever the user typed when running the script.

## Accepting User Input

Shell scripts can also interact with the user by asking questions. You can do this using the `read` command.

### Example:

```bash
#!/bin/bash
# Accepting user input

echo -n"Enter your name: "
read username

echo"Hello, $username!"
```

This script prompts the user to type their name and then responds with a greeting, almost like a mini conversation.

## Conclusion

Shell scripting is a great way to automate tasks and make your computer do the boring work for you. Once you understand the basics, variables, if/else logic, loops, command-line arguments, and user input
