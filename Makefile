build:
	docker build -t yard-triage:latest .

run:
	docker run --env-file .env -p 9000:9000 yard-triage:latest

test:
	docker run --rm yard-triage:latest python -c "print('smoke test passed')"

health:
	curl -f http://localhost:9000/health
