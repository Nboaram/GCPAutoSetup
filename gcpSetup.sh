gcp auth login
gcloud config set project ExampleProject-1234567890 --name ExampleProject --set-as-default
gcloud compute project-info add-metadata --metadata google-compute-default-region=europe-west2,google-default-zone=europe-west2-b
gcloud compute instances create ExampleVM --machine-type f1-micro --tags http-server --image ubuntu-1804-lts
gcloud compute ssh ExampleVM
git clone https://github.com/Nboaram/MeanAutoSetup.git
cd /MeanAutoSetup
./MeanSetup.sh