# This file perform quality control for GWAS, following procedures provided in 
# Turner, Stephen, et al. "Quality control procedures for genome‐wide association studies." Current protocols in human genetics 68.1 (2011): 1-19.
# This sh is prepared for coloncancer_gwas GWAS

#module load nixpkgs/16.09
#module load plink/1.9b_4.1-x86_64 # load plink
#module load gcc/7.3.0 r/4.0.2 # load R

#### Sample quality control ####

# Sex inconsistencies

plink --bfile coloncancer_gwas --check-sex --out QC_sexcheck
grep "PROBLEM" QC_sexcheck.sexcheck > sexcheck_failedRows.txt
awk '{ print $1, $2 }' sexcheck_failedRows.txt > sexcheck_removeIndi.txt # save removed individual
plink --bfile coloncancer_gwas --remove sexcheck_removeIndi.txt --make-bed --out GWAS_QC_sexcheck

# Sample Heterozygosity
# remove individuals that have a het _three std away_ from the mean!

plink --bfile GWAS_QC_sexcheck --het
Rscript heterozygosity_outliers_list.R # save removed Heterozygosity individual to fail-het-qc.txt
plink --bfile GWAS_QC_sexcheck --remove fail-het-qc.txt --make-bed --out GWAS_QC_subjHete


#### SNP quality control ####

# Marker genotyping call rate

plink --bfile GWAS_QC_subjHete --geno 0.05 --make-bed --out GWAS_QC_SNP_missGenotype

# Sample genotyping call rate

plink --bfile GWAS_QC_SNP_missGenotype --mind 0.01 --make-bed --out GWAS_QC_subj_missGenotype

# Minor Allele Frequency
plink --bfile GWAS_QC_subj_missGenotype --maf 0.01 --make-bed --out GWAS_QC_MAF

# Hardy-Weinberg Equilibrium
#plink --bfile GWAS_QC_MAF --hwe 1e-06 --make-bed --out GWAS_QC_HWE

# Linkage disequilibrium

# Window-size = 2000
# Step-size = 200
# r^2 = 0.6

#plink --bfile GWAS_QC_HWE --indep-pairwise 2000 200 0.6 --out ld-clean
#plink --bfile GWAS_QC_HWE --extract ld-clean.prune.in --make-bed --out GWAS_QC_LD

#### Batch Effects ####

# Ommit

#### Change file name ####

mv GWAS_QC_MAF.bed coloncancer_gwas_QC.bed
mv GWAS_QC_MAF.bim coloncancer_gwas_QC.bim
mv GWAS_QC_MAF.fam coloncancer_gwas_QC.fam

#### Create frequency file ####

plink --freq --bfile coloncancer_gwas_QC --out coloncancer_gwas_QC_freq-file