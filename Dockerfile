FROM debian:bookworm-slim

ENV vmpt="20000" \
    argo="y" \
    agn="germany.konyan1.dpdns.org" \
    agk="eyJhIjoiM2Y2NTExMWRhYjcwZTU5YTE2NTMxYmMyODRkMjU1NzYiLCJ0IjoiODlhYzA5ZDItYjJhNC00NDJhLTk4YWYtNGViM2E4NzVhOWUyIiwicyI6Ik5HUmxabVU1WVRrdE0yTTFOQzAwTnpaaUxXRm1aRGd0WkRCbU1qVmxaalprT1dJNSJ9" \
    warp="" \
    uuid="f903217e-4a6e-40aa-90ed-df2fb48e53dc"

RUN apt update && apt install -y curl bash

RUN bash -c "bash <(curl -Ls https://raw.githubusercontent.com/yonggekkk/argosb/main/argosb.sh)"

CMD ["sleep", "infinity"]
