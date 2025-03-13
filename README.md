# Automated GitHub Commits with a Time-Traveling Batch Script

Welcome to the **Time-Traveling Commits** repo! This project uses a `.bat` script to automate, randomize, and even *backdate* your GitHub commits. Think of it like a secret sidekick that keeps your contribution graph looking extra active—purely for fun and learning, of course.

## Table of Contents
- [How It Works](#how-it-works)
- [Getting Started](#getting-started)
- [Script Explanation](#script-explanation)
- [Usage](#usage)
- [Disclaimer](#disclaimer)
- [License](#license)

---

## How It Works
This batch file takes advantage of Git’s ability to set commit dates manually, allowing you to fill up your commit history for days, months, or even years past. It also uses random checks so you don’t end up with perfectly uniform commits every single day—just enough “chaos” to keep it from looking suspiciously robotic.

---

## Getting Started
1. **Clone this Repository**  
   ```bash
   git clone https://github.com/<your-username>/<your-repo-name>.git
   ```
2. **Navigate to the Repo Folder**  
   ```bash
   cd <your-repo-name>
   ```
3. **Verify You Have Git Installed**  
   Make sure you have Git installed on your machine. If not, [download it here](https://git-scm.com/downloads).

4. **Edit the `.bat` File**  
   Open the `.bat` script in a text editor. Update any paths and user information (like username, email, or the directory path) that are specific to your environment.

---

## Script Explanation
1. **Directory Change**  
   The script navigates to the folder where your Git repository is stored.

2. **Delayed Variable Expansion**  
   Batch scripts can be finicky about variable updates within loops, so we enable `enableextensions enabledelayedexpansion` to handle them smoothly.

3. **Date Range & Random Frequency**  
   The script loops through specified years, months, and days. It uses a random number to decide how often to commit, so it’s not a perfect daily pattern.

4. **`activity.txt`**  
   This file is updated each time a commit is made. It’s our “change” that Git notices. If this file never changes, Git won’t commit anything!

5. **Dynamic Commit Messages**  
   A list of predefined commit messages is included. The script randomly picks one each time to keep your commit history interesting.

6. **Backdating with `--date`**  
   The `--date` parameter lets us set the commit date to a specific day, even if it’s in the past. This is how older contributions appear on your GitHub timeline.

7. **Single Push**  
   After all commits are generated, the script pushes them in one go, populating your contribution graph.

---

## Usage
1. **Modify Years**  
   Change the `startYear` and `endYear` to define how far back (and forward) you want to pepper your commits.
2. **Adjust Commit Frequency**  
   In the script, you’ll find something like `if !freq! LSS 3`. Tweak this to control how often a commit is made out of 7 possible days.
3. **Run the Script**  
   Double-click the `.bat` file or run it via command prompt:
   ```bash
   commitScript.bat
   ```
4. **Sit Back & Watch**  
   The script will iterate through dates, randomly choose commit days, and push everything to GitHub. Check your profile after it finishes to see the results.

---

## Disclaimer
- **Educational & Fun Use Only**: This project is intended as a playful demonstration of batch scripting and Git’s date functionality. It’s not meant to deceive employers, collaborators, or anyone else about your coding habits.
- **Quality Over Quantity**: While this can make your GitHub graph look jam-packed, real, meaningful commits are always more valuable. Treat this like a neat trick or a learning experience.
- **Office / Workplace Use**: If you’re using this at work, be sure to communicate with your team about any automated commits. Unexpected commit spikes can sometimes raise questions!

---

## License
This project is open-source under the [MIT License](LICENSE). Feel free to explore, modify, and share—just remember to keep it fun and responsible!

---
