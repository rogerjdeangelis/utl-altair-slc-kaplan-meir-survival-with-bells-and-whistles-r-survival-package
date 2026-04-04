%let pgm=utl-altair-slc-kaplan-meir-survival-with-bells-and-whistles-r-survival-package;

%stop_submission;

Altair slc kaplan meir survival with bells and whistles r survival package

 graph
https://github.com/rogerjdeangelis/utl-altair-slc-kaplan-meir-survival-with-bells-and-whistles-r-survival-package/blob/main/kaplan_meier_style.pdf

Too long to post on a list, see github
https://github.com/rogerjdeangelis/utl-altair-slc-kaplan-meir-survival-with-bells-and-whistles-r-survival-package


Altair Community Rapidminer
https://community.altair.com/discussion/43716/survival-analysis-in-rapid-miner?tab=all


 PROBLEM
 -------

 PRODUCE THIS PLOT

/**************************************************************************************************************************/
/*                                                                                                                        */
/*  The Kaplan Meir lines  are for demonstration purposes and do not                                                       */
/*  represent the data.                                                                                                    */
/*                                                                                                                        */
/*  2017 has the most days to infection                                                                                   */
/*  2014 has the least days to infection                                                                                  */
/*  2015 and 2016 are close in magnitude, days to infection (large sample size shows significance,CIs do not overlap)       */
/*  Only a 5 day difference                                                                                               */
/*                                                                                                                        */
/*  Patients in 2017 were 32% less likely to experience infection at any given point in time compared to 2014 patients.   */
/*                                                                                                                        */
/*                                                                                                                        */
/*                           Days to Infection by Year                                                                    */
/*                                   DAYS                                                                                 */
/*        0      60      120     180     240     300     360                                                              */
/*  SURV --+-------+-------+-------+-------+-------+-------+--------------+ PROB NO INFECTION                             */
/*   1.0 + +===+---+-------+                                              | 1.0                                           */
/*       | |   |   |       |                                              |                                               */
/*   0.9 + |   |   |       |     2014                                     + 0.9                                           */
/*       | |   |   +---+   +---------------------+                        |                                               */
/*   0.8 + |   |       |                         |                        + 0.8                                           */
/*       | |   +---+   +-------+                 +------------------------|                                               */
/*   0.7 + +---+   |           |                                          + 0.7                                           */
/*       |     |   |           |                                          |                                               */
/*   0.6 +     |   |           |                                          + 0.6                                           */
/*       |     |   |           | 2015                                     |                                               */
/*   0.5 +     |   +-------+   +---------------+                          + 0.5                                           */
/*       |     +           |                   |                          |                                               */
/*   0.4 +     +--------+  |                   +--------------------------+ 0.4                                           */
/*       |              |  |                                              |                                               */
/*   0.3 +              |  |     2016                                     + 0.3                                           */
/*       |              |  +---------------+------+                       |                                               */
/*   0.2 +              |                         |                       + 0.2                                           */
/*       |              |                         +-----------------------|                                               */
/*   0.1 +              |        2017                                     + 0.1                                           */
/*       |              +-------------------------------------------------|                                               */
/*   0.0 +                                                                + 0.0                                           */
/*       |                                                                |                                               */
/*       --+-------+-------+-------+-------+-------+-------+--------------+                                               */
/*       | 0      60      120     180     240     300     360             |                                               */
/*       |                        DAYS                                    |                                               */
/*       | Year  Median CI               Hazard Ratio                     |                                               */
/*       |                                            |2015 is            |                                               */
/*       | 2014  278.0 (275.0-281.0)        Reference |(1-.85)=15% more   |                                               */
/*       | 2015  294.0 (291.0-298.0) 0.87 (0.85-0.90) |likely than 2014 to|                                               */
/*       |                                            |have an infection  |                                               */
/*       | 2016  299.0 (297.0-302.0) 0.82 (0.80-0.84)                     |                                               */
/*       | 2017  325.0 (322.0-330.0) 0.68 (0.66-0.70)                     |                                               */
/*       |                                                                |                                               */
/*       |                       DAYS                                     |                                               */
/*       --+-------+-------+-------+-------+-------+-------+--------------+                                               */
/*         0      60      120     180     240     300     360                                                             */
/* Year  ----   -----   -----    -----   ----    ----     ---                                                             */
/* 2014  50000  30865   18359    10561   5457    2190      0   2190 went                                                  */
/* 2015  50000  31493   19430    11251   6082    2552      0   360 days                                                   */
/* 2016  50000  31527   19396    11472   6118    2508      0   without                                                    */
/* 2017  50000  29784   17319     9945   5178    2089      0   infection                                                  */
/*                       NUMBER AT RISK                                                                                   */
/*                                                                                                                        */
/* Note: (does not apply to the kaplan meir lines above)                                                                  */
/*                                                                                                                        */
/* In a clinical trial with a fixed follow-up period of 360 days,                                                         */
/* if no patients have follow-up beyond 365 days,                                                                         */
/* then all patients are censored at 360 days and the                                                                     */
/* "Number at Risk" would be 0 at 360 days.                                                                               */
/*                                                                                                                        */
/**************************************************************************************************************************/

PREPARATION
-----------

  Very important make sure
  options valivarname=v7; /*--- many language and linux are case sensitive, a huge nightmare ---*/

  Create Folder
      d:/kmp
      d/kmp/pdf
  Download
      download and unzip the self extracting 7zip file, sample_50000.exe
      into
      d:/kmp/kmp.sample_50000
  A csv is alxo available in this repo


Related Repos
------------------------------------------------------------------------------------------------------------------------------------------
https://github.com/rogerjdeangelis/utl-Grays-test-in-survival-analysis-cumulative-p-value
https://github.com/rogerjdeangelis/utl-simple-clinical-survival-plot-using-r-packages-kaplan-meier-curves
https://github.com/rogerjdeangelis/utl-worst-case-median-survival-sas-quantlife-and-r-quantreg-with-confidence-intervals-and-censoring
https://github.com/rogerjdeangelis/utl_slopegarphs_and_5_10_15_20_year_survival_rates

