default:
	clear
build:
	docker build -t emoji-search .
up:
	docker run -it -p 80:3000 --name emoji-search emoji-search npm start
down:
	docker stop emoji-search
	docker rm emoji-search
clear-all:
	docker system prune --force --all --volumes