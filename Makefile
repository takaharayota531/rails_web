migrate:
	bundle exec ridgepole -c config/database.yml -f db/schema/Schemafile --apply
	bin/rails db:schema:dump

testmigrate:
	bundle exec ridgepole -c config/database.yml -f db/schema/Schemafile --apply --dry-run