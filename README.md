## Groupwork 03 Cool Coatis

## Description
- **oaks_debugme.py** This python script processes a CSV file containing species data and filters out the rows where the genus is Quercus (oak species). It writes the filtered data into a new CSV file. 
-> The input file is TestOaksData.csv from data folder, the file has species data with two columns (Genus and Species). 
-> The output file will be written to the results folder as JustOaksData.csv and will contain rows where the genus is Quercus. 
Script workflow: 
    - Function is_an_oak(name): Checks if the genus of a species is "Quercus". It uses fuzzy matching to compare the genus and returns True if they match, False if they do not. 
    - Main script function main(): This script reads the CSV input file, processes each row, checks genus, and writes rows with "Quercus" as the Genus. 
    - Debugging: To start an interactive debugging session if needed, unncomment #ipdb.set.trace().
    - Testing: The script uses doctest to validate that the is_an_oak() function works as expected. 
    
- **align_seqs_better.py** This python script reads 2 DNA sequences from a CSV file, aligns them, and computes the alignment score. The result is saved to a text file that contains the best alignment and score. The best alignment is calculated by finding the maximum number of matching bases between sequences. 
-> The input file is Sequence.csv in the data folder. The file should contain two DNA sequences, each in a separate row. 
-> The output file will be written as best_align.txt in the results folder. It will contain the best alignment(s) between the two DNA sequences, the score (number of matching bases), and the aligned sequence with the best match. 
Script Workflow:
    - Reading the sequences: The script reads the input CSV file and stores the 2 sequences in seq1 and seq2 variables. 
    - Function calculate_score(s1, s2, l1, l2, startpoint): aligns the two sequences starting at a given position in the longer sequence (s1). The function returns the alignment score. 
    - Debugging: The script can be debugged using statements within the calculate_score() function as well as uncommenting the #ipdb.set.trace() line for an interactive debugging session. 

- **align_seqs_fasta.py**: This Python script reads 2 DNA sequences from FASTA files, aligns them, calculates the best alignment score, and saves the results to a text files. 
-> The input files are two FASTA files <407228326.fasta> <407228412.fasta>, which should be provided as command-line arguments when running the script. 
-> The output file is written to a text file in the results directory. The file will be named in the format: best_alignment_<seq1_name>_vs_<seq2_name>.txt
Script Workflow:
    - Reading the sequences: The script read the two sequences using the read_fasta() function.
    - Aligning sequences: The sequences are compared starting from multiple positions along the longer sequence to find the best match. The assign_sequences() function is used to assign the longer and shorter sequence. 
    - Best alignment: The script calculates the alignment score at each possible start position using the calculate_score() function. 
    
- **PP_Regress_loc.R**: This R script processes a dataset containing predator-prey mass data, applies linear regression models to explore the relationship between predator and prey mass, and outputs the results of the regression analysis into a CSV file. 
-> The input file is EcolArchives-E089-51-D1.csv in the data directory. The file contains ecological data with columns such as Prey.mass, Predator.mass, Prey.mass.unit, Type.of.feeding.interaction, Location, and Predator.lifestage. 
-> The output files will be written to the results folder as PP_Regress_Results.csv. This file contains the results of the linear regression models, including coefficients, R-squared, F-statistics and p-values. 
Script Workflow:
    - Data processing: The script reads the ecological data. The prey mass unit is checked, and if it's in milligrams, it is converted to grams for consistency. The relevant columns are converted to factors for proper statistical modeling.
    - Grouping data: The data is grouped by Location, Type.of.feeding.interaction, and Predator.lifestage to ensure the linear model is applied to each subset of data individually.
    - Linear regression: For each data subset, a linear regression model is fitted to predict the Predator.mass as a function of Prey.mass (both in log scale). The model coefficients (slope and intercept), R-squared, F-statistic, and p-value are extracted and stored.
    - lm.function(data_subset): Fits a linear regression model to the subset of data and extracts relevant statistics.

- **TAutoCorr.R**: This R script analyses the correlation between the temperatures of consecutive years from the Key West temperature dataset. It compares the observed correlation to those obtained from simulated (shuffled) data to evaluate the significance of the result.
-> The input file is KeyWestAnnualMeanTemperature.RData, located in the data folder. This file contains the temperature data for Key West, typically as a data frame with columns such as Year and Temp (temperature).
Script Workflow:
    - Data exploration: The Script loads and explores the temperature data. A basic plot of the data is generated. 
    - Data preparation: The temperature data is split into two vectors, years_1 (all temperatures excluding the first year and year_2 (all temperatures excluding the last year). The correlation between these two vectors is calculated.
    - Shuffling and Simulation: The script performs a Monte Carlo simulation where it shuffles the temperature values in years_1 and recalculates the correlation with years_2 for each simulation. This is repeated 10,000 times to generate a distribution of correlation coefficients under the null hypothesis of no relationship.
    - Statistical Significance: The observed correlation is compared to the distribution of shuffled correlations. The script counts how many of the shuffled correlations are greater than the observed correlation and computes the fraction of such occurrences. This fraction provides a measure of how likely it is that the observed correlation is due to random chance.
    
- **TAutoCorr_latex_code.tex**: The LaTeX script titled "Autocorrelation Analysis in Florida Weather" presents an analysis of the Key West annual mean temperatures to assess the correlation between consecutive years' temperatures. 
***To compile in the bash terminal : pdflatex -output-directory=../results  TAutoCorr_latex_code.tex
    - autocorrelation_analysis.tex: The main LaTeX document containing the content of the report.
    - KeyWestAnnualMeanTemperature.RData: The temperature data file used for the analysis (Note: this file is assumed to be available when performing the actual analysis).
Investigates the relationship between consecutive years' temperatures in Key West.
Methods: Step 1: Calculate the correlation coefficient between successive years' temperatures. Step 2: Perform 10,000 simulations by randomly shuffling the data to generate a distribution of correlation coefficients and compute a p-value based on the proportion of simulations with higher correlations than the observed value.
Results & Conclusion: A correlation coefficient of 0.326 was found. Only 6 out of 10,000 simulations had a higher correlation, yielding a p-value of 0.0006, indicating statistical significance. The results suggest a significant correlation, implying some persistence in the local weather.
    

## Languages 
- Python
- R
- LaTeX

## Dependencies
**ipdb** : for enhanced debugging.
**graphicx** : for handling images
**amsmath** : for mathematical formatting



## Installation
pip install ipdb

## Project Structure and Usage
The data stored in the Data folder is used by the code scripts located in the Code folder, while the output from these scripts is saved in the Results folder.



## Author
Anna Cavalieri Canosa
    ac524@ic.ac.uk
Bridget Smith
    bs2324@ic.ac.uk
Zhilu Zhang
    zz8024@ic.ac.uk
Lehan Geng
    lg1824@ic.ac.uk

    