/*                   _
(_)_ __  _ __  _   _| |_
| | `_ \| `_ \| | | | __|
| | | | | |_) | |_| | |_
|_|_| |_| .__/ \__,_|\__|
        |_|
download and unzip the self extracting 7zip file, sample.exe
place in d:/kmp/sample.exe
*/


libname kmp sas7bdat "d:/kmp";
options validvarname=v7;

proc contents data=kmp.sample_50000 position;
run;

proc print data=kmp.sample_50000(obs=3);run;
proc print data=kmp.sample_50000(firstobs=199998);run;


/**************************************************************************************************************************/
/*   Altair SLC  d:/kmp/sample_50000.sas7bat                                                                              */
/*                                                                                                                        */
/*      Obs    Year time_to_event Censu                                                                                   */
/*                                                                                                                        */
/*        1    2014        0         0                                                                                    */
/*        2    2014        0         1                                                                                    */
/*        3    2014        0         1                                                                                    */
/*    ...                                                                                                                 */
/*   199998    2017      359         0                                                                                    */
/*   199999    2017      359         0                                                                                    */
/*   200000    2017      359         0                                                                                    */
/*                                                                                                                        */
/*                                                                                                                        */
/*   The CONTENTS Procedure                                                                                               */
/*                                                                                                                        */
/*   Data Set Name           SAMPLE_50000                                                                                 */
/*   Member Type             DATA                                                                                         */
/*   Engine                  SAS7BDAT                                                                                     */
/*   Created                 01APR2026:13:30:49                                                                           */
/*   Last Modified           01APR2026:13:30:49                                                                           */
/*   Observations            200,000                                                                                      */
/*   Variables               3                                                                                            */
/*   Indexes                 0                                                                                            */
/*   Observation Length      24                                                                                           */
/*   Deleted Observations    0                                                                                            */
/*   Data Set Type                                                                                                        */
/*   Label                                                                                                                */
/*   Compressed              NO                                                                                           */
/*   Sorted                  NO                                                                                           */
/*   Data Representation     WINDOWS_64                                                                                   */
/* n Encoding                wlatin1 Windows-1252 Wester                                                                  */
/*                                                                                                                        */
/*              Engine/Host Dependent Information                                                                         */
/*                                                                                                                        */
/*   Data Set Page Size          65536                                                                                    */
/*   Number of Data Set Pages    74                                                                                       */
/*   First Data Page             1                                                                                        */
/*   Max Obs Per Page            2715                                                                                     */
/*   Obs In First Data Page      2660                                                                                     */
/* 7bFile Name                   d:\kmp\sample_50000.sasdat                                                               */
/*   Release Created             9.0401M7                                                                                 */
/*   Host Created                X64_10PRO                                                                                */
/*                                                                                                                        */
/* er   List of Variables and Attributes in Creation Ord                                                                  */
/*                                                                                                                        */
/*   Number    Variable         Type  Len  Pos                                                                            */
/*   _________________________________________                                                                            */
/*        1    Year             Num     8    0                                                                            */
/*        2    time_to_event    Num     8    8                                                                            */
/*        3    Census           Num     8   16                                                                            */
/*                                                                                                                        */
/*   Altair SLC  d:/kmp/sample_50000.sas7bat                                                                              */
/*                                                                                                                        */
/*      Obs    Year time_to_event Censu                                                                                   */
/*                                                                                                                        */
/*        1    2014        0         0                                                                                    */
/*        2    2014        0         1                                                                                    */
/*        3    2014        0         1                                                                                    */
/*    ...                                                                                                                 */
/*  199,998    2017      359         0                                                                                    */
/*  199,999    2017      359         0                                                                                    */
/*  200,000    2017      359         0                                                                                    */
/**************************************************************************************************************************/

/*
 _ __  _ __ ___   ___ ___  ___ ___
| `_ \| `__/ _ \ / __/ _ \/ __/ __|
| |_) | | | (_) | (_|  __/\__ \__ \
| .__/|_|  \___/ \___\___||___/___/
|_|
*/


options validvarname=v7;

libname kmp sas7bdat "d:/kmp";
libname workx sas7bdat "d:/wpswrkx";

proc datasets lib=workx kill;
run;quit;

%utlfkil(d:/pdf/kaplan_meier_style.pdf); /*--- kaplan meir plot ---*/

options set=RHOME "C:\Progra~1\R\R-4.5.2\bin\r";
proc r;
export data=kmp.sample_50000 r=infection_data;
submit;
# Load required packages
library(tidyverse)
library(survival)
library(survminer)
library(gridExtra)
library(grid)
library(gtable)

# Ensure Year is a factor
infection_data$Year <- factor(infection_data$Year)
cat("Years in data:", paste(levels(infection_data$Year), collapse=", "), "\n")

# Fit Kaplan-Meier survival curves
km_fit <- survfit(Surv(time_to_event, Census) ~ Year, data = infection_data)

# Create annotation table data
summary_stats <- infection_data %>%
  group_by(Year) %>%
  summarise(
    N = n(),
    Events = sum(Census),
    Event_Rate = sprintf("%d/%d", sum(Census), n())
  )

# Median survival times
median_summary <- summary(km_fit)$table
summary_stats$Median_CI <- sapply(1:nrow(median_summary), function(i) {
  med <- median_summary[i, "median"]
  lcl <- median_summary[i, "0.95LCL"]
  ucl <- median_summary[i, "0.95UCL"]
  if(is.na(med)) return("NE")
  if(is.na(lcl)) return(sprintf("%.1f (%.1f-NE)", med, med))
  return(sprintf("%.1f (%.1f-%.1f)", med, lcl, ucl))
})

