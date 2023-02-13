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
- Verifies that the proj_init_dir set in the script contains the project_initializer.config file and template_files directory
- If proj_init_dir is not valid, it prompts the user to direct the script to the path where this folder is stored and alters itself to remember this on future runs
- Checks if the user is logged into GitHub and installs the gh command if necessary
- Checks if the user is authenticated with gh, and if not, prompts the user to do so
- Initializes a local Git repository with the specified name
- Connects the local repository to a remote repository on GitHub (either an existing repository or a new repository created by the script)
- Adds template files to the local repository
- Sets up npm tools- Creates an initial commit in the local repository

## Usage
To use the script, run the following command in your terminal:
bash:
```
./init_idea_proj.sh <destination_directory> [repo_link_or_description]
```

The destination_directory argument is the name of the local project repository that will be created.
The optional repo_link_or_description argument can either be a remote repository link ending in ".git" or a project description. If a repository link is provided, the script will connect the local repository to the remote repository. If a description is provided, the script will create a new remote repository on GitHub with the given description.

## Limitations and Assumptions
- The script assumes that the gh command is installed and that the user is logged into GitHub.
- The script will overwrite any existing directory with the same name as the destination_directory.
- The script assumes that the project_initializer.config file and template_files directory are located in the proj_init_dir directory.

## Conclusion
The Project Initializer script is a helpful tool for streamlining the process of starting a new project in the ICS314 class. By automating several key steps, the script saves time and effort compared to manually performing these steps every time a new project is started. In addition, this project showcases my ability to write complex bash scripts and demonstrates my understanding of Git and npm tools.

[Link to Github Project Page](https://github.com/CalebMueller-UH/IDEA_Project_Initializer)