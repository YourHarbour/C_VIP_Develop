# Disclaim
This is the dissertation project for my MSc in Health Data Science at the University of Manchester.

# Project Aims
Make an improved version of cellxgene and cellxgene_VIP extension.
1. Now accept muon dataset (.h5mu)
2. Add support for ATAC Track display
3. Support multi-mapping display in one window and sync highlight of cells in mappings.

# Code Source
1. cellxgene from official [cellxgene](https://github.com/chanzuckerberg/cellxgene) repo in v1.2.0
2. cellxgene_VIP from official [cellxgene_VIP](https://interactivereport.github.io/cellxgene_VIP/cellxgene_VIP.png?raw=true "cellxgene_VIP")

# Pre-processing
## Create muon data
### Option one (**Recommend**)
Please follow the [muon data official tutorial](https://muon-tutorials.readthedocs.io/en/latest/index.html) and adjust the pre-process steps based on your dataset statics.
### Option two (**Not Recommend**)
Follow the jupyter notebook tutorials in muon_tutorial folder. 
Most of them are learned from [muon data official tutorial](https://muon-tutorials.readthedocs.io/en/latest/index.html).

## Create ATAC Track (.bigwig)
1. Open atac_pipeline folder
2. Download chrom.sizes file such as hg38
3. Follow the atac_track_process.ipynb
4. Install [wigtoBigWig](https://hgdownload.cse.ucsc.edu/admin/exe/)
5. More related usage can be found in [genome](https://genome.ucsc.edu/goldenpath/help/bigWig.html)
   ```
   bedGraphToBigWig in.bedGraph chrom.sizes myBigWig.bw
   ```

# Installation
## 1. Install anaconda if not available on server
## 2. One step installation for VIPlight (without CLI, Command Line Interface for programming)
Clone the repo
```
git clone https://github.com/YourHarbour/cellxgene_VIP_MUON_Extension.git
mv cellxgene_VIP_MUON_Extension cellxgene_VIP
cd cellxgene_VIP
```
Install by the shell script
```
./install_VIPlight.sh
```
Users can change the conda env location by changing ```appPATH``` in the above script.

# Launch the application
1. Launch the VIP by (all input arguments the same as [cellxgene](https://github.com/chanzuckerberg/cellxgene), with support of muon(.h5mu) dataset.
```
conda activate VIP (if not in this conda env)
./VIPlight launch <path/to/h5ad or h5mu> --host <IP> -p <port>
```
2. Launch the VIP with ATAC Track Data
```
./VIPlight launch <path/to/h5ad or h5mu> -atac=<path/to/atac_track> or --atac_track=<path/to/atac_track>
```

# Debugging
1. If system shows subclass error
   ```
   conda activate VIP
   pip install scanpy=1.9.6
   ```
