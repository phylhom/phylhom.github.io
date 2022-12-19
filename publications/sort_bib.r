# Load the bibtex library
library(bibtex)

# Read in the BibTeX file
bib_file <- read.bib("publications/FME_publications.bib")

# Extract the year field from each entry
years <- sapply(bib_file, function(x) x$year)

# Sort the entries by year in descending order
bib_file <- bib_file[rev(order(years)),]

# Write the sorted BibTeX file to a new file
write.bib(bib_file, file = "publications/FME_publications_sorted.bib")