# Hazard Ratios from Cox model
cox_model <- coxph(Surv(time_to_event, Census) ~ Year, data = infection_data)
cox_summary <- summary(cox_model)

hr_values <- c("Reference")
for(i in 2:length(levels(infection_data$Year))) {
  idx <- i - 1
  hr <- exp(cox_summary$coefficients[idx, "coef"])
  lower <- exp(cox_summary$coefficients[idx, "coef"] - 1.96 * cox_summary$coefficients[idx, "se(coef)"])
  upper <- exp(cox_summary$coefficients[idx, "coef"] + 1.96 * cox_summary$coefficients[idx, "se(coef)"])
  hr_values[i] <- sprintf("%.2f (%.2f-%.2f)", hr, lower, upper)
}
summary_stats$HR_CI <- hr_values

# P-value from log-rank test
logrank_test <- survdiff(Surv(time_to_event, Census) ~ Year, data = infection_data)
p_value <- 1 - pchisq(logrank_test$chisq, df = length(logrank_test$n) - 1)

p_formatted <- formatC(p_value, format = "f", digits = 4)
p_with_asterisks <- if(p_value < 0.001) {
  paste0(p_formatted, "***")
} else if(p_value < 0.01) {
  paste0(p_formatted, "**")
} else if(p_value < 0.05) {
  paste0(p_formatted, "*")
} else {
  p_formatted
}

# Create annotation table
annotation_display <- data.frame(
  Year = summary_stats$Year,
  Events_N = summary_stats$Event_Rate,
  Median_CI = summary_stats$Median_CI,
  HR_CI = summary_stats$HR_CI,
  stringsAsFactors = FALSE
)

p_row <- data.frame(
  Year = paste0("P-value: ", p_with_asterisks),
  Events_N = "",
  Median_CI = "",
  HR_CI = "",
  stringsAsFactors = FALSE
)
annotation_display <- rbind(annotation_display, p_row)

# Create table grob for annotation
annotation_grob <- tableGrob(
  annotation_display,
  rows = NULL,
  theme = ttheme_minimal(
    base_size = 10,
    core = list(
      fg_params = list(cex = 1, fontface = "plain"),
      bg_params = list(fill = c("white", "grey98"))
    ),
    colhead = list(
      fg_params = list(cex = 1, fontface = "bold"),
      bg_params = list(fill = "grey85")
    )
  )
)

# ============================================================
# CREATE KAPLAN-MEIER PLOT WITH REDUCED RISK TABLE SPACING
# ============================================================

# Create Kaplan-Meier plot with custom theme for risk table
km_plot <- ggsurvplot(
  km_fit,
  data = infection_data,
  conf.int = TRUE,
  conf.int.style = "ribbon",
  conf.int.alpha = 0.15,
  pval = FALSE,
  risk.table = TRUE,
  risk.table.col = "strata",  # Color rows by strata
  risk.table.height = 0.20,    # Reduce table height
  risk.table.y.text.col = TRUE,
  risk.table.y.text = TRUE,
  risk.table.title = "Number at risk",
  risk.table.fontsize = 4,
  surv.median.line = "hv",
  palette = c("#1f77b4", "#ff7f0e", "#2ca02c", "#d62728"),
  xlab = "Days",
  ylab = "Survival Probability",
  title = "Time to Infection by Year",
  subtitle = "Kaplan-Meier Survival Estimates",
  legend.title = "Year",
  legend.labs = levels(infection_data$Year),
  break.time.by = 60,
  xlim = c(0, 360),
  ylim = c(0, 1),
  ggtheme = theme_classic() +
    theme(
      plot.title = element_text(hjust = 0.5, face = "bold", size = 14),
      plot.subtitle = element_text(hjust = 0.5, size = 11, color = "grey40"),
      legend.position = c(0.85, 0.85),
      legend.background = element_rect(fill = "white", color = "black", linewidth = 0.05),
      legend.key.size = unit(0.8, "lines"),
      legend.title = element_text(size = 9),
      legend.text = element_text(size = 8),
      axis.title = element_text(size = 11),
      axis.text = element_text(size = 9),
      panel.border = element_rect(fill = NA, color = "black", linewidth = 0.5),
      panel.grid.major.y = element_line(color = "grey90", linewidth = 0.3),
      panel.grid.minor.y = element_blank()
    )
)

# Remove the risk table legend
km_plot$table <- km_plot$table + theme(legend.position = "none")

# Extract components
risk_table <- km_plot$table
main_plot <- km_plot$plot

# Add annotation table to main plot
final_plot <- main_plot +
  annotation_custom(
    annotation_grob,
    xmin = 0, xmax = 240,
    ymin = 0.02, ymax = 0.38
  ) +
  annotate(
    "text",
    x = 0, y = 0.42,
    label = "Days until an Infection",
    size = 4,
    fontface = "bold",
    hjust = 0,
    color = "black"
  )

# Combine with risk table - use tighter height
combined_plot <- arrangeGrob(
  final_plot,
  risk_table,
  nrow = 2,
  heights = c(0.78, 0.18)  # Reduced height for tighter table
)

# Add "Number at risk" label
risk_label <- textGrob(
  "Number at risk",
  gp = gpar(fontsize = 7, fontface = "bold"),
  x = unit(0.02, "npc"),
  y = unit(0.98, "npc"),
  just = "left"
)

# Final combined output
final_output <- arrangeGrob(
  combined_plot,
  top = risk_label
)

# Display and save
print(final_output)

ggsave(
  "d:/pdf/kaplan_meier_style.pdf",
  final_output,
  width = 8,
  height = 10,
  dpi = 300,
  bg = "white"
)

risk_table_data <- km_plot$data.survtable

risk_table_wide <- risk_table_data %>%
  select(Year, time, n.risk) %>%
  pivot_wider(
    id_cols = Year,
    names_from = time,
    values_from = n.risk,
    names_prefix = "day"
  ) %>%
  arrange(Year)

