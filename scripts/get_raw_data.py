import os
import zipfile
from kaggle.api.kaggle_api_extended import KaggleApi

# Konfigurasi API Kaggle
api = KaggleApi()
api.authenticate()

# Dataset yang ingin diunduh
dataset_name = "nelgiriyewithana/mcdonalds-store-reviews"
output_dir = "/home/ubuntuniko/etl_porto1/raw_data"

# Unduh dataset
print(f"Downloading dataset {dataset_name}...")
api.dataset_download_files(dataset_name, path=output_dir, unzip=False)

# Ekstrak file ZIP
zip_path = os.path.join(output_dir, f"{dataset_name.split('/')[-1]}.zip")
with zipfile.ZipFile(zip_path, 'r') as zip_ref:
    zip_ref.extractall(output_dir)

print(f"Dataset downloaded and extracted to {output_dir}.")