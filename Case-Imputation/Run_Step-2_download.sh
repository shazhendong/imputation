mkdir QC_Statistics

wget --no-check-certificate https://imputationserver.sph.umich.edu/share/results/5fcfa7a936f666dc4ecbd7923775915665cb5edb531d7d9b03fd1e5ab4229c92/chunks-excluded.txt
wget --no-check-certificate https://imputationserver.sph.umich.edu/share/results/d732ea15fd8e91ac5a8ff43b96123910860a8514fae4e0f55b95e7498f8f8a1c/snps-excluded.txt
wget --no-check-certificate https://imputationserver.sph.umich.edu/share/results/a23387cf50d46ca1872346907d1f2826fc55699fa695c2539ad122f0c778201a/typed-only.txt

mv *.txt QC_Statistics

mkdir Imputation_Results

wget --no-check-certificate https://imputationserver.sph.umich.edu/share/results/f64d048377acdb39007300d7d025a7a4cfe2122d8b9220205f4dbebdff112ba9/chr_1.zip
wget --no-check-certificate https://imputationserver.sph.umich.edu/share/results/7fdc67395fc10fd7c4f4bbe35cddf57e03bdf71529951cedc5667d2272bd3bed/chr_10.zip
wget --no-check-certificate https://imputationserver.sph.umich.edu/share/results/ab6ea01a01c6a0ab053da807f2d929b7cdaeb09d19b538d6e677534a66362b80/chr_11.zip
wget --no-check-certificate https://imputationserver.sph.umich.edu/share/results/d449ae7495b07101e6b7da5d15b11fffb5e38b46bd8690324c5caeb722030713/chr_12.zip
wget --no-check-certificate https://imputationserver.sph.umich.edu/share/results/e81f760dae80d70873f3f0d11f1c4b91c47f55c9588a63ec6b633f58638302f4/chr_13.zip
wget --no-check-certificate https://imputationserver.sph.umich.edu/share/results/35f4c1f007553b188e5b5a36f34a3cfbdfb425b1b50d90912a05a23cdaf2ad90/chr_14.zip
wget --no-check-certificate https://imputationserver.sph.umich.edu/share/results/492e23c2b820eaaba9b536b3e6a39ed42f12f4f5d4a09f112ab731a6c9c77dc2/chr_15.zip
wget --no-check-certificate https://imputationserver.sph.umich.edu/share/results/1ffcc52fd9b7b70b350ccf4938c200dfb55e1849a5ce5b2c59810997b173351b/chr_16.zip
wget --no-check-certificate https://imputationserver.sph.umich.edu/share/results/ba13d11e699a300a64fc5f1bd749ebbdf670b9a82dfa3bc5e2dd9769f8422b36/chr_17.zip
wget --no-check-certificate https://imputationserver.sph.umich.edu/share/results/313d359484b3e4e4351c51a268a105ca0c1d5661510a1d7a7beb59838c7d12a4/chr_18.zip
wget --no-check-certificate https://imputationserver.sph.umich.edu/share/results/7695fef6e56735b1a8dd3db3257b5ce328564e9f4eb8fa7bf205c7d0cab153fd/chr_19.zip
wget --no-check-certificate https://imputationserver.sph.umich.edu/share/results/cef04a193317ceb62b1f32b4461029cb83fc9cfcba4c80d53ecb286aec851358/chr_2.zip
wget --no-check-certificate https://imputationserver.sph.umich.edu/share/results/568368170c73a276af21df94d34972605a22bad45f87cc524fb46c75905d52a5/chr_20.zip
wget --no-check-certificate https://imputationserver.sph.umich.edu/share/results/ad584b7b4544eac22b452d5221fc197e5c056c81ede5d01eb5dd518277d5af22/chr_21.zip
wget --no-check-certificate https://imputationserver.sph.umich.edu/share/results/39eca317e79320a10a4c4a73d76cde2d7d1ebbc07fba9f3176d1a4526c444688/chr_22.zip
wget --no-check-certificate https://imputationserver.sph.umich.edu/share/results/ef8b59c665a247540a73743be05a4446d9f14b65311e9682b659e94cf0b5e7f9/chr_3.zip
wget --no-check-certificate https://imputationserver.sph.umich.edu/share/results/bf13696da31463673ea1534a84852e006212144d0c03daa34fa4858ded137d9f/chr_4.zip
wget --no-check-certificate https://imputationserver.sph.umich.edu/share/results/e6d56103e8636d5a62f2fa897fa4d5ee5f3f8d21437359274aa76d2a2255d8c1/chr_5.zip
wget --no-check-certificate https://imputationserver.sph.umich.edu/share/results/af79d371682e9d4c5a395201925816899f5086643995c29385be0231225b73af/chr_6.zip
wget --no-check-certificate https://imputationserver.sph.umich.edu/share/results/718c7022f72970f56c6fce58361745988ae02921e9952b1fc3d9a4d65162e3a1/chr_7.zip
wget --no-check-certificate https://imputationserver.sph.umich.edu/share/results/9a1fa69f68561f112fc5bf7e19bf5e83c16fa648df594a39bc29aee3f77991b1/chr_8.zip
wget --no-check-certificate https://imputationserver.sph.umich.edu/share/results/2ff9119a7d689c4ccccc744add0dc014869956a25553d109b773bfde7312dc25/chr_9.zip
wget --no-check-certificate https://imputationserver.sph.umich.edu/share/results/b75b53d31bd82b8e384550f649d0e2dae98a9463094bbaa20a9365147b976081/chr_X.zip
wget --no-check-certificate https://imputationserver.sph.umich.edu/share/results/66f872a0939cd441972136b4b417de0e8718905105d5ce13486396716a854a18/results.md5



