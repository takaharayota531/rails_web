migrate:
	bundle exec ridgepole -c config/database.yml -f db/schema/Schemafile --apply
	bin/rails db:schema:dump

testmigrate:
	bundle exec ridgepole -c config/database.yml -f db/schema/Schemafile --apply --dry-run

# pushする前にしておきたい処理
check:
	rails test
	rubocop -a
	

# volumeごとデータベースを初期化した時用
setup:
	bundle install
	rails db:create
	bundle exec ridgepole -c config/database.yml -f db/schema/Schemafile --apply
	bin/rails db:schema:dump
