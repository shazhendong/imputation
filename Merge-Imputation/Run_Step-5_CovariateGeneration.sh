
plink --vcf new_allchromosomes.converted.R2_0.3.vcf.gz --memory 119500 --threads 8 --double-id --maf 0.01 --make-bed --out new_allchromosomes.converted.R2_0.3.MAF_0.01
plink -bfile new_allchromosomes.converted.R2_0.3.MAF_0.01 --indep-pairwise 1000 10 0.2 --autosome --out pruned_data
plink -bfile new_allchromosomes.converted.R2_0.3.MAF_0.01 --extract pruned_data.prune.in --make-bed --out new_allchromosomes.converted.R2_0.3.MAF_0.01.ld
#plink -bfile new_allchromosomes.converted.R2_0.3.MAF_0.01.ld --biallelic-only strict mult.snps --make-bed --out new_allchromosomes.converted.R2_0.3.MAF_0.01.ld.no_multi-allel
