---
title: "How to automate processing of sanger sequencing data in R"
author: "Adrian Forsythe"
permalink: /posts/2022/05/sangeranalyseR-demo/
date: "2022-05-21"
---

- adapted from sangeranalyseR, see: https://github.com/roblanf/sangeranalyseR

```{r setup, include=FALSE}
knitr::opts_chunk$set(echo = TRUE)
```

```{r echo=FALSE, eval=TRUE, warning=FALSE,message=FALSE,error=FALSE}
# LIBS ----
library(sangeranalyseR)
# requires that blast is installed on your system
library(rBLAST)
library(rentrez)
library(DECIPHER)
```

```{r echo=TRUE, eval=TRUE, warning=FALSE,message=FALSE,error=FALSE}
source('~/PhD/Anti-Pd/inhibition/SangerAnalysis/consensus/stubs.R')
# setwd("inhibition/SangerAnalysis/TR_sequencingresults/full_inhibitors/round2")
```

- Set variables for input folders
- PARSE FOLDERS and list all .AB1 files

```{r echo=TRUE, eval=TRUE, warning=FALSE,message=FALSE,error=FALSE}
fwd_fldr <- 'sanger_data/forward'
rev_fldr <- 'sanger_data/reverse'

fwd_files <- list.files(path = fwd_fldr, pattern = '.AB1')
rev_files <- list.files(path = rev_fldr, pattern = '.AB1')
```

- name the vectors by the IDs
- format of files names may be different

```{r echo=TRUE, eval=TRUE, warning=FALSE,message=FALSE,error=FALSE}
names(fwd_files) <-
  gsub(pattern = ".*_",replacement="",
  gsub(pattern = "-(.*)",replacement="",fwd_files)
  )
names(rev_files) <-
  gsub(pattern = ".*_",replacement="",
       gsub(pattern = "-(.*)",replacement="",rev_files)
       )

if (!all(names(rev_files) %in% names(fwd_files)) &
    !all(names(fwd_files) %in% names(rev_files))) {
  warning('Not all names are shared between fwd and rev')
}
```

- blast db
- download from: https://www.arb-silva.de/no_cache/download/archive/current/Exports/
- make sure to index the fasta file first

```{r echo=TRUE, eval=TRUE, warning=FALSE,message=FALSE,error=FALSE}
makeblastdb(file="blast/SILVA_138.1_SSURef_NR99_tax_silva.fasta",dbtype = "nucl")
bl <- blast(db = "blast/SILVA_138.1_SSURef_NR99_tax_silva.fasta",type = "blastn")
```

# LOOP ----

```{r echo=TRUE, eval=TRUE, warning=FALSE,message=FALSE,error=FALSE}
conseqs <- vector(mode = 'list', length = length(rev_files))
names(conseqs) <- names(rev_files)

blast_results <- vector(mode = 'list', length = length(rev_files))
names(blast_results) <- names(rev_files)

for (nm in names(rev_files)[1]) {
  cat('.... working on [', nm, ']\n', sep = '')
  fwd_file <- fwd_files[[nm]]
  rev_file <- rev_files[[nm]]
  fwd <- readsangerseq(filename = file.path(fwd_fldr, fwd_file))
  rev <- readsangerseq(filename = file.path(rev_fldr, rev_file))
  fwd_edit<-makeBaseCalls(fwd)
  fwd_edit <- primarySeq(fwd_edit)

  rev_edit<-makeBaseCalls(rev)
  rev_edit <- primarySeq(rev_edit)

  # get reverse complement
  rev_edit <- reverseComplement(rev_edit)

  # get unaligned set of the reads we wish to merge
  reads <- DNAStringSet(c(as.character(fwd_edit), as.character(rev_edit)))
  names(reads) <- c('fwd', 'rev')

  # merge F and R reads
  merged_reads <- merge.reads(reads)

  spliced_reads<-DNAString(c(merged_reads$alignment$fwd[1:round(length(merged_reads$consensus)/2)],
  merged_reads$alignment$rev[(round(length(merged_reads$consensus)/2)+1):length(merged_reads$consensus)]))

  # add to store
  # conseqs[[nm]] <- merged_reads[['consensus']]
  # conseqs[[nm]] <- merged_reads[['alignment']]
  conseqs[[nm]] <- spliced_reads

  # run BLAST
  nuc_blast <- predict(bl, DNAStringSet(conseqs[nm]),)[1,]
  esum<-entrez_summary(db = "nuccore",id = gsub(pattern = "\\.[^.]*$",replacement="",x=as.character(nuc_blast$SubjectID)))
  nuc_blast$species<-esum$organism
  blast_results[[nm]] <- nuc_blast
}
```

# BLAST results

```{r}
blast_results
```

# make string set

```{r echo=TRUE, eval=TRUE, warning=FALSE,message=FALSE,error=FALSE}
conseqs <- Filter(length, conseqs)
print(conseqs)

# if you want to remove gaps
# conseqs <- RemoveGaps(DNAStringSet(conseqs))
```

- write results to file

```{r echo=TRUE, eval=TRUE, warning=FALSE,message=FALSE,error=FALSE}
write.csv(do.call(rbind,blast_results),"results/full_inhibitors.csv")
writeXStringSet(x = DNAStringSet(conseqs), filepath = 'results/consensus.fa')
```