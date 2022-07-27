mkdir QC_Statistics

wget https://imputationserver.sph.umich.edu/share/results/69318cc511901c3e6a748dcabe2200ec2da9f0572c808fc7fb00ab0447148c02/chunks-excluded.txt
wget https://imputationserver.sph.umich.edu/share/results/f070edffc88d82d843da672e113e779932c2e28be5b13aa5c40e251e6b1b5338/snps-excluded.txt
wget https://imputationserver.sph.umich.edu/share/results/80378a317ef1eece622f4f4923c94b99326168db90a749504cff037ca590dc19/typed-only.txt

mv *.txt QC_Statistics

mkdir Imputation_Results

wget https://imputationserver.sph.umich.edu/share/results/31347f81d553bac1df3410a902a94881915b54d263f455eef1567148df95fd0a/chr_1.zip
wget https://imputationserver.sph.umich.edu/share/results/a69dd182ea0d31d9490d66360540a8a7d6ef707f3efd0826ff169a48917d478e/chr_10.zip
wget https://imputationserver.sph.umich.edu/share/results/f62432b04d6173325e97b887a75f3f122505729ae5b15ab40c99fa1c12435b59/chr_11.zip
wget https://imputationserver.sph.umich.edu/share/results/3b0b32f570de68db6bd7a02c0c94b126c88c4fff8310fc4284a57e1d1aa342d0/chr_12.zip
wget https://imputationserver.sph.umich.edu/share/results/a25a7d1f3a440f4f570cf8677bf9b0d6a9181a39b157bc5d7fe78b5b55df4b42/chr_13.zip
wget https://imputationserver.sph.umich.edu/share/results/c6114b198ad8404816aaa63704b46eb1ca4dee8e3e31c8aed734d65f44ae4872/chr_14.zip
wget https://imputationserver.sph.umich.edu/share/results/fb16ebb0568ae137e8dea966eff06a715a93f7ee4089dd3d36395e7589367ad5/chr_15.zip
wget https://imputationserver.sph.umich.edu/share/results/d2d09e98be322e8fb777ba3c6a98ee75352e4ddb8c42a94aeb8c42892e585062/chr_16.zip
wget https://imputationserver.sph.umich.edu/share/results/b870a416f7e890d275c182c9f5a8ed56bf42c2da809dcaa6e31b905b350ac0ad/chr_17.zip
wget https://imputationserver.sph.umich.edu/share/results/df34587b007734ad65aff56b7911f8ffce6b12a33a92639d716050153eb7cbae/chr_18.zip
wget https://imputationserver.sph.umich.edu/share/results/6d8978d8fcfacf564909e8d63b084f4aaeea34e5b061a5ddbcdaa77f54607d23/chr_19.zip
wget https://imputationserver.sph.umich.edu/share/results/4c9847a26777f05465a5d142aa233726cbbb6a0aaa38140ede9275014fdeb3a6/chr_2.zip
wget https://imputationserver.sph.umich.edu/share/results/da66bd871cdba0a90f42bf79d97e2904710b238cb734b50e6e9eabeacf3517fa/chr_20.zip
wget https://imputationserver.sph.umich.edu/share/results/cb3943e96372d4e230c874dd47df043661f8350cd1da2c6e4e2f71f9b26dfcba/chr_21.zip
wget https://imputationserver.sph.umich.edu/share/results/bab04d332351784f20ea4880ce2dc184fe31a655d8f586df6b9a46f98bdddb97/chr_22.zip
wget https://imputationserver.sph.umich.edu/share/results/bd3d4dad8f20ab529234292d0e10b2ffb1a1c7fe605f31558f79077dfaaa45d8/chr_3.zip
wget https://imputationserver.sph.umich.edu/share/results/c09a93e43d732bc1eada717f35aafcc13c5d68c9e8ecb8aba6720e478730147b/chr_4.zip
wget https://imputationserver.sph.umich.edu/share/results/821bab3f26b503b9e8a2c22fbb1608687e1bd44a30f1361aedbb28f19e6c8ed3/chr_5.zip
wget https://imputationserver.sph.umich.edu/share/results/ef4fb030e94f4a9d84af711f61d1e12a6eace8830a203691b17f3c7b293d8a31/chr_6.zip
wget https://imputationserver.sph.umich.edu/share/results/0aec4283f7743ba677f46bb8eb6065ac7c3194cf79fdecaee83e4178af422f65/chr_7.zip
wget https://imputationserver.sph.umich.edu/share/results/93cb562b319a7ff3d5ca378f6cddc99101dabb859621ffdca693ef9eea6bcc66/chr_8.zip
wget https://imputationserver.sph.umich.edu/share/results/febdc70570c571747008f5f4fa9632f81467fef8e214a88c5f6e25860163c77a/chr_9.zip
wget https://imputationserver.sph.umich.edu/share/results/d5fc6949e94a04037d206abda764fb08b8d7bc67fbe4f49fc0167d914f522dbe/chr_X.zip
wget https://imputationserver.sph.umich.edu/share/results/e676df2a856a623d3b668e4287551f937b3ca12ca14000bf8e04e7412c8efc9e/results.md5


