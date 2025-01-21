
# Cool Coatis Final Assessment and Feedback

---

## Project Structure and Workflow

### Strengths:
1. **Directory Organization**:
   - The project maintained a logical directory structure with separate folders for `code`, `data`, and `results`.
   - Empty directories were managed using `.gitkeep`.

2. **README File**:
   - The README provided detailed descriptions of scripts, their workflows, and usage instructions.
   - Dependencies and installation instructions for tools like `ipdb` and R packages were included.

### Areas for Improvement:
1. **README**:
   - Add input/output examples for each script to improve user understanding.
   - Include specific installation instructions for Python libraries (e.g., `fuzzywuzzy`).

2. **Results Directory**:
   - The `results` folder contained output files (e.g., `PP_Regress_Results.csv`), which should not be committed to Git.

---

## Feedback on Scripts and Errors

### General Observations:
1. The scripts were generally well-documented with inline comments and docstrings.
2. Error handling was inconsistent across scripts.

### Script-Specific Feedback:

#### **PP_Regress_loc.R**
- **Strengths**:
  - Efficient use of `tidyverse` for data manipulation.
  - Group-specific regression analysis was implemented effectively.
- **Improvements**:
  - Add inline comments explaining the purpose of key steps (e.g., grouping variables).
  - Use `tryCatch` to handle edge cases in regression model fitting.

#### **TAutoCorr.R**
- **Strengths**:
  - Successfully implemented a Monte Carlo simulation for autocorrelation analysis.
  - Code was clean and easy to follow.
- **Improvements**:
  - Include comments explaining the significance of steps (e.g., why specific correlations are calculated).
  - Handle missing library dependencies gracefully.

#### **TAutoCorr_latex_code.tex**
- **Strengths**:
  - Well-structured report with clear sections for introduction, methods, and results.
  - Statistical results were presented clearly and concisely.
- **Improvements**:
  - Expand the discussion to include broader implications of the findings.

#### **align_seqs_better.py**
- **Strengths**:
  - Provided a clear workflow for sequence alignment.
  - Used appropriate variable names and comments to enhance readability.
- **Improvements**:
  - Handle cases where the input file is missing more gracefully.
  - Use logging instead of print statements for debugging.
- **Issues**:
  - Failed to locate `Sequence.csv` during testing, resulting in a `FileNotFoundError`.

#### **align_seqs_fasta.py**
- **Strengths**:
  - Modular design with reusable functions for reading FASTA files and calculating alignment scores.
- **Improvements**:
  - Add a main docstring explaining the purpose of the script.
  - Handle invalid command-line arguments more effectively.

#### **oaks_debugme.py**
- **Strengths**:
  - Integrated doctests for validating the `is_an_oak` function.
  - Used fuzzy matching for more robust genus detection.
- **Improvements**:
  - Refine the `is_an_oak` function to handle genus names with trailing or leading spaces.
  - Ensure all required libraries (e.g., `fuzzywuzzy`) are installed before execution.
- **Issues**:
  - Failed due to a missing `fuzzywuzzy` library.

---

## Specific Feedback on Florida Autocorrelation Practical

### Code:
- **Strengths**:
  - The `TAutoCorr.R` script correctly implemented permutation testing and provided interpretable results.
  - The code was efficient and well-documented.
- **Improvements**:
  - Add a function to dynamically adjust the number of simulations.
  - Include a visualization of the observed and shuffled correlations for better clarity.

### Write-Up:
- **Strengths**:
  - The LaTeX report effectively summarized the methodology and findings.
  - Results were presented with appropriate statistical rigor.
- **Improvements**:
  - Expand the discussion to relate findings to broader climatic trends.

---

## Git Practices

### Strengths:
1. Regular commits demonstrated consistent progress.
2. The `.gitignore` file was used effectively to exclude unnecessary files.

### Areas for Improvement:
1. **Commit Messages**:
   - Many messages (e.g., "final groupwork") lacked detail. Use descriptive messages (e.g., "Fix error in Florida autocorrelation script").
2. **Contribution Analysis**:
   - **Anna Cavalieri Canosa** contributed significantly to the project, focusing on README updates and workflow management.
   - **Zhilu Zhang** provided the majority of code updates but repeated "final groupwork" commits indicated inefficient workflows.
   - **Lehan Geng** and **Bridget Smith** had fewer contributions, mostly related to specific scripts.

### Recommendations:
1. Use feature branches for major updates to avoid conflicts.
2. Adopt a commit message convention (e.g., `[Feature]: Description`) for clarity.

---

## Conclusion
Your team displayed good collaborative programming / problem-solving skills. The project structure was well-organized, and the scripts were generally functional and well-documented. Hopefully this exercise gave you hands-on experience and whetted your appetite for more collaborative development in the future!
