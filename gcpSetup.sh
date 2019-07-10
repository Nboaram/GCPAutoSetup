gcloud config set project example-project-246215
gcloud compute instances create examplevm --zone europe-west2-b --machine-type f1-micro --tags http-server --image-project ubuntu-os-cloud --image-family ubuntu-1804-lts
sleep 2 && gcloud compute ssh --zone europe-west2-b examplevm --command "sudo git clone https://github.com/Nboaram/MeanAutoSetup.git"
gcloud compute ssh --zone europe-west2-b examplevm --command "./MeanAutoSetup/MeanSetup.sh"
