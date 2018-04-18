class Dropfooboo < ActiveRecord::Migration[5.1]

    def change
      drop_table :foobos
    end

end
