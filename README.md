# Stockly Inventory Management System - Next.js, Prisma, MongoDB Project

![Screenshot 2025-09-01 at 16 22 30](https://github.com/user-attachments/assets/98e1bde0-f655-4d51-865e-a53bf79b227d)
![Screenshot 2025-09-01 at 16 22 53](https://github.com/user-attachments/assets/d3ce05ba-8b69-4cf2-a43c-c83440145168)
![Screenshot 2025-09-01 at 16 26 05](https://github.com/user-attachments/assets/648495c3-5c84-45fa-acc7-3b6d81c6d1e8)
![Screenshot 2025-09-01 at 16 26 33](https://github.com/user-attachments/assets/8e3843cf-b7f2-4616-a5b0-e4863a3713db)
![Screenshot 2025-09-01 at 16 26 54](https://github.com/user-attachments/assets/c0119f93-e830-45ba-b6d7-6677fe8ec9d6)
![Screenshot 2025-09-01 at 16 27 07](https://github.com/user-attachments/assets/74478903-6be5-48f5-b163-dda28957ba1d)
![Screenshot 2025-09-01 at 16 27 22](https://github.com/user-attachments/assets/0aa8e751-5672-4486-bca1-fe240f0531d3)
![Screenshot 2025-09-01 at 16 27 32](https://github.com/user-attachments/assets/28932e68-6e8d-4b0c-8706-a5ac3f050e1b)
![Screenshot 2025-09-01 at 16 27 41](https://github.com/user-attachments/assets/0b4d86f9-39e0-435d-b14e-8385d377c262)
![Screenshot 2025-09-01 at 16 27 56](https://github.com/user-attachments/assets/3ee2c580-e478-4c72-9d04-b180e78964d0)
![Screenshot 2025-09-01 at 16 29 59](https://github.com/user-attachments/assets/3b94e1f9-3bba-4fe8-a736-c3d69e508bf3)
![Screenshot 2025-09-01 at 16 30 16](https://github.com/user-attachments/assets/a071a03c-a095-48d9-8c02-b8a07fb64cf1)
![Screenshot 2025-09-01 at 16 30 28](https://github.com/user-attachments/assets/0ede9db7-f390-4a4d-a7a5-6d681bd532b4)
![Screenshot 2025-09-01 at 16 31 17](https://github.com/user-attachments/assets/8996a920-d398-4618-989c-71ebe42e059d)
![Screenshot 2025-09-01 at 16 31 39](https://github.com/user-attachments/assets/24017eaf-4054-4334-b002-6c40103974ad)
![Screenshot 2025-09-01 at 16 31 58](https://github.com/user-attachments/assets/7c476153-27b1-47c1-8601-ec027dadcb9c)

---

Efficiently manage your product inventory with Stockly—a modern, secure, and responsive inventory management web application built with Next.js, React, Prisma, and MongoDB.

- **Live-Demo:** [https://stockly-inventory.vercel.app/](https://stockly-inventory.vercel.app/)

---

## Project Overview

Stockly is designed to help businesses and individuals efficiently manage their product inventory. It provides a robust, full-stack solution with secure authentication, CRUD operations, filtering, sorting, analytics dashboard, QR code generation, data export capabilities, and a beautiful UI powered by shadcn/ui and Tailwind CSS. The project is open source and intended for learning, extension, and real-world use.

---

## ⚡ Quick Start

Get up and running in 2 minutes with Docker:

```bash
# Clone the repository
git clone https://github.com/your-username/stockly.git
cd stockly

# Start with Docker (Linux/macOS)
chmod +x dev.sh
./dev.sh start

# Or on Windows
dev.bat start

# Access the application
# http://localhost:3000
```

That's it! MongoDB and the application will be automatically configured and running.

**Don't have Docker?** Skip to the [Manual Setup](#-manual-development-setup-alternative) section.

---

## 🚀 Features

### Core Functionality

- **Product Management**: Complete CRUD operations for products with SKU tracking
- **Category Management**: Organize products with custom categories
- **Supplier Management**: Track and manage product suppliers
- **Real-time Search**: Instant filtering by product name or SKU
- **Advanced Filtering**: Filter by category, supplier, and status
- **Responsive Design**: Works seamlessly on desktop, tablet, and mobile
- **Dark/Light Theme**: Toggle between themes with system preference detection

### Advanced Features

- **📊 Analytics Dashboard**: Comprehensive business insights with charts and metrics
- **📈 Data Visualization**: Interactive charts showing inventory trends and statistics
- **🔍 Advanced Search**: Enhanced search with multiple filter options
- **📱 QR Code Generation**: Generate QR codes for products with click-to-view functionality
- **📄 Data Export**: Export product data to CSV and Excel formats
- **📚 API Documentation**: Built-in API documentation page with endpoint details
- **🔧 API Status Monitor**: Real-time API health monitoring and status dashboard
- **⚠️ Low Stock Alerts**: Visual alerts for products with low inventory
- **📊 Performance Optimizations**: React memoization, lazy loading, and caching

### Authentication & Security

- **JWT Authentication**: Secure token-based authentication
- **User Registration**: Secure account creation with password hashing
- **Session Management**: Persistent login sessions with automatic token refresh
- **Protected Routes**: Automatic redirection for unauthenticated users
- **Password Security**: bcryptjs hashing for secure password storage

### User Experience

- **Loading States**: Visual feedback during all operations
- **Toast Notifications**: Success/error messages for all user actions
- **Form Validation**: Client-side validation with error handling
- **Accessibility**: ARIA-compliant components for screen readers
- **Keyboard Navigation**: Full keyboard accessibility support
- **Consistent Navigation**: AppHeader displayed on all authenticated pages

---

## 🛠️ Technology Stack

### Frontend

- **Next.js 15.0.3**: React framework with App Router
- **React 19**: Latest React with concurrent features
- **TypeScript**: Type-safe development
- **Tailwind CSS**: Utility-first CSS framework
- **Shadcn/ui**: Modern component library
- **Zustand**: Lightweight state management
- **React Hook Form**: Form handling with validation
- **React Table**: Advanced table functionality
- **Recharts**: Data visualization and charting library
- **QRCode**: QR code generation library
- **Papaparse**: CSV parsing and generation
- **XLSX**: Excel file generation

### Backend

- **Next.js API Routes**: Server-side API endpoints
- **Prisma ORM**: Type-safe database operations with transaction support
- **MongoDB**: NoSQL database with replica set configuration for transactions
- **JWT**: JSON Web Token authentication
- **bcryptjs**: Password hashing
- **Axios**: HTTP client for API requests

### Development Tools

- **Docker**: Containerized development environment
- **ESLint**: Code linting and formatting
- **PostCSS**: CSS processing
- **Autoprefixer**: CSS vendor prefixing
- **TypeScript**: Static type checking

---

## 📁 Project Structure

```bash
stockly/
├── app/                          # Next.js App Router
│   ├── AppHeader/                # Application header component
│   │   ├── AppHeader.tsx         # Main header with theme toggle
│   │   └── ModeToggle.tsx       # Dark/light theme toggle
│   ├── AppTable/                 # Main table component
│   │   ├── AppTable.tsx          # Main table wrapper
│   │   ├── dropdowns/            # Filter dropdowns
│   │   │   ├── CategoryDropDown.tsx
│   │   │   ├── StatusDropDown.tsx
│   │   │   └── SupplierDropDown.tsx
│   │   └── ProductDialog/        # Product management dialogs
│   │       ├── AddProductDialog.tsx
│   │       ├── AddCategoryDialog.tsx
│   │       ├── AddSupplierDialog.tsx
│   │       └── _components/      # Dialog sub-components
│   ├── Products/                 # Product-related components
│   │   ├── ProductTable.tsx      # Main product table
│   │   ├── columns.tsx           # Table column definitions
│   │   ├── ProductsDropDown.tsx  # Product action dropdown
│   │   └── PaginationSelection.tsx
│   ├── analytics/                # Analytics dashboard
│   │   └── page.tsx              # Analytics page with charts
│   ├── api-docs/                 # API documentation
│   │   └── page.tsx              # API docs page
│   ├── api-status/               # API status monitoring
│   │   └── page.tsx              # API status page
│   ├── login/                    # Authentication pages
│   │   └── page.tsx
│   ├── register/
│   │   └── page.tsx
│   ├── logout/
│   │   └── page.tsx
│   ├── authContext.tsx           # Authentication context
│   ├── useProductStore.ts        # Zustand store for state management
│   ├── types.ts                  # TypeScript type definitions
│   ├── layout.tsx                # Root layout
│   ├── page.tsx                  # Main page
│   └── Home.tsx                  # Home component
├── components/                   # Reusable UI components
│   ├── ui/                       # Shadcn/ui components
│   │   ├── button.tsx
│   │   ├── dialog.tsx
│   │   ├── input.tsx
│   │   ├── table.tsx
│   │   ├── toast.tsx
│   │   ├── qr-code.tsx           # QR code component
│   │   ├── qr-code-hover.tsx     # QR code hover component
│   │   ├── analytics-card.tsx    # Analytics metrics card
│   │   ├── chart-card.tsx        # Chart wrapper component
│   │   ├── advanced-search.tsx  # Advanced search component
│   │   ├── forecasting-card.tsx  # Forecasting insights card
│   │   └── progress.tsx          # Progress bar component
│   ├── GlobalLoading.tsx         # Global loading component
│   ├── Loading.tsx               # Loading spinner
│   └── Skeleton.tsx              # Skeleton loading
├── pages/                        # API routes
│   └── api/
│       ├── auth/                 # Authentication endpoints
│       │   ├── login.ts
│       │   ├── register.ts
│       │   ├── logout.ts
│       │   └── session.ts
│       ├── products/             # Product management
│       │   └── index.ts
│       ├── categories/           # Category management
│       │   └── index.ts
│       └── suppliers/            # Supplier management
│           └── index.ts
├── prisma/                       # Database schema and client
│   ├── schema.prisma             # Database schema
│   ├── client.ts                 # Prisma client
│   ├── product.ts                # Product operations
│   ├── category.ts               # Category operations
│   └── supplier.ts               # Supplier operations
├── utils/                        # Utility functions
│   ├── auth.ts                   # Authentication utilities
│   └── axiosInstance.ts          # Axios configuration
├── hooks/                        # Custom React hooks
│   └── use-toast.ts              # Toast hook
├── middleware/                   # Next.js middleware
│   └── authMiddleware.ts         # Authentication middleware
├── middleware.ts                 # Route protection middleware
├── docker/                       # Docker configuration
│   ├── mongo-init.js             # MongoDB initialization script
│   └── start.sh                  # Application startup script
├── public/                       # Static assets
│   ├── favicon.ico
│   └── ...                       # Other static files
├── Dockerfile                    # Docker image configuration
├── docker-compose.yml            # Docker services configuration
├── .dockerignore                 # Docker ignore patterns
├── .gitattributes                # Git line ending configuration
├── .env.docker                   # Docker environment template
├── dev.sh                        # Development helper script (Linux/macOS)
└── dev.bat                       # Development helper script (Windows)
```

---

## 🚀 Getting Started

### Prerequisites

- **Node.js**: Version 18 or higher
- **npm** or **yarn**: Package manager
- **MongoDB**: Database (local or cloud instance)
- **Git**: Version control

### Installation

1. **Clone the repository**

   ```bash
   git clone https://github.com/your-username/stockly.git
   cd stockly
   ```

2. **Install dependencies**

   ```bash
   npm install
   # or
   yarn install
   ```

3. **Environment Setup**

   Create a `.env` file in the root directory:

   ```env
   # Database Configuration
   # DATABASE_URL="mongodb://localhost:27017/stockly"
   # or for MongoDB Atlas:
   DATABASE_URL="mongodb+srv://username:password@cluster.mongodb.net/stockly?retryWrites=true&w=majority"

   # JWT Configuration
   JWT_SECRET="your-super-secret-jwt-key-here"
   # JWT_EXPIRES_IN="1h"

   # Application Configuration (Optional)
   # NEXTAUTH_URL="http://localhost:3000"
   # NEXTAUTH_SECRET="your-nextauth-secret"
   ```

4. **Database Setup**

   ```bash
   # Generate Prisma client
   npx prisma generate

   # Push schema to database
   npx prisma db push

   # (Optional) View database in Prisma Studio
   npx prisma studio
   ```

5. **Run the development server**

   ```bash
   npm run dev
   # or
   yarn dev
   ```

6. **Open your browser**
   Navigate to [http://localhost:3000](http://localhost:3000)

---

## 🐳 Docker Development Setup (Recommended)

The easiest way to get started is using Docker, which provides a complete development environment without any local setup requirements.

### Prerequisites for Docker Setup

- **Docker**: Latest version
- **Docker Compose**: Latest version
- **Git**: Version control

### Quick Start with Docker

1. **Clone the repository**

   ```bash
   git clone https://github.com/your-username/stockly.git
   cd stockly
   ```

2. **Start the development environment**

   **Linux/macOS:**
   ```bash
   chmod +x dev.sh
   ./dev.sh start
   ```

   **Windows:**
   ```cmd
   dev.bat start
   ```

3. **Access the application**
   - Application: [http://localhost:3000](http://localhost:3000)
   - MongoDB: `mongodb://localhost:27017`

That's it! The application will automatically:
- Set up MongoDB with proper configuration
- Install all dependencies
- Generate Prisma client
- Push database schema
- Start the development server with hot reload

### Docker Development Commands

**Linux/macOS (`./dev.sh`):**
```bash
./dev.sh start         # Start the development environment
./dev.sh stop          # Stop the development environment
./dev.sh restart       # Restart the development environment
./dev.sh logs          # View logs from all services
./dev.sh logs app      # View logs from app service only
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
dev.bat status        # Show status of all services
dev.bat shell         # Enter the app container shell
dev.bat db reset      # Reset database (⚠️  deletes all data)
dev.bat db studio     # Open Prisma Studio
dev.bat db generate   # Generate Prisma client
dev.bat cleanup       # Clean up Docker resources
dev.bat help          # Show help
```

### Docker Services

The development environment includes:

- **MongoDB 5.0.3 (Replica Set)**: Database with automatic initialization and replica set configuration for Prisma compatibility
- **Next.js Application**: Running in development mode with hot reload
- **Volume Mounts**: For live code editing and persistent data
- **Health Checks**: Ensuring services are ready before starting dependent services

> **Note**: We use `prismagraphql/mongo-single-replica:5.0.3` instead of standard MongoDB because Prisma requires a replica set configuration for transaction support, even in single-node setups.

### Docker Environment Variables

The Docker setup uses these environment variables (automatically configured):

```env
NODE_ENV=development
DATABASE_URL=mongodb://admin:password123@mongodb:27017/stockly?authSource=admin&directConnection=true&retryWrites=true&w=majority
JWT_SECRET=your-super-secret-jwt-key-for-development-only
JWT_EXPIRES_IN=24h
WATCHPACK_POLLING=true
```

> **Important**: The `directConnection=true` and `authSource=admin` parameters in the DATABASE_URL are required for proper connection to the MongoDB replica set.

### Troubleshooting Docker Setup

**Container Issues:**
```bash
# View detailed logs
./dev.sh logs

# Restart services
./dev.sh restart

# Clean up and restart fresh
./dev.sh cleanup
./dev.sh start
```

**Database Connection Issues:**
```bash
# Reset database
./dev.sh db reset

# Check MongoDB logs
docker-compose logs mongodb
```

**Prisma Transaction Errors:**
If you see errors like "Prisma needs to perform transactions, which requires your MongoDB server to be run as a replica set", this indicates the MongoDB replica set isn't properly configured. Our Docker setup automatically handles this with the `prismagraphql/mongo-single-replica` image.

**Port Conflicts:**
If ports 3000 or 27017 are already in use, you can modify the `docker-compose.yml` file to use different ports.

---

## 💻 Manual Development Setup (Alternative)

If you prefer to set up the development environment manually without Docker:

> **⚠️ Important Note**: When setting up MongoDB manually, you need a replica set configuration for Prisma to work properly with transactions. MongoDB Atlas automatically provides this, but local MongoDB installations require additional setup. We recommend using the Docker setup for simplicity.

## 🔧 Environment Variables

### Required Variables

| Variable         | Description               | Example                             |
| ---------------- | ------------------------- | ----------------------------------- |
| `DATABASE_URL`   | MongoDB connection string | `mongodb://localhost:27017/stockly` |
| `JWT_SECRET`     | Secret key for JWT tokens | `your-super-secret-jwt-key-here`    |
| `JWT_EXPIRES_IN` | JWT token expiration time | `1h`                                |

### Optional Variables

| Variable          | Description        | Default                 |
| ----------------- | ------------------ | ----------------------- |
| `NEXTAUTH_URL`    | NextAuth.js URL    | `http://localhost:3000` |
| `NEXTAUTH_SECRET` | NextAuth.js secret | Auto-generated          |

### MongoDB Atlas Setup

1. Create a MongoDB Atlas account
2. Create a new cluster
3. Get your connection string
4. Replace `username`, `password`, and `cluster` with your values
5. Add the connection string to your `.env` file

> **Recommended**: MongoDB Atlas automatically provides replica set configuration required by Prisma for transactions.

### Local MongoDB Setup (Advanced)

For local MongoDB installations, you need to configure a replica set:

1. **Install MongoDB** following the official documentation
2. **Configure replica set** by starting MongoDB with replica set options:
   ```bash
   mongod --replSet rs0 --port 27017 --dbpath /data/db
   ```
3. **Initialize replica set** in MongoDB shell:
   ```javascript
   rs.initiate()
   ```
4. **Update your DATABASE_URL** to include replica set parameters:
   ```
   DATABASE_URL="mongodb://localhost:27017/stockly?replicaSet=rs0"
   ```

> **Note**: This is complex setup. We recommend using Docker or MongoDB Atlas instead.

---

## 📊 Database Schema

### User Model

```prisma
model User {
  id        String    @id @default(auto()) @map("_id") @db.ObjectId
  createdAt DateTime  @db.Date
  email     String    @unique
  name      String
  password  String
  updatedAt DateTime? @db.Date
  username  String?   @unique
}
```

### Product Model

```prisma
model Product {
  id         String   @id @default(auto()) @map("_id") @db.ObjectId
  categoryId String   @db.ObjectId
  createdAt  DateTime @db.Date
  name       String
  price      Float
  quantity   BigInt
  sku        String   @unique
  status     String
  supplierId String   @db.ObjectId
  userId     String   @db.ObjectId
}
```

### Category Model

```prisma
model Category {
  id     String @id @default(auto()) @map("_id") @db.ObjectId
  name   String
  userId String @db.ObjectId
}
```

### Supplier Model

```prisma
model Supplier {
  id     String @id @default(auto()) @map("_id") @db.ObjectId
  name   String
  userId String @db.ObjectId
}
```

---

## 🔌 API Endpoints

### Authentication Endpoints

#### POST `/api/auth/register`

Register a new user account.

```typescript
// Request Body
{
  "name": "John Doe",
  "email": "john@example.com",
  "password": "securepassword123"
}

// Response
{
  "success": true,
  "message": "User registered successfully"
}
```

#### POST `/api/auth/login`

Authenticate user and get JWT token.

```typescript
// Request Body
{
  "email": "john@example.com",
  "password": "securepassword123"
}

// Response
{
  "success": true,
  "token": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9...",
  "user": {
    "id": "507f1f77bcf86cd799439011",
    "name": "John Doe",
    "email": "john@example.com"
  }
}
```

#### POST `/api/auth/logout`

Logout user and invalidate session.

```typescript
// Response
{
  "success": true,
  "message": "Logged out successfully"
}
```

#### GET `/api/auth/session`

Get current user session information.

```typescript
// Response
{
  "user": {
    "id": "507f1f77bcf86cd799439011",
    "name": "John Doe",
    "email": "john@example.com",
    "createdAt": "2024-01-01T00:00:00.000Z",
    "updatedAt": "2024-01-01T00:00:00.000Z"
  }
}
```

### Product Management Endpoints

#### GET `/api/products`

Get all products for the authenticated user.

```typescript
// Response
[
  {
    id: "507f1f77bcf86cd799439011",
    name: "Laptop",
    sku: "LAP001",
    price: 999.99,
    quantity: 10,
    status: "Available",
    category: "Electronics",
    supplier: "TechCorp",
    createdAt: "2024-01-01T00:00:00.000Z",
  },
];
```

#### POST `/api/products`

Create a new product.

```typescript
// Request Body
{
  "name": "Laptop",
  "sku": "LAP001",
  "price": 999.99,
  "quantity": 10,
  "status": "Available",
  "categoryId": "507f1f77bcf86cd799439011",
  "supplierId": "507f1f77bcf86cd799439012"
}

// Response
{
  "id": "507f1f77bcf86cd799439013",
  "name": "Laptop",
  "sku": "LAP001",
  "price": 999.99,
  "quantity": 10,
  "status": "Available",
  "category": "Electronics",
  "supplier": "TechCorp",
  "createdAt": "2024-01-01T00:00:00.000Z"
}
```

#### PUT `/api/products`

Update an existing product.

```typescript
// Request Body
{
  "id": "507f1f77bcf86cd799439013",
  "name": "Updated Laptop",
  "sku": "LAP001",
  "price": 1099.99,
  "quantity": 15,
  "status": "Available",
  "categoryId": "507f1f77bcf86cd799439011",
  "supplierId": "507f1f77bcf86cd799439012"
}
```

#### DELETE `/api/products`

Delete a product.

```typescript
// Request Body
{
  "id": "507f1f77bcf86cd799439013"
}

// Response
204 No Content
```

### Category Management Endpoints

#### GET `/api/categories`

Get all categories for the authenticated user.

#### POST `/api/categories`

Create a new category.

#### PUT `/api/categories`

Update an existing category.

#### DELETE `/api/categories`

Delete a category.

### Supplier Management Endpoints

#### GET `/api/suppliers`

Get all suppliers for the authenticated user.

#### POST `/api/suppliers`

Create a new supplier.

#### PUT `/api/suppliers`

Update an existing supplier.

#### DELETE `/api/suppliers`

Delete a supplier.

---

## 🎨 Component Architecture

### State Management with Zustand

The application uses Zustand for state management, providing a simple and efficient way to manage global state.

```typescript
// Example: Product Store
interface ProductState {
  allProducts: Product[];
  categories: Category[];
  suppliers: Supplier[];
  isLoading: boolean;
  loadProducts: () => Promise<void>;
  addProduct: (product: Product) => Promise<{ success: boolean }>;
  updateProduct: (product: Product) => Promise<{ success: boolean }>;
  deleteProduct: (id: string) => Promise<{ success: boolean }>;
}

export const useProductStore = create<ProductState>((set) => ({
  allProducts: [],
  categories: [],
  suppliers: [],
  isLoading: false,

  loadProducts: async () => {
    set({ isLoading: true });
    try {
      const response = await axiosInstance.get("/products");
      set({ allProducts: response.data || [] });
    } catch (error) {
      console.error("Error loading products:", error);
    } finally {
      set({ isLoading: false });
    }
  },
  // ... other methods
}));
```

### Authentication Context

The authentication context provides user state and authentication methods throughout the application.

```typescript
// Example: Auth Context Usage
const { isLoggedIn, user, login, logout } = useAuth();

// Protected route example
useEffect(() => {
  if (!isLoggedIn) {
    router.push("/login");
  }
}, [isLoggedIn, router]);
```

### Reusable Components

#### Dialog Components

All dialogs follow a consistent pattern with proper accessibility attributes:

```typescript
// Example: Product Dialog
<Dialog open={open} onOpenChange={setOpen}>
  <DialogContent aria-describedby="product-dialog-description">
    <DialogHeader>
      <DialogTitle>Add Product</DialogTitle>
    </DialogHeader>
    <DialogDescription id="product-dialog-description">
      Fill in the product details below.
    </DialogDescription>
    {/* Form content */}
  </DialogContent>
</Dialog>
```

#### Table Components

The product table uses React Table for advanced functionality:

```typescript
// Example: Table Column Definition
const columns: ColumnDef<Product>[] = [
  {
    accessorKey: "name",
    header: "Product Name",
    cell: ({ row }) => <div>{row.getValue("name")}</div>,
  },
  {
    accessorKey: "sku",
    header: "SKU",
  },
  // ... other columns
];
```

#### QR Code Component

QR code generation with click-to-view functionality:

```typescript
// Example: QR Code Usage
<QRCodeHover
  value={`Product: ${product.name}\nSKU: ${product.sku}\nPrice: $${product.price}`}
  title="View QR Code"
/>
```

#### Analytics Components

Reusable analytics cards and charts:

```typescript
// Example: Analytics Card
<AnalyticsCard
  title="Total Products"
  value={totalProducts}
  description="Total products in inventory"
  icon={<Package className="h-4 w-4" />}
/>
```

---

## 🔒 Security Features

### JWT Authentication

- Secure token-based authentication
- Automatic token refresh
- Protected API routes
- Session management

### Password Security

- bcryptjs hashing for passwords
- Secure password validation
- No plain text password storage

### API Security

- Request validation
- Error handling without sensitive data exposure
- CORS protection
- Rate limiting (can be implemented)

### Data Validation

- Client-side form validation
- Server-side data validation
- TypeScript type safety
- Prisma schema validation

---

## 🎯 Key Features Implementation

### Real-time Search

The search functionality filters products instantly as users type:

```typescript
// Search implementation in ProductTable.tsx
const filteredData = useMemo(() => {
  return data.filter((product) => {
    const searchMatch = searchTerm
      ? product.name.toLowerCase().includes(searchTerm.toLowerCase()) ||
        product.sku.toLowerCase().includes(searchTerm.toLowerCase())
      : true;

    return searchMatch && categoryFilter && supplierFilter && statusFilter;
  });
}, [data, searchTerm, categoryFilter, supplierFilter, statusFilter]);
```

### Toast Notifications

Consistent user feedback with toast notifications:

```typescript
// Example: Success toast
toast({
  title: "Success!",
  description: "Product created successfully.",
  variant: "default",
});

// Example: Error toast
toast({
  title: "Error",
  description: "Failed to create product. Please try again.",
  variant: "destructive",
});
```

### Loading States

Visual feedback during async operations:

```typescript
// Example: Button loading state
<Button disabled={isLoading}>
  {isLoading ? "Creating..." : "Create Product"}
</Button>
```

### Theme Toggle

Dark/light theme with system preference detection:

```typescript
// Theme toggle implementation
const { theme, setTheme } = useTheme();

const toggleTheme = () => {
  setTheme(theme === "dark" ? "light" : "dark");
};
```

### Data Export

CSV and Excel export functionality:

```typescript
// Example: Export to CSV
const exportToCSV = () => {
  const csv = Papa.unparse(filteredProducts);
  const blob = new Blob([csv], { type: "text/csv;charset=utf-8;" });
  const link = document.createElement("a");
  const url = URL.createObjectURL(blob);
  link.setAttribute("href", url);
  link.setAttribute("download", "products.csv");
  link.style.visibility = "hidden";
  document.body.appendChild(link);
  link.click();
  document.body.removeChild(link);
};
```

### Analytics Dashboard

Comprehensive business insights with charts:

```typescript
// Example: Analytics implementation
const analyticsData = useMemo(() => {
  return {
    totalProducts: products.length,
    totalValue: products.reduce(
      (sum, p) => sum + p.price * Number(p.quantity),
      0
    ),
    lowStockItems: products.filter((p) => Number(p.quantity) < 10).length,
    categories: categoryStats,
    monthlyTrends: monthlyData,
  };
}, [products]);
```

---

## 🚀 Deployment

### Docker Production Deployment

For production deployment using Docker:

1. **Create production Docker Compose file (`docker-compose.prod.yml`):**

   ```yaml
   version: '3.8'

   services:
     mongodb:
       image: mongo:7.0
       container_name: stockly-mongodb-prod
       restart: unless-stopped
       environment:
         MONGO_INITDB_ROOT_USERNAME: ${MONGO_ROOT_USERNAME}
         MONGO_INITDB_ROOT_PASSWORD: ${MONGO_ROOT_PASSWORD}
         MONGO_INITDB_DATABASE: stockly
       volumes:
         - mongodb_prod_data:/data/db
       networks:
         - stockly-prod-network

     app:
       build:
         context: .
         dockerfile: Dockerfile.prod
       container_name: stockly-app-prod
       restart: unless-stopped
       environment:
         - NODE_ENV=production
         - DATABASE_URL=${DATABASE_URL}
         - JWT_SECRET=${JWT_SECRET}
         - JWT_EXPIRES_IN=${JWT_EXPIRES_IN}
       ports:
         - "3000:3000"
       depends_on:
         - mongodb
       networks:
         - stockly-prod-network

   volumes:
     mongodb_prod_data:

   networks:
     stockly-prod-network:
       driver: bridge
   ```

2. **Create production Dockerfile (`Dockerfile.prod`):**

   ```dockerfile
   FROM node:20-alpine AS base
   
   FROM base AS deps
   RUN apk add --no-cache libc6-compat
   WORKDIR /app
   COPY package.json package-lock.json* ./
   RUN npm ci --only=production && npm cache clean --force
   
   FROM base AS builder
   WORKDIR /app
   COPY --from=deps /app/node_modules ./node_modules
   COPY . .
   RUN npx prisma generate
   RUN npm run build
   
   FROM base AS runner
   WORKDIR /app
   ENV NODE_ENV=production
   RUN addgroup --system --gid 1001 nodejs
   RUN adduser --system --uid 1001 nextjs
   COPY --from=builder /app/public ./public
   COPY --from=builder --chown=nextjs:nodejs /app/.next/standalone ./
   COPY --from=builder --chown=nextjs:nodejs /app/.next/static ./.next/static
   COPY --from=builder /app/prisma ./prisma
   COPY --from=deps /app/node_modules ./node_modules
   USER nextjs
   EXPOSE 3000
   ENV PORT=3000
   CMD ["node", "server.js"]
   ```

3. **Deploy with production configuration:**

   ```bash
   docker-compose -f docker-compose.prod.yml up -d
   ```

### Vercel Deployment (Recommended for Serverless)

1. **Connect your GitHub repository to Vercel**
2. **Set environment variables in Vercel dashboard**
3. **Deploy automatically on push to main branch**

### Environment Variables for Production

```env
DATABASE_URL="your-production-mongodb-url"
JWT_SECRET="your-production-jwt-secret"
JWT_EXPIRES_IN="1h"
```

### Build Commands

```bash
# Build the application
npm run build

# Start production server
npm start

# Run linting
npm run lint
```

---

## 🧪 Testing

### Manual Testing Checklist

- [ ] User registration and login
- [ ] Product CRUD operations
- [ ] Category management
- [ ] Supplier management
- [ ] Search and filtering
- [ ] Theme toggle
- [ ] Responsive design
- [ ] Form validation
- [ ] Error handling
- [ ] Loading states
- [ ] Analytics dashboard
- [ ] QR code generation
- [ ] Data export (CSV/Excel)
- [ ] API documentation page
- [ ] API status monitoring

### Automated Testing (Future Enhancement)

```bash
# Install testing dependencies
npm install --save-dev jest @testing-library/react @testing-library/jest-dom

# Run tests
npm test

# Run tests with coverage
npm test -- --coverage
```

---

## 🔧 Customization

### Adding New Features

1. **Create new API endpoints** in `pages/api/`
2. **Add new Prisma models** in `schema.prisma`
3. **Create new components** in `components/`
4. **Update state management** in `useProductStore.ts`
5. **Add new routes** in `app/`

### Styling Customization

The application uses Tailwind CSS with custom design tokens:

```typescript
// tailwind.config.ts
export default {
  theme: {
    extend: {
      colors: {
        primary: {
          DEFAULT: "hsl(var(--primary))",
          foreground: "hsl(var(--primary-foreground))",
        },
        // ... other custom colors
      },
    },
  },
};
```

### Component Customization

All UI components are built with Shadcn/ui and can be customized:

```bash
# Add new Shadcn/ui components
npx shadcn@latest add [component-name]
```

---

## 🐛 Troubleshooting

### Common Issues

#### Database Connection Issues

```bash
# Check database connection
npx prisma db pull

# Reset database (development only)
npx prisma db push --force-reset
```

**MongoDB Replica Set Errors:**
If you encounter errors like "Prisma needs to perform transactions, which requires your MongoDB server to be run as a replica set":

- **Using Docker (Recommended)**: Our Docker setup automatically handles this with `prismagraphql/mongo-single-replica` image
- **MongoDB Atlas**: Automatically provides replica set configuration  
- **Local MongoDB**: Requires manual replica set setup (see Manual Setup section)

**Connection String Issues:**
- Ensure `directConnection=true` parameter for single-node replica sets
- Include `authSource=admin` for authenticated connections
- Use `retryWrites=true&w=majority` for proper write concerns

#### Build Errors

```bash
# Clear Next.js cache
rm -rf .next

# Reinstall dependencies
rm -rf node_modules package-lock.json
npm install
```

#### Authentication Issues

- Check JWT_SECRET environment variable
- Verify database connection
- Check user credentials in database

#### Performance Issues

- Enable Next.js production mode
- Optimize images and assets
- Use proper caching strategies

#### QR Code Issues

- Ensure QR code library is properly installed
- Check for hydration mismatches in development
- Verify client-side rendering for dynamic content

---

## 📚 Learning Resources

### Next.js

- [Next.js Documentation](https://nextjs.org/docs)
- [App Router Guide](https://nextjs.org/docs/app)
- [API Routes](https://nextjs.org/docs/api-routes/introduction)

### React

- [React Documentation](https://react.dev/)
- [React Hooks](https://react.dev/reference/react)
- [React Patterns](https://reactpatterns.com/)

### Prisma

- [Prisma Documentation](https://www.prisma.io/docs)
- [Prisma with MongoDB](https://www.prisma.io/docs/concepts/database-connectors/mongodb)
- [Prisma Client](https://www.prisma.io/docs/concepts/components/prisma-client)

### Zustand

- [Zustand Documentation](https://github.com/pmndrs/zustand)
- [Zustand Best Practices](https://github.com/pmndrs/zustand#best-practices)

### Tailwind CSS

- [Tailwind CSS Documentation](https://tailwindcss.com/docs)
- [Tailwind CSS Components](https://tailwindui.com/)

### Data Visualization

- [Recharts Documentation](https://recharts.org/)
- [Chart.js](https://www.chartjs.org/)

### QR Code Generation

- [QRCode Library](https://github.com/zpao/qrcode.react)

---

## 🤝 Contributing

### Development Workflow

1. **Fork the repository**
2. **Create a feature branch**

   ```bash
   git checkout -b feature/your-feature-name
   ```

3. **Make your changes**
4. **Test thoroughly**
5. **Commit your changes**

   ```bash
   git commit -m "feat: add new feature"
   ```

6. **Push to your fork**

   ```bash
   git push origin feature/your-feature-name
   ```

7. **Create a pull request**

### Code Style Guidelines

- Use TypeScript for type safety
- Follow ESLint rules
- Write meaningful commit messages
- Add comments for complex logic
- Test your changes

---

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---

## 🙏 Acknowledgments

- **Next.js Team** for the amazing framework
- **Vercel** for hosting and deployment
- **Prisma Team** for the excellent ORM
- **Shadcn/ui** for the beautiful components
- **Tailwind CSS** for the utility-first CSS framework
- **Recharts** for the data visualization library

---

## 📞 Support

If you encounter any issues or have questions:

1. **Check the troubleshooting section**
2. **Search existing issues**
3. **Create a new issue** with detailed information
4. **Contact the maintainer**

---

## 🎯 Roadmap

### Planned Features

- [ ] User roles and permissions
- [ ] Advanced reporting and analytics
- [ ] Bulk import/export functionality
- [ ] Email notifications
- [ ] Mobile app
- [ ] API rate limiting
- [ ] Advanced search filters
- [ ] Product images
- [ ] Inventory alerts
- [ ] Audit logs
- [ ] Real-time notifications
- [ ] Advanced forecasting algorithms
- [ ] Multi-language support
- [ ] Advanced user preferences

### Performance Improvements

- [ ] Database indexing optimization
- [ ] Caching strategies
- [ ] Code splitting
- [ ] Image optimization
- [ ] Bundle size optimization
- [ ] Server-side rendering improvements
- [ ] Progressive Web App (PWA) features

---

## 📊 Project Statistics

- **Lines of Code**: ~8,000+
- **Components**: 30+
- **API Endpoints**: 12+
- **Database Models**: 4
- **Dependencies**: 40+
- **Pages**: 8+
- **Features**: 20+

---

## 🏆 Features Summary

| Feature                   | Status      | Description                            |
| ------------------------- | ----------- | -------------------------------------- |
| User Authentication       | ✅ Complete | JWT-based auth with registration/login |
| Product Management        | ✅ Complete | Full CRUD with search and filtering    |
| Category Management       | ✅ Complete | Create, edit, delete categories        |
| Supplier Management       | ✅ Complete | Manage product suppliers               |
| Responsive Design         | ✅ Complete | Mobile-first design                    |
| Dark/Light Theme          | ✅ Complete | Theme toggle with system preference    |
| Real-time Search          | ✅ Complete | Instant product filtering              |
| Toast Notifications       | ✅ Complete | User feedback system                   |
| Loading States            | ✅ Complete | Visual feedback during operations      |
| Form Validation           | ✅ Complete | Client and server-side validation      |
| Accessibility             | ✅ Complete | ARIA-compliant components              |
| TypeScript                | ✅ Complete | Full type safety                       |
| Database Integration      | ✅ Complete | MongoDB with Prisma ORM                |
| API Security              | ✅ Complete | Protected routes and validation        |
| Analytics Dashboard       | ✅ Complete | Business insights with charts          |
| QR Code Generation        | ✅ Complete | Product QR codes with click-to-view    |
| Data Export               | ✅ Complete | CSV and Excel export functionality     |
| API Documentation         | ✅ Complete | Built-in API docs page                 |
| API Status Monitor        | ✅ Complete | Real-time API health monitoring        |
| Performance Optimizations | ✅ Complete | React memoization and caching          |
| Low Stock Alerts          | ✅ Complete | Visual alerts for low inventory        |
| Advanced Search           | ✅ Complete | Enhanced search with multiple filters  |

---

## 🎉 Happy Coding! 🎉

Feel free to use this project repository and extend this project further!

If you have any questions or want to share your work, reach out via GitHub or my portfolio at [https://arnob-mahmud.vercel.app/](https://arnob-mahmud.vercel.app/).

**Enjoy building and learning!** 🚀

Thank you! 😊
