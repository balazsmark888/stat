function Histogram(sequence)

bin_count = length(sequence);
[frequency,bins] = hist(sequence,bin_count);
bar(bins,frequency);