default:
	@echo "make something yourself!"

SETUP_FLAG=.env/setup_done

.PHONY: test run update

$(SETUP_FLAG):
	mkdir .env || true
	virtualenv --python=python3 --no-site-packages --distribute .env
	bash -c "source .env/bin/activate && pip install -r requirements.txt"
	@echo "source .env/bin/activate for correct environment"
	touch $(SETUP_FLAG)

run: $(SETUP_FLAG)
	bash -c "source .env/bin/activate && ./hn_bot"

update:
	bash -c "source .env/bin/activate && pip install -r requirements.txt"

shell:
	bash -c "source .env/bin/activate && bash"
