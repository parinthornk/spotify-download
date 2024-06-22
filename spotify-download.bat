docker run --rm -v vp04:/music parinthornk/download_spotify download https://open.spotify.com/track/2v5rRQ4uDy4RQWCSjdil8Q
docker run -d --name temp-container -v vp04:/music alpine
docker cp temp-container:/music C:\spotify
docker stop temp-container
docker rm temp-container
docker volume rm vp04