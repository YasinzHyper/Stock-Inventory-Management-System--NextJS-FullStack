// MongoDB initialization script
// This script creates the database and sets up proper permissions

db = db.getSiblingDB('stockly');

// Create a user for the stockly database
db.createUser({
  user: 'stockly_user',
  pwd: 'stockly_password',
  roles: [
    {
      role: 'readWrite',
      db: 'stockly'
    }
  ]
});

// Create collections if they don't exist
db.createCollection('User');
db.createCollection('Product');
db.createCollection('Category');
db.createCollection('Supplier');

print('Database initialized successfully');