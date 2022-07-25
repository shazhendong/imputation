mkdir QC_Statistics

wget https://imputationserver.sph.umich.edu/share/results/2208ecff046b3d8d722b883474c7fdc1b74c7658ecc478b38609028de116ebb0/snps-excluded.txt
wget https://imputationserver.sph.umich.edu/share/results/5d259714b105594f8b280ec3addba06ef5a3534aa8dfc80e16af48c50e64a6bd/typed-only.txt

mv *.txt QC_Statistics

mkdir Imputation_Results

wget https://imputationserver.sph.umich.edu/share/results/0b1c4efcb06bd23ee7d0668720caf939ade45d5d14274ae2c0b4d654401efe26/chr_1.zip
wget https://imputationserver.sph.umich.edu/share/results/32774077143166050adc06b19d604eec803237e8c72a684c2746e2be4bc601d1/chr_10.zip
wget https://imputationserver.sph.umich.edu/share/results/097746690cd3d5fbf97f33679f0c3b724c7079db3ee41383cdf7069e4af96bb7/chr_11.zip
wget https://imputationserver.sph.umich.edu/share/results/6289bdfd0acbae70da9f31702e6471fc108155bb5ca48f98c0c734c9da79960b/chr_12.zip
wget https://imputationserver.sph.umich.edu/share/results/e3a1e2f8dacfb6df6c8518cba0981495b421f5bc6be64ae2b0c3cf8bb72966eb/chr_13.zip
wget https://imputationserver.sph.umich.edu/share/results/dc2133d447c7f6cc4a107ad3432e7638def20aed32de53243a2935441cc48ba9/chr_14.zip
wget https://imputationserver.sph.umich.edu/share/results/0505e8975eb67d350b8ecf1081a2f67992ac3a5d0fae0c94b05962c0fd9dba82/chr_15.zip
wget https://imputationserver.sph.umich.edu/share/results/58df00b75467a448f413138cb250127683e86d47a3098e8b1775d8393f5210d4/chr_16.zip
wget https://imputationserver.sph.umich.edu/share/results/7fe979dd0958471891f161f7eff3cc3a80458a9b2ec13eb7347657d1575f9cfe/chr_17.zip
wget https://imputationserver.sph.umich.edu/share/results/1187d59256b98d233c3769cfcba45d5f202bdf2fd0f08c7976bab84ba94b9f4a/chr_18.zip
wget https://imputationserver.sph.umich.edu/share/results/d544c3cb3dc92acc28a4641ba68852028ee60cc9df3b02afcf7e5eeba4392cea/chr_19.zip
wget https://imputationserver.sph.umich.edu/share/results/7be3259e7f43eae76d19daf00d2e3f862bb6bfeed0fe4520b7be3536b5be77bc/chr_2.zip
wget https://imputationserver.sph.umich.edu/share/results/98124223d6ead511c2b882ebef3bd06347ad97764ebb9df354b99b7fd5e675b7/chr_20.zip
wget https://imputationserver.sph.umich.edu/share/results/81db6d5cd65bfb229968d6f29d357515ed28d1061fc4e0579c3f0ea7c2795d76/chr_21.zip
wget https://imputationserver.sph.umich.edu/share/results/80afa567a63d0d588c21dc84379d957ded4294344aabb1483915373a9d43e936/chr_22.zip
wget https://imputationserver.sph.umich.edu/share/results/1b43ff2e7b44b928818f3711f574a65355a1ae52555a33cbceaa7667cbbf781c/chr_3.zip
wget https://imputationserver.sph.umich.edu/share/results/edbf97ec96a26883a8f4cffdcd85e99847a4082ec9eafa92ffb26be097a408c8/chr_4.zip
wget https://imputationserver.sph.umich.edu/share/results/99020f3519ab6211e92a1026ce7effae3422e892f317cff9181888954f7c6731/chr_5.zip
wget https://imputationserver.sph.umich.edu/share/results/b18ebd569f221b8377fbab3c4c6525d9cbce84ef47dedcf918234d4b76b9477c/chr_6.zip
wget https://imputationserver.sph.umich.edu/share/results/41b9ee7bc18f2640dbc62a0b2ec1fde8b1e014a19ebd63adf98eb8f9bcb37333/chr_7.zip
wget https://imputationserver.sph.umich.edu/share/results/678d1d2c82b1de7068d149336d0af980197379f198d8659f6c491cbc5e70cb7b/chr_8.zip
wget https://imputationserver.sph.umich.edu/share/results/8caa2ddc1dfd096da6a6092be854c30b8eb0930b9fab97f92a2c448d0948612a/chr_9.zip
wget https://imputationserver.sph.umich.edu/share/results/4e67a03033725de1212e7342885efaa8f55fae234edfbbc4fbeb1516ce885c5a/chr_X.zip
wget https://imputationserver.sph.umich.edu/share/results/f133a361a9e74747faf12d911f7a8fabcdd4d7399e77f5e61d90f3111d741e9b/results.md5

