bash GWAS_QC_coloncancer_gwas.sh # Depend on heterozygosity_outliers_list.R and GWAS_QC.sh
wget http://www.well.ox.ac.uk/~wrayner/tools/HRC-1000G-check-bim-v4.2.7.zip
unzip HRC-1000G-check-bim-v4.2.7.zip
wget ftp://ngs.sanger.ac.uk/production/hrc/HRC.r1-1/HRC.r1-1.GRCh37.wgs.mac5.sites.tab.gz
bgzip -d HRC.r1-1.GRCh37.wgs.mac5.sites.tab.gz
perl HRC-1000G-check-bim.pl -b merged_QC.bim -f merged_QC_freq-file.frq -r HRC.r1-1.GRCh37.wgs.mac5.sites.tab -h
bash Run-plink.sh 
bash Prep_vcf.sh # Depend on Prep_vcf.sh
bash Compress.sh # Depend on Compress.sh
mkdir gz
mv *vcf.gz gz