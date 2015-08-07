source_file <- "Source_Classification_Code.rds"
summary_file <- "summarySCC_PM25.rds"
list_files <- dir(".")
if (source_file %in% list_files && summary_file %in% list_files) {
  NEI <- readRDS(summary_file)
  SCC <- readRDS(source_file)
}
