# BeonTech Interview Script

## Setup Instructions

1. Download and Install Python in your machine: [Download](https://www.python.org/downloads/)
2. After installing Python, open Terminal (Windows: Command Prompt or Windows Powershell) and run the following command: `pip install robotframework selenium`
3. Download and install the IDE of your choice (recommended: Visual Studio Code)

## Running the scripts

To run all scripts inside the test folder, run:

`robot tests`

To run all scripts with Smoke tag, run the following:

`robot -i smoke tests`

To run a specific script, tun the command:

`robot tests\google.robot`

## Test Description

In this repository you will find two test scenarios inside tests\google.robot:

1. Valid Search: this script performs a simple Google search and check if a Wikipedia result appears. It uses a ${searchTerm} variable as the input term.
2. Search Result Navigation: this script also performs the same simple Google search, but also opens the Wikipedia page and checks if the article Title (`${searchResultTitle}`) exists and also if the URL (`${searchResultURL}`) is correct.
