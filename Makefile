PHONY: boot test fmt commit

boot:
	python3 -m venv venv
	. venv/bin/activate && pip install -r requirements.txt

test:
	. venv/bin/activate && python -m pytest -s

fmt: 
	. venv/bin/activate && python -m black lib

commit:
	git add -A && \
	git commit -m "Update" && \
	git push origin master
