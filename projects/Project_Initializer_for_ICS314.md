---
layout: project
type: project
image: img/projectPics/Project_Initializer.png
title: "Project Initializer for ICS314"
date: 2023
published: true
labels:
  - Bash Scripting
  - IntelliJ IDEA
summary: "Automated project setup tool for creating a local project Git repository containing template files and connecting it to a remote repository on GitHub."
---

This script is a tool that streamlines the process of starting a new project for ICS314 by automating the creation of a local Git repository. It then sets up a remote repository on GitHub, adds template files to it, sets up npm tools, creates an initial commit, and prompts the user to optionally add a predefined collaborator access for grading the project. This saves time and effort compared to manually performing these steps every time a new project is started.

## Functionality
The script performs several key functions:
- Verifies that the proj_init_dir path set in the script points to a valid folder containing the project_initializer.config file and template_files directory
    - If proj_init_dir is not valid, the user is prompted to provide a valid path to this file, and alters the script to remember this on future runs
- Checks if the user has gh installed, and promts the user to install if not, via pip.
    * gh is a command line interface that is able to make api calls to github.com, permitting much of the functionality of this script
- Checks if the user is authenticated and signed into github through gh, and if not, prompts the user to do so
- Checks to see if the provided command line argument repo already exists
    - If the provided repo name doesn't already exist a local Git repository is initialized with that name
        - Once a local repo is initialized the script then creates a remote private repository on github with the same name
    - If the provided repo name does already exist locally the user is asked if they would like to overwrite.
        - If the user wants to overwrite, the local repo is reinitialized, and the remote repo with that same name is deleted
            * User must confirm their desire to delete the remote repo by typing their username + '/' + repo name
        - If the user doesn't want to overwrite, they are prompted to enter a new name to for the local and remote repo
- Adds template files to the local repository
- Sets up npm tools- Creates an initial commit in the local repository
- If a remote repository URL is provided as the second command line argument when the script is invoked, the local repo will then be connected to the provided remote repo URL via git remote add origin $REPO_ADDRESS

## Usage
- To use this script, ensure that it resides in the root project directory where you keep your projects
- Run the following command in your terminal:

```
./init_idea_proj.sh <destination_directory> [repo_link_or_description]
```

The destination_directory argument is the name of the local project repository that will be created.
The optional repo_link_or_description argument can either be a remote repository link ending in ".git" or a project description. If a repository link is provided, the script will connect the local repository to the remote repository. If a description is provided, the script will create a new remote repository on GitHub with the given description.


The Project Initializer script is a helpful tool for streamlining the process of starting intelliJ IDEA projects for ICS314.  By automating several key steps, the script saves time and effort compared to manually performing these steps every time a new project is started.

[Link to Github Project Page](https://github.com/CalebMueller-UH/IDEA_Project_Initializer)