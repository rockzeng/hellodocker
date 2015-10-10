PROJECT = sparkexample
REGISTRY = registry.vbiaoge.com
# Insert your company
COMPANY = vbiaoge

build:
	docker build -t $(REGISTRY)/$(COMPANY)/$(PROJECT) .

run:
	docker run -p 4567:4567 $(REGISTRY)/$(COMPANY)/$(PROJECT)

push:
	docker push $(REGISTRY)/$(COMPANY)/$(PROJECT)
