require './lib/database_connection'

p "Setting up test database..."

def setup_test_database
    connection = DatabaseConnection.setup('bookmark_manager_test')
    #Clear bookmarks table
    connection.query("TRUNCATE bookmarks;")
end