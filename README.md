# Hariyali Frontend


Remember the craze, when the Pokemon Go first launched for our mobiles. We spend our days all around catching pokemons and earning points. Keeping the craze alive we launch our all new Hariyali where instead of catching pokemons we need to capture new plant species ( which you do by planting them). The more you plant the more points you get. Let the plantation drive begins!! .


## Features

- 🪴 **Plantation Drive:** Capture yourself with the plant you have just planted and get points based on species and whether you have planted a new species or not, it has an integrated face authentication that authenticates your face as well, so that we know it's you planting it.

- 🌱**Species recognition:** Not sure what's the plant species name you are going to plant   no worries check it on our app

- ♻️**RecycleTeller:**   Came across some garbage while on your little discover tour and cannot identify whether this garbage comes under recyclable or non-recyclable check it here and extend your little help in saving the environment 

## Technology stack

- Backend: FastAPI
- Frontend: Flutter
- Running on: Azure App Service
- Media Storage: Azure Blob Storage
- Database: Azure SQL DB
- Deployment: GitHub Actions
- APIs: Plant.id, Azure Cognitive Services

#### Link to backend Repo: [https://github.com/bhavya132/hariyali-backend](https://github.com/bhavya132/hariyali-backend)

## Note
Since it is the submission for the Google hackathon, all the keys are exposed so that one could smoothly run the code if needed. 

## How to run the code.
1. Unzip the folder.
2. Open the linux terminal inside the fronend folder.
3. Connect android phone with the pc/laptop.
4. Make sure both are connected to same wifi.
5. Run the backend first. Then inside the terminal, run the command 'ipconfig'
6. Copy the IP address ,  IPv4 Address under Wireless LAN adapter Wi-Fi. 
7. Replace the '172.28.187.91' with current IP address in the frontend folder.
8. Run the command 'pip install -r requirements.txt'.
9. Run the command 'flutter devices' to check whether the android is connected or not.
10. Run the command 'flutter run' to finally launch the application on the android.