print(risk_table_wide)

# Print results to log
cat("\n", paste(rep("=", 70), collapse = ""), "\n")
cat("KAPLAN-MEIER ANALYSIS RESULTS\n")
cat(paste(rep("=", 70), collapse = ""), "\n\n")

cat("SUMMARY STATISTICS:\n")
print(summary_stats[, c("Year", "N", "Events", "Event_Rate")])
cat("\n")

cat("MEDIAN SURVIVAL TIMES (Days):\n")
print(summary_stats[, c("Year", "Median_CI")])
cat("\n")

cat("HAZARD RATIOS (vs Reference Year):\n")
print(data.frame(Year = summary_stats$Year, HR_CI = summary_stats$HR_CI))
cat("\n")

cat("LOG-RANK TEST:\n")
cat(sprintf("Chi-square: %.2f\n", logrank_test$chisq))
cat(sprintf("Degrees of freedom: %d\n", length(logrank_test$n) - 1))
cat(sprintf("P-value: %.4f %s\n", p_value, p_with_asterisks))
cat("\n")

cat(paste(rep("=", 70), collapse = ""), "\n")
cat("Plot saved as: d:/pdf/kaplan_meier_style.pdf\n")
cat(paste(rep("=", 70), collapse = ""), "\n")

endsubmit;
import r=summary_stats data=workx.summary_stats;
import r=annotation_display data=workx.annotation_table;
import r=risk_table_wide data=workx.risk_table;

run;

/**************************************************************************************************************************/
/* R LIST OUTPUT                                       | SLC TABLES                                                       */
/*                                                     |                                                                  */
/* NUMBER AT RISK                                      | WORKX.SUMMARY_STATS total obs=4                                  */
/* Year  day0 day60 day120 day180 day240 day300 day360 |                                                                  */
/*                                                     | Year   N  Events Event_Rate       Median_CI      HR_CI           */
/* 2014 50000 30865  18359  10561   5457   2190      0 |                                                                  */
/* 2015 50000 31493  19430  11251   6082   2552      0 | 2014 50000 11806 11806/50000 278.0 (275.0-281.0) Reference       */
/* 2016 50000 31527  19396  11472   6118   2508      0 | 2015 50000 10915 10915/50000 294.0 (291.0-298.0) 0.87 (0.85-0.90)*/
/* 2017 50000 29784  17319   9945   5178   2089      0 | 2016 50000 10295 10295/50000 299.0 (297.0-302.0) 0.82 (0.80-0.84)*/
/*                                                     | 2017 50000  7664 7664/50000  325.0 (322.0-330.0) 0.68 (0.66-0.70)*/
/* SUMMARY STATISTICS:                                 |                                                                  */
/*                                                     | WORKX.ANNOTATION_TABLE total obs=5 (has P value)                 */
/*   Year      N Events Event_Rate                     |                                                                  */
/*                                                     |  Year   Events_N           Median_CI         HR_CI               */
/* 1 2014  50000  11806 11806/50000                    |                                                                  */
/* 2 2015  50000  10915 10915/50000                    |  2014  11806/50000    278.0 (275.0-281.0)    Reference           */
/* 3 2016  50000  10295 10295/50000                    |  2015  10915/50000    294.0 (291.0-298.0)    0.87 (0.85-0.90)    */
/* 4 2017  50000   7664 7664/50000                     |  2016  10295/50000    299.0 (297.0-302.0)    0.82 (0.80-0.84)    */
/*                                                     |  2017  7664/50000     325.0 (322.0-330.0)    0.68 (0.66-0.70)    */
/* MEDIAN SURVIVAL TIMES (Days):                       |  P-value: 0.0000***                                              */
/*                                                     |                                                                  */
/*   Year  Median_CI                                   |                                                                  */
/*                                                     | WORKX.RISK_TABLE total obs=4 01APR2026:15:13:10                  */
/* 1 2014  278.0 (275.0-281.0)                         |                                                                  */
/* 2 2015  294.0 (291.0-298.0)                         | Year  day0 day60 day120 day180 day240 day300 day360              */
/* 3 2016  299.0 (297.0-302.0)                         |                                                                  */
/* 4 2017  325.0 (322.0-330.0)                         | 2014 50000 30865  18359  10561  5457   2190     0                */
/*                                                     | 2015 50000 31493  19430  11251  6082   2552     0                */
/* HAZARD RATIOS (vs Reference Year):                  | 2016 50000 31527  19396  11472  6118   2508     0                */
/*   Year            HR_CI                             | 2017 50000 29784  17319   9945  5178   2089     0                */
/* 1 2014        Reference                             |                                                                  */
/* 2 2015 0.87 (0.85-0.90)                             |                                                                  */
/* 3 2016 0.82 (0.80-0.84)                             |                                                                  */
/* 4 2017 0.68 (0.66-0.70)                             |                                                                  */
/*                                                     |                                                                  */
/* LOG-RANK TEST:                                      |                                                                  */
/* Chi-square: 731.41                                  |                                                                  */
/* Degrees of freedom: 3                               |                                                                  */
/* P-value: 0.0000 0.0000***                           |                                                                  */
/**************************************************************************************************************************/

/*
| | ___   __ _
| |/ _ \ / _` |
| | (_) | (_| |
|_|\___/ \__, |
         |___/
*/

1                                          Altair SLC       15:45 Wednesday, April  1, 2026

NOTE: Copyright 2002-2025 World Programming, an Altair Company
NOTE: Altair SLC 2026 (05.26.01.00.000758)
      Licensed to Roger DeAngelis
NOTE: This session is executing on the X64_WIN11PRO platform and is running in 64 bit mode

NOTE: AUTOEXEC processing beginning; file is C:\wpsoto\autoexec.sas
NOTE: AUTOEXEC source line
1       +  ï»¿ods _all_ close;
           ^
