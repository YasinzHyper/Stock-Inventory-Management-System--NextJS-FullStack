#!/bin/bash

# Docker Development Helper Script for Stockly Inventory Management System

set -e

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Function to print colored output
print_status() {
    echo -e "${BLUE}[INFO]${NC} $1"
}

print_success() {
    echo -e "${GREEN}[SUCCESS]${NC} $1"
}

print_warning() {
    echo -e "${YELLOW}[WARNING]${NC} $1"
}

print_error() {
    echo -e "${RED}[ERROR]${NC} $1"
}

# Function to check if Docker is running
check_docker() {
    if ! docker info > /dev/null 2>&1; then
        print_error "Docker is not running. Please start Docker and try again."
        exit 1
    fi
}

# Function to check if Docker Compose is available
check_docker_compose() {
    if ! command -v docker-compose > /dev/null 2>&1 && ! docker compose version > /dev/null 2>&1; then
        print_error "Docker Compose is not available. Please install Docker Compose and try again."
        exit 1
    fi
}

# Function to start the development environment
start_dev() {
    print_status "Starting Stockly development environment..."
    check_docker
    check_docker_compose
    
    # Create .env file if it doesn't exist
    if [ ! -f .env ]; then
        print_warning ".env file not found. Creating from .env.docker template..."
        cp .env.docker .env
    fi
    
    # Build and start services
    docker-compose up --build -d
    
    print_success "Development environment started!"
    print_status "Services:"
    print_status "  - Application: http://localhost:3000"
    print_status "  - MongoDB: mongodb://localhost:27017"
    print_status ""
    print_status "To view logs, run: docker-compose logs -f"
    print_status "To stop the environment, run: ./dev.sh stop"
}

# Function to stop the development environment
stop_dev() {
    print_status "Stopping Stockly development environment..."
    docker-compose down
    print_success "Development environment stopped!"
}

# Function to restart the development environment
restart_dev() {
    print_status "Restarting Stockly development environment..."
    docker-compose restart
    print_success "Development environment restarted!"
}

# Function to view logs
logs_dev() {
    print_status "Showing logs for Stockly development environment..."
    docker-compose logs -f "$1"
}

# Function to run database operations
db_operations() {
    case "$1" in
        "reset")
            print_warning "Resetting database... This will delete all data!"
            read -p "Are you sure? (y/N): " -n 1 -r
            echo
            if [[ $REPLY =~ ^[Yy]$ ]]; then
                docker-compose exec app npx prisma db push --force-reset
                print_success "Database reset completed!"
            else
                print_status "Database reset cancelled."
            fi
            ;;
        "studio")
            print_status "Opening Prisma Studio..."
            docker-compose exec app npx prisma studio
            ;;
        "generate")
            print_status "Generating Prisma client..."
            docker-compose exec app npx prisma generate
            print_success "Prisma client generated!"
            ;;
        *)
            print_error "Unknown database operation: $1"
            print_status "Available operations: reset, studio, generate"
            ;;
    esac
}

# Function to clean up Docker resources
cleanup() {
    print_status "Cleaning up Docker resources..."
    docker-compose down -v --remove-orphans
    docker system prune -f
    print_success "Cleanup completed!"
}

# Function to show status
status() {
    print_status "Stockly Development Environment Status:"
    docker-compose ps
}

# Function to enter app container shell
shell() {
    print_status "Entering app container shell..."
    docker-compose exec app sh
}

# Function to show help
show_help() {
    echo "Stockly Inventory Management System - Development Helper"
    echo ""
    echo "Usage: ./dev.sh [COMMAND]"
    echo ""
    echo "Commands:"
    echo "  start       Start the development environment"
    echo "  stop        Stop the development environment"
    echo "  restart     Restart the development environment"
    echo "  logs [svc]  Show logs (optionally for specific service)"
    echo "  status      Show status of all services"
    echo "  shell       Enter the app container shell"
    echo "  db <op>     Database operations (reset, studio, generate)"
    echo "  cleanup     Clean up Docker resources"
    echo "  help        Show this help message"
    echo ""
    echo "Examples:"
    echo "  ./dev.sh start"
    echo "  ./dev.sh logs app"
    echo "  ./dev.sh db reset"
    echo "  ./dev.sh db studio"
}

# Main script logic
case "${1:-}" in
    "start")
        start_dev
        ;;
    "stop")
        stop_dev
        ;;
    "restart")
        restart_dev
        ;;
    "logs")
        logs_dev "$2"
        ;;
    "status")
        status
        ;;
    "shell")
        shell
        ;;
    "db")
        db_operations "$2"
        ;;
    "cleanup")
        cleanup
        ;;
    "help"|"-h"|"--help")
        show_help
        ;;
    "")
        show_help
        ;;
    *)
        print_error "Unknown command: $1"
        show_help
        exit 1
        ;;
esac