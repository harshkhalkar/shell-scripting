# Wildcards in Shell Scripting

Welcome to the world of shell scripting, where wildcards can make working with files and folders faster, easier, and way more efficient. In this guide, we’ll break down what wildcards are, why they matter, and how to use them in real Linux examples.

## What Are Wildcards?

A wildcard is a special character (or group of characters) that helps match file and directory names. Instead of typing full names manually, you can use wildcards to create patterns that automatically expand into a list of matching files.

These patterns are also called globs or glob patterns, and they work with many common Linux commands like:

- `ls`
- `rm`
- `cp`
- `mv`


## The Two Most Common Wildcards:  and `?`

### Asterisk ()

The `*` wildcard matches zero or more characters, meaning it can represent anything.

Examples:

- `.txt` → matches all files ending in `.txt`
- `a*` → matches anything that starts with `a`


### Question Mark (`?`)

The `?` wildcard matches exactly one character, which makes it more specific.

Example:

- `?.txt` → matches files like `a.txt` or `1.txt` (only one character before `.txt`)


## Getting More Specific with Character Classes

Character classes let you match one character from a set.

### Syntax

Use square brackets:

- `[aeiou]` → matches one vowel character

### Ranges

You can match a range using a hyphen:

- `[a-g]*` → matches names starting with letters from a to g


## Named Character Classes (Quick and Convenient)

Linux also supports built-in character class shortcuts. These are useful when you want common groups of characters.

Some examples include:

- `[:alpha:]` → letters (A–Z, a–z)
- `[:alnum:]` → letters and digits
- `[:digit:]` → numbers 0–9
- `[:lower:]` → lowercase letters
- `[:upper:]` → uppercase letters
- `[:space:]` → whitespace characters (spaces, tabs, newlines)


## Escaping Wildcards

Sometimes you actually want to match the wildcard symbol itself (like `*` or `?`) instead of using it as a pattern. In that case, you can escape it using a backslash:

Example:

- `\*` → treats the  as a normal character


## Real Examples: Using Wildcards in Shell Scripts

Let’s look at a few practical scripts that show wildcards in action.


### Example 1: Copying All HTML Files

This script moves into `/var/www` and copies every `.html` file into another folder:

```bash
#!/bin/bash

cd /var/www
cp *.html /var/www-just-html
```


### Example 2: Using a For Loop with Wildcards

Here, the wildcard creates a list of `.html` files, and the loop processes each one:

```bash
#!/bin/bash

cd /var/www

for filein *.html;do
echo"Copying $file"
cp"$file" /var/www-just-html
done
```


### Example 3: Adding the Full Path in the Wildcard

Instead of changing directories, you can include the path directly:

```bash
#!/bin/bash

for filein /var/www/*.html;do
echo"Copying $file"
cp"$file" /var/www-just-html
done
```

This prints and copies files using their full path.


### Example 4: A Quick Warning

Be careful when you don’t specify the directory in your wildcard. This script will copy matching files from whatever directory you’re currently in:

```bash
#!/bin/bash

cp start*.html /var/www-just-html
```

If you forget to `cd` into the correct folder, you might copy the wrong files by accident.


## Final Thoughts: Use Wildcards the Smart Way

Wildcards are one of the most powerful tools in shell scripting. They save time, reduce typing, and make scripts more flexible. Just remember: being clear about your working directory matters, and adding full paths can help prevent mistakes.