ERROR: Expected a statement keyword : found "?"
NOTE: Library workx assigned as follows:
      Engine:        SAS7BDAT
      Physical Name: d:\wpswrkx

NOTE: Library slchelp assigned as follows:
      Engine:        WPD
      Physical Name: C:\Progra~1\Altair\SLC\2026\sashelp

NOTE: Library worksas assigned as follows:
      Engine:        SAS7BDAT
      Physical Name: d:\worksas

NOTE: Library workwpd assigned as follows:
      Engine:        WPD
      Physical Name: d:\workwpd


LOG:  15:45:40
NOTE: 1 record was written to file PRINT

NOTE: The data step took :
      real time : 0.030
      cpu time  : 0.000


NOTE: AUTOEXEC processing completed

1         options validvarname=v7;
2
3         libname kmp sas7bdat "d:/kmp";
NOTE: Library kmp assigned as follows:
      Engine:        SAS7BDAT
      Physical Name: d:\kmp

4         libname workx sas7bdat "d:/wpswrkx";
NOTE: Library workx assigned as follows:
      Engine:        SAS7BDAT
      Physical Name: d:\wpswrkx


Altair SLC

The DATASETS Procedure

         Directory

Libref           WORKX
Engine           SAS7BDAT
Physical Name    d:\wpswrkx

                                   Members

                                Member
  Number    Member Name         Type         File Size      Date Last Modified

------------------------------------------------------------------------------

       1    ANNOTATION_TABLE    DATA              9216      01APR2026:15:43:16
       2    RISK_TABLE          DATA              9216      01APR2026:15:43:16
       3    SUMMARY_STATS       DATA              9216      01APR2026:15:43:16
5
6         proc datasets lib=workx kill;
7         run;quit;
NOTE: Deleting WORKX.annotation_table (type=DATA)
NOTE: Deleting WORKX.risk_table (type=DATA)
NOTE: Deleting WORKX.summary_stats (type=DATA)
NOTE: Procedure datasets step took :
      real time : 0.035
      cpu time  : 0.031


8
9         %utlfkil(d:/pdf/kaplan_meier_style.pdf); /*--- kaplan meir plot ---*/
10
11        options set=RHOME "C:\Progra~1\R\R-4.5.2\bin\r";
12        proc r;
NOTE: Using R version 4.5.2 (2025-10-31 ucrt) from C:\Program Files\R\R-4.5.2
13        export data=kmp.sample_50000 r=infection_data;
NOTE: Creating R data frame 'infection_data' from data set 'KMP.sample_50000'

