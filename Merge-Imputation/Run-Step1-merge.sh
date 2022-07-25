# Marker genotyping call rate
plink --bfile axiom_corect_nf_ab_20130612 --geno 0.05 --make-bed --out axiom_corect_nf_ab_20130612.geno_0.05
plink --bfile coloncancer_gwas --geno 0.05 --make-bed --out coloncancer_gwas.geno_0.05

# Minor Allele Frequency
plink --bfile axiom_corect_nf_ab_20130612.geno_0.05 --maf 0.01 --make-bed --out axiom_corect_nf_ab_20130612.geno_0.05.maf_0.01
plink --bfile coloncancer_gwas.geno_0.05 --maf 0.01 --make-bed --out coloncancer_gwas.geno_0.05.maf_0.01


plink --bfile axiom_corect_nf_ab_20130612.geno_0.05.maf_0.01 --bmerge coloncancer_gwas.geno_0.05.maf_0.01 --make-bed --out merge_t # try to merge get err message
plink --bfile axiom_corect_nf_ab_20130612.geno_0.05.maf_0.01 --exclude merge_t-merge.missnp  --make-bed --out axiom_corect_nf_ab_20130612.geno_0.05.maf_0.01.no_3plusalleles
plink --bfile coloncancer_gwas.geno_0.05.maf_0.01 --exclude merge_t-merge.missnp  --make-bed --out coloncancer_gwas.geno_0.05.maf_0.01.no_3plusalleles
plink --bfile axiom_corect_nf_ab_20130612.geno_0.05.maf_0.01.no_3plusalleles --bmerge coloncancer_gwas.geno_0.05.maf_0.01.no_3plusalleles --make-bed --out merged