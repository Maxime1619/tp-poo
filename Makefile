.PHONY: clean All

All:
	@echo "----------Building project:[ pcfled-test - Debug ]----------"
	@cd "pcfled-test" && "$(MAKE)" -f  "pcfled-test.mk"
clean:
	@echo "----------Cleaning project:[ pcfled-test - Debug ]----------"
	@cd "pcfled-test" && "$(MAKE)" -f  "pcfled-test.mk" clean