for f in *.zip
do
    echo "Unzip $f"
    Unzip -P eEkjk96cDCBQRI $f
done
mv chr* Imputation_Results
mv results.md5 Imputation_Results

mkdir Logs

wget https://imputationserver.sph.umich.edu/share/results/62f4b55e9f2b8b753275669d6eeec4f9147a133f097b52d710a017aa6c3a9d03/chr_1.log
wget https://imputationserver.sph.umich.edu/share/results/5117964543a4591bb58d75cb725bf7708b733b4e695ebc3fb0c7f91b7671fb44/chr_10.log
wget https://imputationserver.sph.umich.edu/share/results/ed020e7a3e58817b38467ce80c084ef5be9d9e965f53affa0e71132e646f426e/chr_11.log
wget https://imputationserver.sph.umich.edu/share/results/de6e13ef6d51f5f0ec035a88bc38a0bee07bbf194698ce182baa1b9a1f47a8e4/chr_12.log
wget https://imputationserver.sph.umich.edu/share/results/661862ef23f4d26d2837618d08c63a52b1884902fb666db7fd1bcbce8aaf99aa/chr_13.log
wget https://imputationserver.sph.umich.edu/share/results/67b70edced99003b1aa479aa5a97d779a9e538ab820d61bf4841b84db72b0993/chr_14.log
wget https://imputationserver.sph.umich.edu/share/results/41245b95801b551ba7af34eecbdacdf7407e22cae9eaa592357b2c2ab718a324/chr_15.log
wget https://imputationserver.sph.umich.edu/share/results/109d308919566204f02503e7abd7826a4ddcb1708a4651f85514bbe388eb13f4/chr_16.log
wget https://imputationserver.sph.umich.edu/share/results/71e36167301c7170c22d0bf0277b02347c0f4bcc42d9e8c22e3a0f196fc9903b/chr_17.log
wget https://imputationserver.sph.umich.edu/share/results/2d769147ae60d1dd0f6ecad5c85b256d8f6790b4c95d326f5a6f383b49ae26d9/chr_18.log
wget https://imputationserver.sph.umich.edu/share/results/94470c582df21a5ab086c9af32254226e4288639cd2ddeb087ac029017cef27f/chr_19.log
wget https://imputationserver.sph.umich.edu/share/results/c6d223f80ba7d1a27ea818694e71c8a0d7e03bab073371d785c3d684923a4494/chr_2.log
wget https://imputationserver.sph.umich.edu/share/results/5b47fdf6cc9fac5530fefff77c0b7c07cbeea6aac55bb7ec5c36116f0ce642b8/chr_20.log
wget https://imputationserver.sph.umich.edu/share/results/ad27f16857d4b3fa960dbfdb0d00b819deb5a539aed8ec8fb6466cd68bf23e7c/chr_21.log
wget https://imputationserver.sph.umich.edu/share/results/ba88025de6206bb9cd8f27a1aa350439efcdc889331f1469c96ec57a80acda21/chr_22.log
wget https://imputationserver.sph.umich.edu/share/results/1b13b1e20dcdf5b5f5e20ed3638d838d18dbfdc149fb9ae881baee20a08118cc/chr_3.log
wget https://imputationserver.sph.umich.edu/share/results/6f726a5a888ca5fc2f7b462be4b28dbc54c14dc8d6a1b4317355c64e6a60d969/chr_4.log
wget https://imputationserver.sph.umich.edu/share/results/3101198f78dc75751b6e3a23e6adffe800b54e9574bef3c0cf49b11ccf11176c/chr_5.log
wget https://imputationserver.sph.umich.edu/share/results/f2269b75b9482ed4fa2aa7bff4eb10f262813bc28439909a88fd2cc1da2015fa/chr_6.log
wget https://imputationserver.sph.umich.edu/share/results/83a8dfc1581629bda4266dc0fb524eeef9d473783f49e295f4e3e5b32e0a40e8/chr_7.log
wget https://imputationserver.sph.umich.edu/share/results/2276c47fc5364be7f760594f8ffc99b1fedab95de53c00dcc6e3dc64030223ec/chr_8.log
wget https://imputationserver.sph.umich.edu/share/results/0be73f8deee944a0507f6f165a1ae68d883e3cc555be0f493c129f808aaee3df/chr_9.log
wget https://imputationserver.sph.umich.edu/share/results/f41edeebe83893050bda4fdfe831df45115a4f87ae5b067a23e523bb76527b60/chr_X.nonPAR.log

mv *.log Logs