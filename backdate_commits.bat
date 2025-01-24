@echo off
REM Navigate to the repository directory
cd /d C:\Users\swara\OneDrive\Desktop\AS

REM Set the range for backdating (3 years)
set startYear=2021
set endYear=2024

REM Enable delayed variable expansion for dynamic commit messages
setlocal enabledelayedexpansion

REM List of commit messages to randomize
set messages[0]=Update README
set messages[1]=Bug fix
set messages[2]=Code improvement
set messages[3]=Refactor code
set messages[4]=Add new feature
set messages[5]=Improve documentation
set messages[6]=Optimize performance
set messages[7]=Add tests for feature X
set messages[8]=Update dependencies
set messages[9]=Fix typo in comments
set messages[10]=Enhance UI design
set messages[11]=Update configuration files
set messages[12]=Clean up codebase
set messages[13]=Fix broken link in docs
set messages[14]=Add logging for debug purposes
set messages[15]=Improve error handling
set messages[16]=Remove unused imports
set messages[17]=Adjust layout for responsiveness
set messages[18]=Implement new feature
set messages[19]=Reorganize project structure

REM Generate random dates and commits
for /L %%Y in (%startYear%,1,%endYear%) do (
    for /L %%M in (1,1,12) do (
        for /L %%D in (1,1,28) do (
            REM Randomly decide whether to make a commit on this date
            set /a random=%RANDOM% %% 3
            if !random! EQU 0 (
                REM Simulate a change in the repository
                if not exist activity.txt (
                    echo "Initializing activity file" > activity.txt
                )
                echo "Commit for %%Y-%%M-%%D" >> activity.txt

                REM Randomize the commit message
                set /a randIndex=%RANDOM% %% 20
                set commit_msg=!messages[%randIndex%]!

                REM Ensure commit message is not empty
                if "!commit_msg!"=="" (
                    set commit_msg="Default commit message"
                )

                REM Debugging: Display the commit message
                echo Commit message: !commit_msg!

                REM Set the commit date to the backdated value
                set GIT_COMMITTER_DATE=%%Y-%%M-%%D 12:00:00
                set GIT_AUTHOR_DATE=%%Y-%%M-%%D 12:00:00

                REM Make the commit
                git add activity.txt
                git commit -m "!commit_msg!"
            )
        )
    )
)

REM Push all changes to GitHub at the end
git push origin main
