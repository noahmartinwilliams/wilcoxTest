#! /usr/local/bin/Rscript --vanilla

# By Noah Williams
# last modified: 2018/07/07
# Assumptions: argument 1 is a text file with numbers in it with one number per line
# Assumptions: argument 2 is also a text file with numbers in it with one number per line
args <- commandArgs(trailingOnly = TRUE)

a0 <- args[1]
a1 <- args[2]

da <- scan(a0)
db <- scan(a1)

res <- wilcox.test(da, db, alternative="less")
print(res)
if (res$p.value < 0.05) {
	quit(status=1)
} else {
	quit(status=0)
}
