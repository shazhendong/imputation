
plink --vcf new_allchromosomes.converted.R2_0.3.vcf.gz --memory 119500 --threads 8 --double-id --maf 0.05 --make-bed --out new_allchromosomes.converted.R2_0.3.MAF_0.05
plink -bfile new_allchromosomes.converted.R2_0.3.MAF_0.05 --indep-pairwise 5000 50 0.2 --autosome --out pruned_data
plink -bfile new_allchromosomes.converted.R2_0.3.MAF_0.05 --extract pruned_data.prune.in --make-bed --out new_allchromosomes.converted.R2_0.3.MAF_0.05.ld_02
#plink -bfile new_allchromosomes.converted.R2_0.3.MAF_0.01.ld --biallelic-only strict mult.snps --make-bed --out new_allchromosomes.converted.R2_0.3.MAF_0.01.ld.no_multi-allel
