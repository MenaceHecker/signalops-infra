KIND_CLUSTER_NAME ?= signalops-local

local-up:
	./scripts/local-up.sh

local-down:
	kind delete cluster --name $(KIND_CLUSTER_NAME)

operator-install:
	cd operator && make install

operator-run:
	cd operator && make run

operator-deploy:
	cd operator && make docker-build docker-push IMG=signalops-operator:dev
	kind load docker-image signalops-operator:dev --name $(KIND_CLUSTER_NAME)
	cd operator && make deploy IMG=signalops-operator:dev