#for f in *.zip
#do
#    echo "Unzip $f"
#    Unzip -P )lJchCRn9ON76d $f
#done
mv chr* Imputation_Results
mv results.md5 Imputation_Results

mkdir Logs

wget https://imputationserver.sph.umich.edu/share/results/7040e30eb2985eb99636a1817d95ae1b9110b438f7990433f3e4ae32be4ea937/chr_1.log
wget https://imputationserver.sph.umich.edu/share/results/ae91ae485e06c03373178f3e8d59fd47f71acb374722a73c3fedd8f4abe40a8a/chr_10.log
wget https://imputationserver.sph.umich.edu/share/results/5d6fdcce492fbaa4502e94c4904bd99416c2e978e04d58ef77c2d97f60198d41/chr_11.log
wget https://imputationserver.sph.umich.edu/share/results/d41d19114bf4e6b9e7f482a95cbc85b027c59a1aa5e57d6e0c96b0d7bc24e92b/chr_12.log
wget https://imputationserver.sph.umich.edu/share/results/e8583e63204e9db54847f1ee30ef68c413f83e7221eeae650fb1779f254b2185/chr_13.log
wget https://imputationserver.sph.umich.edu/share/results/dccb163f4a4c325548306eb5f90a81d2c6f56a0c4956567e8be6dcbe7e072bf2/chr_14.log
wget https://imputationserver.sph.umich.edu/share/results/69a88e7959dc58481aaf0f064ebf4e53f38d5284e73af59ad36fda60d2a89d14/chr_15.log
wget https://imputationserver.sph.umich.edu/share/results/b40857325283d6784ad3bb7993bceb3cf7fc1a683ab85ed41d3c15ea541a4946/chr_16.log
wget https://imputationserver.sph.umich.edu/share/results/7868ad04d50a7a4de8bece2dcbc8dc8a116f3ec8abf09597e561c011f8114f71/chr_17.log
wget https://imputationserver.sph.umich.edu/share/results/2640cbedf28b0a110004489a445b28f04709ace0c802428d5ed3808615471ede/chr_18.log
wget https://imputationserver.sph.umich.edu/share/results/c7c60a0e83c5dc459219d05bac1e89a23ac6ca8e2c4959c5935acd03a7ef4730/chr_19.log
wget https://imputationserver.sph.umich.edu/share/results/1991135cbc0bebd4b9ce9825cd690896740188383b90cceafabab916a165ecf6/chr_2.log
wget https://imputationserver.sph.umich.edu/share/results/01be052263d0530889fb0f16c0a2c3b940e1cc3e900010657c62d57fdb10200c/chr_20.log
wget https://imputationserver.sph.umich.edu/share/results/83404bc83137b90ee918becd33ad0fb0c06c69119be61d5f3a1f961916874dae/chr_21.log
wget https://imputationserver.sph.umich.edu/share/results/cebff230227e323b94b02ae7967a472a4869bfb1033f1f897a38a5ef5f2c2d15/chr_22.log
wget https://imputationserver.sph.umich.edu/share/results/ee8f3c8895faf60ce0cf42b8d039560bbf42aab10e9f26a126f43ab7be214e82/chr_3.log
wget https://imputationserver.sph.umich.edu/share/results/c069607208a3a2971608a8137f947c9f1d81da524c4b77ef0c85aee21a483591/chr_4.log
wget https://imputationserver.sph.umich.edu/share/results/20f154871b35627f324e25493478d9e3d2d3a5dde871e913fb00602945e8557f/chr_5.log
wget https://imputationserver.sph.umich.edu/share/results/fe1c352944d4cfdf51c0001d6d49b5526c5e23f8a9ad61bdda56480660870263/chr_6.log
wget https://imputationserver.sph.umich.edu/share/results/fa4e17254ac267c71b84d768e6ec56c3b6bfcb2c250ba79100f47640ed2af286/chr_7.log
wget https://imputationserver.sph.umich.edu/share/results/ba8c2b4b9be1f1a26ca90f5aa9c364df6b43c7e62a7da58d1b040515f5c24d67/chr_8.log
wget https://imputationserver.sph.umich.edu/share/results/e537941c8b366089c589c3666279b1a989fb833150bbf24e3dbd731e97ff64cb/chr_9.log
wget https://imputationserver.sph.umich.edu/share/results/3016133864e6aa918dc856ad6e9c629b442ce5780c773beed57356781902ede9/chr_X.nonPAR.log

mv *.log Logs