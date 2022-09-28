.PHONY = \
	test-repo \
	delete-test-repo

TEST_REPO_NAME=$(REPO_ID)

# From
# https://stackoverflow.com/questions/10858261/how-to-abort-makefile-if-variable-not-set
check_defined = \
	$(strip $(foreach 1,$1, \
		$(call __check_defined,$1,$(strip $(value 2)))))
__check_defined = \
	$(if $(value $1),, \
		$(error Undefined $1$(if $2, ($2))$(if $(value @), \
			required by target `$@')))

test-repo:
	@:$(call check_defined, REPO_ID, number to append to test repo name)
	gh repo create "navapbc/platform-test-$(REPO_ID)" --add-readme --public

delete-test-repo:
	@:$(call check_defined, REPO_ID, number to append to test repo name)
	gh repo delete "navapbc/platform-test-$(REPO_ID)" --confirm
