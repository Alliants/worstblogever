class AddHstoreAndUuidExtensions < ActiveRecord::Migration
  def up
    enable_extension "hstore"
    enable_extension "uuid-ossp"
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
