# Skal jeg vælge Ubuntu istedet?
# Tutorial-guide anbefalede denne letvægts "distro"

FROM node:14.16.0-alpine3.13

#User nødvendigt? Se beskriv under frontend.
RUN addgroup app && adduser -S -G app app
USER app

WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . . 

EXPOSE 3001 

CMD ["npm", "start"]

## Giver dette mening?
## Hvor skal jeg ellers lave migrations?
