# GCf requency
# Shirin Jamshidi
# Oct 2017

# Load the DNA sequence from a file
dna_file <- "path/to/your/file.fasta"
dna_sequence <- readDNAStringSet(dna_file)

# Calculate the GC frequency for each sequence
gc_frequency <- sapply(dna_sequence, function(x) {
  gc_count <- sum(x == "G" | x == "C")
  gc_freq <- gc_count / length(x)
  return(gc_freq)
})

# Print the GC frequency for each sequence
print(gc_frequency)