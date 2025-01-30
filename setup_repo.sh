#!/bin/bash

# Step 1: Create a new folder
echo "Creating a new folder named 'my_project'..."
mkdir my_project
cd my_project || exit

# Step 2: Create the required files
echo "Creating the following files: Code.txt, Log.txt, and Output.txt..."
touch Code.txt Log.txt Output.txt

# Add some content to the files
echo "This is the code content." > Code.txt
echo "This is the log content." > Log.txt
echo "This is the output content." > Output.txt

# Step 3: Initialize a Git repository
echo "Initializing a Git repository..."
git init

# Step 4: Stage the Code.txt and Output.txt files
echo "Staging the files Code.txt and Output.txt..."
git add Code.txt Output.txt

# Step 5: Commit the staged files
echo "Committing the staged files..."
git commit -m "Add Code.txt and Output.txt files"

# Step 6: Push to GitHub
echo "Please enter your GitHub repository URL (e.g., https://github.com/222002Anil/your-repository-name.git):"
read repo_url

# Add the remote repository URL
git remote add origin "$repo_url"

# Push the changes to the repository
echo "Pushing the changes to GitHub..."
git push -u origin main

echo "Process completed successfully!"

