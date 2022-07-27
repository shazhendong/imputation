#concat combines all the chromosomes into a single file
#view filters by info score
#norm normalises indels. Split multiallelic sites into biallelic records. SNPs and indels merged into a single record
#create final gzipped VCF file and annotate. Remove original SNP ID and assign new SNP ID as chrom:position:ref:alt
rm *.gz
key=")lJchCRn9ON76d"
for chnum in {1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,X}
    do
    echo "Process chr$chnum!!"
    unzip -P $key chr_$chnum.zip 
    done

wget ftp://ftp-trace.ncbi.nih.gov/1000genomes/ftp/technical/reference/human_g1k_v37.fasta.gz
truncate -s 891946027 human_g1k_v37.fasta.gz
gunzip human_g1k_v37.fasta.gz

bcftools concat chr1.dose.vcf.gz chr2.dose.vcf.gz chr3.dose.vcf.gz chr4.dose.vcf.gz chr5.dose.vcf.gz chr6.dose.vcf.gz chr7.dose.vcf.gz chr8.dose.vcf.gz chr9.dose.vcf.gz chr10.dose.vcf.gz chr11.dose.vcf.gz chr12.dose.vcf.gz chr13.dose.vcf.gz chr14.dose.vcf.gz chr15.dose.vcf.gz chr16.dose.vcf.gz chr17.dose.vcf.gz chr18.dose.vcf.gz chr19.dose.vcf.gz chr20.dose.vcf.gz chr21.dose.vcf.gz chr22.dose.vcf.gz -Ou | 
bcftools view -Ou -i 'R2>0.3' |
bcftools norm -Ou -m -any |
bcftools norm -Ou -f  human_g1k_v37.fasta |
bcftools annotate -Oz -x ID -I +'%CHROM:%POS:%REF:%ALT' -o new_allchromosomes.converted.R2_0.3.vcf.gz