14        submit;
15        # Load required packages
16        library(tidyverse)
17        library(survival)
18        library(survminer)
19        library(gridExtra)
20        library(grid)
21        library(gtable)
22
23        # Ensure Year is a factor
24        infection_data$Year <- factor(infection_data$Year)
25        cat("Years in data:", paste(levels(infection_data$Year), collapse=", "), "\n")
26
27        # Fit Kaplan-Meier survival curves
28        km_fit <- survfit(Surv(time_to_event, Census) ~ Year, data = infection_data)
29
30        # Create annotation table data
31        summary_stats <- infection_data %>%
32          group_by(Year) %>%
33          summarise(
34            N = n(),
35            Events = sum(Census),
36            Event_Rate = sprintf("%d/%d", sum(Census), n())
37          )
38
39        # Median survival times
40        median_summary <- summary(km_fit)$table
41        summary_stats$Median_CI <- sapply(1:nrow(median_summary), function(i) {
42          med <- median_summary[i, "median"]
43          lcl <- median_summary[i, "0.95LCL"]
44          ucl <- median_summary[i, "0.95UCL"]
45          if(is.na(med)) return("NE")
46          if(is.na(lcl)) return(sprintf("%.1f (%.1f-NE)", med, med))
47          return(sprintf("%.1f (%.1f-%.1f)", med, lcl, ucl))
48        })
49
50        # Hazard Ratios from Cox model
51        cox_model <- coxph(Surv(time_to_event, Census) ~ Year, data = infection_data)
52        cox_summary <- summary(cox_model)
53
54        hr_values <- c("Reference")
55        for(i in 2:length(levels(infection_data$Year))) {
56          idx <- i - 1
57          hr <- exp(cox_summary$coefficients[idx, "coef"])
58          lower <- exp(cox_summary$coefficients[idx, "coef"] - 1.96 * cox_summary$coefficients[idx, "se(coef)"])
59          upper <- exp(cox_summary$coefficients[idx, "coef"] + 1.96 * cox_summary$coefficients[idx, "se(coef)"])
60          hr_values[i] <- sprintf("%.2f (%.2f-%.2f)", hr, lower, upper)
61        }
62        summary_stats$HR_CI <- hr_values
63
64        # P-value from log-rank test
65        logrank_test <- survdiff(Surv(time_to_event, Census) ~ Year, data = infection_data)
66        p_value <- 1 - pchisq(logrank_test$chisq, df = length(logrank_test$n) - 1)
67
68        p_formatted <- formatC(p_value, format = "f", digits = 4)
69        p_with_asterisks <- if(p_value < 0.001) {
70          paste0(p_formatted, "***")
71        } else if(p_value < 0.01) {
72          paste0(p_formatted, "**")
73        } else if(p_value < 0.05) {
74          paste0(p_formatted, "*")
75        } else {
76          p_formatted
77        }
78
79        # Create annotation table
80        annotation_display <- data.frame(
81          Year = summary_stats$Year,
82          Events_N = summary_stats$Event_Rate,
83          Median_CI = summary_stats$Median_CI,
84          HR_CI = summary_stats$HR_CI,
85          stringsAsFactors = FALSE
86        )
87
88        p_row <- data.frame(
89          Year = paste0("P-value: ", p_with_asterisks),
90          Events_N = "",
91          Median_CI = "",
92          HR_CI = "",
93          stringsAsFactors = FALSE
94        )
95        annotation_display <- rbind(annotation_display, p_row)
96
97        # Create table grob for annotation
98        annotation_grob <- tableGrob(
99          annotation_display,
100         rows = NULL,
101         theme = ttheme_minimal(
102           base_size = 10,
103           core = list(
104             fg_params = list(cex = 1, fontface = "plain"),
105             bg_params = list(fill = c("white", "grey98"))
106           ),
107           colhead = list(
108             fg_params = list(cex = 1, fontface = "bold"),
109             bg_params = list(fill = "grey85")
110           )
111         )
112       )
113
114       # ============================================================
115       # CREATE KAPLAN-MEIER PLOT WITH REDUCED RISK TABLE SPACING
116       # ============================================================
117
118       # Create Kaplan-Meier plot with custom theme for risk table
119       km_plot <- ggsurvplot(
120         km_fit,
121         data = infection_data,
122         conf.int = TRUE,
123         conf.int.style = "ribbon",
124         conf.int.alpha = 0.15,
125         pval = FALSE,
126         risk.table = TRUE,
127         risk.table.col = "strata",  # Color rows by strata
128         risk.table.height = 0.20,    # Reduce table height
129         risk.table.y.text.col = TRUE,
130         risk.table.y.text = TRUE,
131         risk.table.title = "Number at risk",
132         risk.table.fontsize = 4,
133         surv.median.line = "hv",
134         palette = c("#1f77b4", "#ff7f0e", "#2ca02c", "#d62728"),
135         xlab = "Days",
136         ylab = "Survival Probability",
137         title = "Time to Infection by Year",
138         subtitle = "Kaplan-Meier Survival Estimates",
139         legend.title = "Year",
140         legend.labs = levels(infection_data$Year),
141         break.time.by = 60,
142         xlim = c(0, 360),
143         ylim = c(0, 1),
144         ggtheme = theme_classic() +
145           theme(
146             plot.title = element_text(hjust = 0.5, face = "bold", size = 14),
147             plot.subtitle = element_text(hjust = 0.5, size = 11, color = "grey40"),
148             legend.position = c(0.85, 0.85),
149             legend.background = element_rect(fill = "white", color = "black", linewidth = 0.05),
150             legend.key.size = unit(0.8, "lines"),
151             legend.title = element_text(size = 9),
152             legend.text = element_text(size = 8),
153             axis.title = element_text(size = 11),
154             axis.text = element_text(size = 9),
155             panel.border = element_rect(fill = NA, color = "black", linewidth = 0.5),
156             panel.grid.major.y = element_line(color = "grey90", linewidth = 0.3),
157             panel.grid.minor.y = element_blank()
158           )
159       )
160
161       # Remove the risk table legend
162       km_plot$table <- km_plot$table + theme(legend.position = "none")
163
164       # Extract components
165       risk_table <- km_plot$table
166       main_plot <- km_plot$plot
167
168       # Add annotation table to main plot
169       final_plot <- main_plot +
170         annotation_custom(
171           annotation_grob,
172           xmin = 0, xmax = 240,
173           ymin = 0.02, ymax = 0.38
174         ) +
175         annotate(
176           "text",
177           x = 0, y = 0.42,
178           label = "Days until an Infection",
179           size = 4,
180           fontface = "bold",
181           hjust = 0,
182           color = "black"
183         )
184
185       # Combine with risk table - use tighter height
186       combined_plot <- arrangeGrob(
187         final_plot,
188         risk_table,
189         nrow = 2,
190         heights = c(0.78, 0.18)  # Reduced height for tighter table
191       )
192
193       # Add "Number at risk" label
194       risk_label <- textGrob(
195         "Number at risk",
196         gp = gpar(fontsize = 7, fontface = "bold"),
197         x = unit(0.02, "npc"),
198         y = unit(0.98, "npc"),
199         just = "left"
200       )
201
202       # Final combined output
203       final_output <- arrangeGrob(
204         combined_plot,
205         top = risk_label
206       )
207
208       # Display and save
209       print(final_output)
210
211       ggsave(
212         "d:/pdf/kaplan_meier_style.pdf",
213         final_output,
214         width = 8,
215         height = 10,
216         dpi = 300,
217         bg = "white"
218       )
219
220       risk_table_data <- km_plot$data.survtable
221
222       risk_table_wide <- risk_table_data %>%
223         select(Year, time, n.risk) %>%
224         pivot_wider(
225           id_cols = Year,
226           names_from = time,
227           values_from = n.risk,
228           names_prefix = "day"
229         ) %>%
230         arrange(Year)
231
232       print(risk_table_wide)
233
234       # Print results to log
235       cat("\n", paste(rep("=", 70), collapse = ""), "\n")
236       cat("KAPLAN-MEIER ANALYSIS RESULTS\n")
237       cat(paste(rep("=", 70), collapse = ""), "\n\n")
238
239       cat("SUMMARY STATISTICS:\n")
240       print(summary_stats[, c("Year", "N", "Events", "Event_Rate")])
241       cat("\n")
242
243       cat("MEDIAN SURVIVAL TIMES (Days):\n")
244       print(summary_stats[, c("Year", "Median_CI")])
245       cat("\n")
246
247       cat("HAZARD RATIOS (vs Reference Year):\n")
248       print(data.frame(Year = summary_stats$Year, HR_CI = summary_stats$HR_CI))
249       cat("\n")
250
251       cat("LOG-RANK TEST:\n")
252       cat(sprintf("Chi-square: %.2f\n", logrank_test$chisq))
253       cat(sprintf("Degrees of freedom: %d\n", length(logrank_test$n) - 1))
254       cat(sprintf("P-value: %.4f %s\n", p_value, p_with_asterisks))
255       cat("\n")
256
257       cat(paste(rep("=", 70), collapse = ""), "\n")
258       cat("Plot saved as: d:/pdf/kaplan_meier_style.pdf\n")
259       cat(paste(rep("=", 70), collapse = ""), "\n")
260
261       endsubmit;

