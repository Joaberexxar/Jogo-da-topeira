deploy-prepare:
	make build stage=$(stage) && \
	cd terraform && \
	terraform init -upgrade && \
	terraform get -update && \
	(terraform workspace select $(stage) || terraform workspace new $(stage)) && \
	terraform apply -var=stage=$(stage)

tag:
	git tag "$(tag_name)" && \
	git push origin "$(tag_name)"

deploy-dev:
	make deploy-prepare stage=dev

deploy-prod:
	((git status -s | grep -q .) && echo "[ALERT] YOU MUST COMMIT YOUR CHANGES BEFORE THE BUILD") || \
	( \
		make deploy-prepare stage=prod  && \
		make tag tag_name="deploy-$(stage)-$(shell TZ=GMT+3 date +'%Y-%m-%d--%H-%M')" \
	)

build:
	npx vue-cli-service build --mode $(stage)