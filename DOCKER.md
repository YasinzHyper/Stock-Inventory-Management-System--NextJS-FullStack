# Docker Setup Guide for Stockly Inventory Management System

This guide provides detailed instructions for running the Stockly application using Docker.

## Prerequisites

- Docker (version 20.0 or higher)
- Docker Compose (version 2.0 or higher)
- Git

## Quick Start

1. **Clone the repository:**
   ```bash
   git clone https://github.com/your-username/stockly.git
   cd stockly
   ```

2. **Start the development environment:**
   
   **Linux/macOS:**
   ```bash
   chmod +x dev.sh
   ./dev.sh start
   ```
   
   **Windows:**
   ```cmd
   dev.bat start
   ```

3. **Access the application:**
   - Application: http://localhost:3000
   - MongoDB: mongodb://localhost:27017

## Development Environment

The development setup includes:

- **MongoDB 7.0** with automatic initialization
- **Next.js application** in development mode with hot reload
- **Volume mounts** for live code editing
- **Health checks** to ensure services are ready

### Environment Variables

The development environment uses these default values:

```env
NODE_ENV=development
DATABASE_URL=mongodb://admin:password123@mongodb:27017/stockly?authSource=admin&retryWrites=true&w=majority
JWT_SECRET=your-super-secret-jwt-key-for-development-only
JWT_EXPIRES_IN=24h
WATCHPACK_POLLING=true
```

### Available Commands

**Linux/macOS (`./dev.sh`):**
```bash
./dev.sh start         # Start the development environment
./dev.sh stop          # Stop the development environment
./dev.sh restart       # Restart the development environment
./dev.sh logs          # View logs from all services
./dev.sh logs app      # View logs from app service only
./dev.sh logs mongodb  # View logs from MongoDB service only
./dev.sh status        # Show status of all services
./dev.sh shell         # Enter the app container shell
./dev.sh db reset      # Reset database (⚠️  deletes all data)
./dev.sh db studio     # Open Prisma Studio
./dev.sh db generate   # Generate Prisma client
./dev.sh cleanup       # Clean up Docker resources
./dev.sh help          # Show help
```

**Windows (`dev.bat`):**
```cmd
dev.bat start         # Start the development environment
dev.bat stop          # Stop the development environment
dev.bat restart       # Restart the development environment
dev.bat logs          # View logs from all services
dev.bat logs app      # View logs from app service only
dev.bat logs mongodb  # View logs from MongoDB service only
dev.bat status        # Show status of all services
dev.bat shell         # Enter the app container shell
dev.bat db reset      # Reset database (⚠️  deletes all data)
dev.bat db studio     # Open Prisma Studio
dev.bat db generate   # Generate Prisma client
dev.bat cleanup       # Clean up Docker resources
dev.bat help          # Show help
```

## Production Deployment

### 1. Create Production Environment File

Copy the example environment file and customize it:

```bash
cp .env.production.example .env.production
```

Edit `.env.production` with your production values:

```env
NODE_ENV=production
DATABASE_URL=mongodb+srv://username:password@cluster.mongodb.net/stockly?retryWrites=true&w=majority
JWT_SECRET=your-super-secure-production-jwt-secret
JWT_EXPIRES_IN=1h
MONGO_ROOT_USERNAME=admin
MONGO_ROOT_PASSWORD=your-secure-mongodb-password
APP_PORT=3000
```

### 2. Deploy with Docker Compose

```bash
# Build and start production services
docker-compose -f docker-compose.prod.yml up -d

# View logs
docker-compose -f docker-compose.prod.yml logs -f

# Stop services
docker-compose -f docker-compose.prod.yml down
```

### 3. Production Health Checks

The production setup includes health checks for both services:

- **MongoDB**: Checks database connectivity
- **Application**: Checks HTTP endpoint availability

## Manual Docker Commands

If you prefer to run Docker commands manually:

### Development

```bash
# Build the development image
docker build -t stockly-dev .

# Start MongoDB
docker run -d \
  --name stockly-mongodb \
  -p 27017:27017 \
  -e MONGO_INITDB_ROOT_USERNAME=admin \
  -e MONGO_INITDB_ROOT_PASSWORD=password123 \
  -e MONGO_INITDB_DATABASE=stockly \
  -v mongodb_data:/data/db \
  mongo:7.0

# Start the application
docker run -d \
  --name stockly-app \
  -p 3000:3000 \
  -e NODE_ENV=development \
  -e DATABASE_URL=mongodb://admin:password123@mongodb:27017/stockly?authSource=admin \
  -e JWT_SECRET=dev-secret \
  --link stockly-mongodb:mongodb \
  -v $(pwd):/app \
  -v /app/node_modules \
  stockly-dev
```

### Production

```bash
# Build the production image
docker build -f Dockerfile.prod -t stockly-prod .

# Start with production configuration
docker run -d \
  --name stockly-app-prod \
  -p 3000:3000 \
  -e NODE_ENV=production \
  -e DATABASE_URL=your-production-database-url \
  -e JWT_SECRET=your-production-jwt-secret \
  stockly-prod
```

## Troubleshooting

### Common Issues

**1. Port Conflicts**
```bash
# Check what's using the ports
netstat -tulpn | grep :3000
netstat -tulpn | grep :27017

# Change ports in docker-compose.yml if needed
```

**2. Permission Issues (Linux/macOS)**
```bash
# Make scripts executable
chmod +x dev.sh
chmod +x docker/start.sh
```

**3. Database Connection Issues**
```bash
# Check MongoDB logs
docker-compose logs mongodb

# Reset database
./dev.sh db reset

# Restart services
./dev.sh restart
```

**4. Build Issues**
```bash
# Clean Docker cache
docker builder prune -a

# Clean up all resources
./dev.sh cleanup

# Rebuild from scratch
./dev.sh start
```

**5. Windows Line Ending Issues**
```bash
# Convert line endings (if needed)
git config core.autocrlf true
git add .
git commit -m "Fix line endings"
```

### Logs and Debugging

```bash
# View all logs
./dev.sh logs

# View specific service logs
./dev.sh logs app
./dev.sh logs mongodb

# Follow logs in real-time
docker-compose logs -f

# Enter container for debugging
./dev.sh shell
```

### Performance Optimization

**Development:**
- Hot reload is enabled by default
- Volume mounts allow instant code changes
- Polling is enabled for file watching

**Production:**
- Multi-stage builds reduce image size
- Non-root user for security
- Health checks ensure reliability
- Standalone Next.js output for optimization

## File Structure

```
docker/
├── mongo-init.js          # MongoDB initialization script
└── start.sh               # Application startup script

Dockerfile                 # Development Dockerfile
Dockerfile.prod            # Production Dockerfile
docker-compose.yml         # Development services
docker-compose.prod.yml    # Production services
.dockerignore              # Docker ignore patterns
.env.docker                # Development environment template
.env.production.example    # Production environment template
dev.sh                     # Development helper (Linux/macOS)
dev.bat                    # Development helper (Windows)
```

## Next Steps

1. **Customize the application** by modifying the source code
2. **Add more services** like Redis, Nginx, or monitoring tools
3. **Set up CI/CD** pipelines for automated deployment
4. **Configure monitoring** with tools like Prometheus and Grafana
5. **Add backup solutions** for production data

## Support

For Docker-specific issues:
1. Check the logs using `./dev.sh logs`
2. Verify Docker and Docker Compose installation
3. Ensure ports 3000 and 27017 are available
4. Check the main README.md for additional troubleshooting

For application issues, refer to the main project documentation.