NOTE: Submitting statements to R:

> # Load required packages
> library(tidyverse)
-- Attaching core tidyverse packages ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- tidyverse 2.0.0 --
v dplyr     1.2.0     v readr     2.2.0
v forcats   1.0.1     v stringr   1.6.0
v ggplot2   4.0.2     v tibble    3.3.1
v lubridate 1.9.5     v tidyr     1.3.2
v purrr     1.2.1
-- Conflicts ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- tidyverse_conflicts() --
x dplyr::filter() masks stats::filter()
x dplyr::lag()    masks stats::lag()
i Use the conflicted package (<http://conflicted.r-lib.org/>) to force all conflicts to become errors
> library(survival)
Warning message:
package 'survival' was built under R version 4.5.3
> library(survminer)
Loading required package: ggpubr
Attaching package: 'survminer'
The following object is masked from 'package:survival':
    myeloma
Warning messages:
1: package 'survminer' was built under R version 4.5.3
2: package 'ggpubr' was built under R version 4.5.3
> library(gridExtra)
Attaching package: 'gridExtra'
The following object is masked from 'package:dplyr':
    combine
Warning message:
package 'gridExtra' was built under R version 4.5.3
> library(grid)
> library(gtable)
Warning message:
package 'gtable' was built under R version 4.5.3
>
> # Ensure Year is a factor
> infection_data$Year <- factor(infection_data$Year)
> cat("Years in data:", paste(levels(infection_data$Year), collapse=", "), "\n")
>
> # Fit Kaplan-Meier survival curves
> km_fit <- survfit(Surv(time_to_event, Census) ~ Year, data = infection_data)
>
> # Create annotation table data
> summary_stats <- infection_data %>%
+   group_by(Year) %>%
+   summarise(
+     N = n(),
+     Events = sum(Census),
+     Event_Rate = sprintf("%d/%d", sum(Census), n())
+   )
>
> # Median survival times
> median_summary <- summary(km_fit)$table
> summary_stats$Median_CI <- sapply(1:nrow(median_summary), function(i) {
+   med <- median_summary[i, "median"]
+   lcl <- median_summary[i, "0.95LCL"]
+   ucl <- median_summary[i, "0.95UCL"]
+   if(is.na(med)) return("NE")
+   if(is.na(lcl)) return(sprintf("%.1f (%.1f-NE)", med, med))
+   return(sprintf("%.1f (%.1f-%.1f)", med, lcl, ucl))
+ })
>
> # Hazard Ratios from Cox model
> cox_model <- coxph(Surv(time_to_event, Census) ~ Year, data = infection_data)
> cox_summary <- summary(cox_model)
>
> hr_values <- c("Reference")
> for(i in 2:length(levels(infection_data$Year))) {
+   idx <- i - 1
+   hr <- exp(cox_summary$coefficients[idx, "coef"])
+   lower <- exp(cox_summary$coefficients[idx, "coef"] - 1.96 * cox_summary$coefficients[idx, "se(coef)"])
+   upper <- exp(cox_summary$coefficients[idx, "coef"] + 1.96 * cox_summary$coefficients[idx, "se(coef)"])
+   hr_values[i] <- sprintf("%.2f (%.2f-%.2f)", hr, lower, upper)
+ }
> summary_stats$HR_CI <- hr_values
>
> # P-value from log-rank test
> logrank_test <- survdiff(Surv(time_to_event, Census) ~ Year, data = infection_data)
> p_value <- 1 - pchisq(logrank_test$chisq, df = length(logrank_test$n) - 1)
>
> p_formatted <- formatC(p_value, format = "f", digits = 4)
> p_with_asterisks <- if(p_value < 0.001) {
+   paste0(p_formatted, "***")
+ } else if(p_value < 0.01) {
+   paste0(p_formatted, "**")
+ } else if(p_value < 0.05) {
+   paste0(p_formatted, "*")
+ } else {
+   p_formatted
+ }
>
> # Create annotation table
> annotation_display <- data.frame(
+   Year = summary_stats$Year,
+   Events_N = summary_stats$Event_Rate,
+   Median_CI = summary_stats$Median_CI,
+   HR_CI = summary_stats$HR_CI,
+   stringsAsFactors = FALSE
+ )
>
> p_row <- data.frame(
+   Year = paste0("P-value: ", p_with_asterisks),
+   Events_N = "",
+   Median_CI = "",
+   HR_CI = "",
+   stringsAsFactors = FALSE
+ )
> annotation_display <- rbind(annotation_display, p_row)
>
> # Create table grob for annotation
> annotation_grob <- tableGrob(
+   annotation_display,
+   rows = NULL,
+   theme = ttheme_minimal(
+     base_size = 10,
+     core = list(
+       fg_params = list(cex = 1, fontface = "plain"),
+       bg_params = list(fill = c("white", "grey98"))
+     ),
+     colhead = list(
+       fg_params = list(cex = 1, fontface = "bold"),
+       bg_params = list(fill = "grey85")
+     )
+   )
+ )
>
> # ============================================================
> # CREATE KAPLAN-MEIER PLOT WITH REDUCED RISK TABLE SPACING
> # ============================================================
>
> # Create Kaplan-Meier plot with custom theme for risk table
> km_plot <- ggsurvplot(
+   km_fit,
+   data = infection_data,
+   conf.int = TRUE,
+   conf.int.style = "ribbon",
+   conf.int.alpha = 0.15,
+   pval = FALSE,
+   risk.table = TRUE,
+   risk.table.col = "strata",  # Color rows by strata
+   risk.table.height = 0.20,    # Reduce table height
+   risk.table.y.text.col = TRUE,
+   risk.table.y.text = TRUE,
+   risk.table.title = "Number at risk",
+   risk.table.fontsize = 4,
+   surv.median.line = "hv",
+   palette = c("#1f77b4", "#ff7f0e", "#2ca02c", "#d62728"),
+   xlab = "Days",
+   ylab = "Survival Probability",
+   title = "Time to Infection by Year",
+   subtitle = "Kaplan-Meier Survival Estimates",
+   legend.title = "Year",
+   legend.labs = levels(infection_data$Year),
+   break.time.by = 60,
+   xlim = c(0, 360),
+   ylim = c(0, 1),
+   ggtheme = theme_classic() +
+     theme(
+       plot.title = element_text(hjust = 0.5, face = "bold", size = 14),
+       plot.subtitle = element_text(hjust = 0.5, size = 11, color = "grey40"),
+       legend.position = c(0.85, 0.85),
+       legend.background = element_rect(fill = "white", color = "black", linewidth = 0.05),
+       legend.key.size = unit(0.8, "lines"),
+       legend.title = element_text(size = 9),
+       legend.text = element_text(size = 8),
+       axis.title = element_text(size = 11),
+       axis.text = element_text(size = 9),
+       panel.border = element_rect(fill = NA, color = "black", linewidth = 0.5),
+       panel.grid.major.y = element_line(color = "grey90", linewidth = 0.3),
+       panel.grid.minor.y = element_blank()
+     )
+ )
>
> # Remove the risk table legend
> km_plot$table <- km_plot$table + theme(legend.position = "none")
>
> # Extract components
> risk_table <- km_plot$table
> main_plot <- km_plot$plot

2                                                                                                                         Altair SLC

>
> # Add annotation table to main plot
> final_plot <- main_plot +
+   annotation_custom(
+     annotation_grob,
+     xmin = 0, xmax = 240,
+     ymin = 0.02, ymax = 0.38
+   ) +
+   annotate(
+     "text",
+     x = 0, y = 0.42,
+     label = "Days until an Infection",
+     size = 4,
+     fontface = "bold",
+     hjust = 0,
+     color = "black"
+   )
>
> # Combine with risk table - use tighter height
> combined_plot <- arrangeGrob(
+   final_plot,
+   risk_table,
+   nrow = 2,
+   heights = c(0.78, 0.18)  # Reduced height for tighter table
+ )
>
> # Add "Number at risk" label
> risk_label <- textGrob(
+   "Number at risk",
+   gp = gpar(fontsize = 7, fontface = "bold"),
+   x = unit(0.02, "npc"),
+   y = unit(0.98, "npc"),
+   just = "left"
+ )
>
> # Final combined output
> final_output <- arrangeGrob(
+   combined_plot,
+   top = risk_label
+ )
>
> # Display and save
> print(final_output)
>
> ggsave(
+   "d:/pdf/kaplan_meier_style.pdf",
+   final_output,
+   width = 8,
+   height = 10,
+   dpi = 300,
+   bg = "white"
+ )
>
> risk_table_data <- km_plot$data.survtable
>
> risk_table_wide <- risk_table_data %>%
+   select(Year, time, n.risk) %>%
+   pivot_wider(
+     id_cols = Year,
+     names_from = time,
+     values_from = n.risk,
+     names_prefix = "day"
+   ) %>%
+   arrange(Year)
>
> print(risk_table_wide)
>
> # Print results to log
> cat("\n", paste(rep("=", 70), collapse = ""), "\n")
> cat("KAPLAN-MEIER ANALYSIS RESULTS\n")
> cat(paste(rep("=", 70), collapse = ""), "\n\n")
>
> cat("SUMMARY STATISTICS:\n")
> print(summary_stats[, c("Year", "N", "Events", "Event_Rate")])
> cat("\n")
>
> cat("MEDIAN SURVIVAL TIMES (Days):\n")
> print(summary_stats[, c("Year", "Median_CI")])
> cat("\n")
>
> cat("HAZARD RATIOS (vs Reference Year):\n")
> print(data.frame(Year = summary_stats$Year, HR_CI = summary_stats$HR_CI))
> cat("\n")
>
> cat("LOG-RANK TEST:\n")
> cat(sprintf("Chi-square: %.2f\n", logrank_test$chisq))
> cat(sprintf("Degrees of freedom: %d\n", length(logrank_test$n) - 1))
> cat(sprintf("P-value: %.4f %s\n", p_value, p_with_asterisks))
> cat("\n")
>
> cat(paste(rep("=", 70), collapse = ""), "\n")
> cat("Plot saved as: d:/pdf/kaplan_meier_style.pdf\n")
> cat(paste(rep("=", 70), collapse = ""), "\n")
>

NOTE: Processing of R statements complete
NOTE: Successfully written image R Plot 1.jpeg

262       import r=summary_stats data=workx.summary_stats;
NOTE: Creating data set 'WORKX.summary_stats' from R data frame 'summary_stats'
NOTE: Data set "WORKX.summary_stats" has 4 observation(s) and 6 variable(s)

263       import r=annotation_display data=workx.annotation_table;
NOTE: Creating data set 'WORKX.annotation_table' from R data frame 'annotation_display'
NOTE: Data set "WORKX.annotation_table" has 5 observation(s) and 4 variable(s)

264       import r=risk_table_wide data=workx.risk_table;
NOTE: Creating data set 'WORKX.risk_table' from R data frame 'risk_table_wide'
NOTE: Data set "WORKX.risk_table" has 4 observation(s) and 8 variable(s)

265
266       run;
NOTE: Procedure r step took :
      real time : 8.052
      cpu time  : 0.062


267
ERROR: Error printed on page 1

NOTE: Submitted statements took :
      real time : 8.195
      cpu time  : 0.187

/*              _
  ___ _ __   __| |
 / _ \ `_ \ / _` |
|  __/ | | | (_| |
 \___|_| |_|\__,_|

*/
