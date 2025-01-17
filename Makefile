.PHONY: tag retag

# Create and push a new tag
tag:
	@read -p "Enter version (e.g., 1.0.0): " version; \
	if [ -n "$$version" ]; then \
		if git rev-parse "v$$version" >/dev/null 2>&1; then \
			echo "Error: Tag v$$version already exists. Use 'make retag' to recreate it."; \
			exit 1; \
		else \
			echo "Creating new tag v$$version..."; \
			git tag "v$$version" && \
			git push origin "v$$version" && \
			echo "Successfully created and pushed tag v$$version" || \
			echo "Failed to create/push tag"; \
		fi \
	else \
		echo "No version provided"; \
	fi

# Delete existing tag and create new one
retag:
	@read -p "Enter version (e.g., 1.0.0): " version; \
	if [ -n "$$version" ]; then \
		echo "Deleting tag v$$version..."; \
		git push --delete origin "v$$version" 2>/dev/null || echo "Remote tag doesn't exist"; \
		git tag -d "v$$version" 2>/dev/null || echo "Local tag doesn't exist"; \
		echo "Creating new tag v$$version..."; \
		git tag "v$$version" && \
		git push origin "v$$version" && \
		echo "Successfully created and pushed tag v$$version" || \
		echo "Failed to create/push tag"; \
	else \
		echo "No version provided"; \
	fi