#for f in *.zip
#do
#    echo "Unzip $f"
#    Unzip -P qaV1DRM9KIihb $f
#done
mv chr* Imputation_Results
mv results.md5 Imputation_Results

mkdir Logs

wget --no-check-certificate https://imputationserver.sph.umich.edu/share/results/1dee042d60af2e653f7ab6823f2da5cd42ee4da201a4baefebd914e9b17e42dc/chr_1.log
wget --no-check-certificate https://imputationserver.sph.umich.edu/share/results/e95ae44a1434bdfdc7a45879205b9cfd21b951dc9dcaffd229326db6566d5779/chr_10.log
wget --no-check-certificate https://imputationserver.sph.umich.edu/share/results/6656a4d00735d560b00adc62c7fd7375c50813f32f736abbc5b3ccbaa380e58a/chr_11.log
wget --no-check-certificate https://imputationserver.sph.umich.edu/share/results/212d4d877ad11765be2bbc806dc6506d7521bc0d16b1c0e392420b2232c9e4ff/chr_12.log
wget --no-check-certificate https://imputationserver.sph.umich.edu/share/results/4071bcdbd1bb0bcad6c51bcffe2ecd7abb9a39a9f8933ecf319923f8e24ca1a0/chr_13.log
wget --no-check-certificate https://imputationserver.sph.umich.edu/share/results/cde52caebed394b49d324fe75478de77a3e97dd7992f66f2b34908fdf5bee317/chr_14.log
wget --no-check-certificate https://imputationserver.sph.umich.edu/share/results/059d3120a08e8bbca0662922b3f6d35dd594dc3a72598867bcfd765ea80a54b2/chr_15.log
wget --no-check-certificate https://imputationserver.sph.umich.edu/share/results/c8e7f04909b6c8ded8e8315c3f3565588ce6698d93c4c83119ea0b60bbd056fe/chr_16.log
wget --no-check-certificate https://imputationserver.sph.umich.edu/share/results/97962df5143ce63b2c44b89b1438fbfbf5d494500ac659723e6569e274904cd0/chr_17.log
wget --no-check-certificate https://imputationserver.sph.umich.edu/share/results/be1df50a8a3734afc51c4be31a2b4f1479f09d44150f29518e61097fd542ac82/chr_18.log
wget --no-check-certificate https://imputationserver.sph.umich.edu/share/results/86b917659f800f42c4e7b4a5ab2251226698e9862fcdc68882f88abb667884ad/chr_19.log
wget --no-check-certificate https://imputationserver.sph.umich.edu/share/results/33787614bfb699d56381763e5f27b96c98bc8829564488ba744ad867f27a2c84/chr_2.log
wget --no-check-certificate https://imputationserver.sph.umich.edu/share/results/5911a138be19a7784fa1124096da4b1aaa38ca3a9b905ee75622f5ffa9318884/chr_20.log
wget --no-check-certificate https://imputationserver.sph.umich.edu/share/results/e78a147f9f42761ede1013b2d519f880c15bae19512a13ddc01031d63a130970/chr_21.log
wget --no-check-certificate https://imputationserver.sph.umich.edu/share/results/d383bfcb01b4f097cb2cc8f01976d02d4ebc86185f51622a7a3f47b65a83eef8/chr_22.log
wget --no-check-certificate https://imputationserver.sph.umich.edu/share/results/3e92ed58eceae0b1eb3540bf40d8fdd767d98a146bcde5e036429f5899a34336/chr_3.log
wget --no-check-certificate https://imputationserver.sph.umich.edu/share/results/3eae1c811272e42b9cabac1215a87debc6cd8119da4dcdafff4e86ac9282bb8b/chr_4.log
wget --no-check-certificate https://imputationserver.sph.umich.edu/share/results/f03f3f113e62804f1be059f3f1c66128b5c3c3bfb0bb7d34f2c5cd9a7b7b64d1/chr_5.log
wget --no-check-certificate https://imputationserver.sph.umich.edu/share/results/6854ee8ae460f7dad49a8ddb2586ed01dda77d174216486de358ce0965572b7c/chr_6.log
wget --no-check-certificate https://imputationserver.sph.umich.edu/share/results/78be1475515e525405c18810b539ab643342576b136abfebfcc92bc6462b4214/chr_7.log
wget --no-check-certificate https://imputationserver.sph.umich.edu/share/results/ddbffa8f07bde7cb4626e791c9d61322fcc575aaa8dbb10b0e091ddc28e0c878/chr_8.log
wget --no-check-certificate https://imputationserver.sph.umich.edu/share/results/75caabb8cd7cc3c0c2e0aa8d4f065caa7b9c2c29929c95ec44c708d16f7c9dbb/chr_9.log
wget --no-check-certificate https://imputationserver.sph.umich.edu/share/results/ccbb2d0042e7b17f071f1291efb8d388ed46b61368aa950c2e62c925f565873c/chr_X.nonPAR.log

mv *.log Logs