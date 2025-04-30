SERVERS=context7-mcp
DOCKER_SERVICE=colima

build: $(SERVERS)

context7-mcp:
	docker build -t context7-mcp ./context7

restart:
	$(DOCKER_SERVICE) stop && $(DOCKER_SERVICE) start
 
.PHONY: build context7 restart
