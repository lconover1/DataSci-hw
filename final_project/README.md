# Final project set-up
Please note: This final project involved creating a mock-up of a research study, with analysis, visualization, and written summary to be done entirely within RMarkdown.  As such, the final product is not to be taken as an example of writing or analysis skill, since these things are greatly truncated, but instead an example of proficiency with the software to create this general layout.
  
  This folder houses all of the components for the Data Science class final project.  Sub-folders include:
  
  * Data: holds both raw data from the 'Perception of spontaneous and volitional laughter across 21 societies' dataset, as well as cleaned and restructured data ready for analysis
    * Raw and cleaned (output) data are in separate subfolders
  * Markdown: Rmd files needed to display, analyze, and output assignment pieces, as well create the final APA-style paper
    * The "failed attempts" folder includes Rmd files that are either older formats of the assignment or files that won't knit due to some issue with papaja and "pandoc document conversion"
  * Scripts: additional R scripts needed to prepare for the assignment and carry out analyses
  * Output: the final graphs, analyses, and otherwise knit pieces of the assignment
    * Note that modified data tables are in the "cleaned" data folder, not "output"

The data selected comes from a study of individuals' perceptions of both spontaneous and volitional laughter produced by young adult female American English speakers.  The original data includes two csv files: one detailing information on the acoustic features of the laugh stimuli (including spontaneous/volitional condition and duration, voicing, pitch, and intensity measures), and the other detailing information on the listeners and perceptions (including basic demographic data such as gender, country of origin, English fluency, and education, as well as whether each stimulus was perceived as volitional or spontaneous).  This dataset has no missing values; it is possible that any cases with missing values were deleted listwise prior to publication.

Selected variables for this analysis include:

 * Laugh condition (2 possible categories: spontaneous or volitional)
 * Accuracy of listener's judgement on a trial (categorically scored as "0" if incorrect and "1" if correct)
 * Total laugh duration (in seconds)
 * The average pitch of the laugh (in logHz)
 * Listener's country of origin (21 possible categories)
 
Please see the final documents in the output folder (html or word formats) for data presentation and analysis.
 
---
Grade:

0. Tidy Submission: 20/20
1. Folder structure: 20/20
2. Find a dataset: 30/30
3. Import/export: 30/30

**Total: ** 100/100

---
