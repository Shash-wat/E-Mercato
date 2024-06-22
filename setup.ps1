# Root directories
$rootDirs = @("frontend", "backend", "recommendation-system", "docs")

# Frontend directories and files
$frontendDirs = @("public", "src", "src/assets/images", "src/assets/styles", "src/components", "src/pages", "src/services")
$frontendFiles = @("public/index.html", "src/App.js", "src/index.js", "package.json")

# Backend directories and files
$backendDirs = @("config", "controllers", "models", "routes", "utils")
$backendFiles = @("config/db.js", "config/default.json", "controllers/productController.js", "controllers/userController.js", "controllers/orderController.js", "models/productModel.js", "models/userModel.js", "models/orderModel.js", "routes/productRoutes.js", "routes/userRoutes.js", "routes/orderRoutes.js", "utils/generateToken.js", "utils/errorHandler.js", "server.js", "package.json")

# Recommendation system directories and files
$recSysDirs = @("data", "models", "notebooks", "scripts", "utils")
$recSysFiles = @("data/products.csv", "data/users.csv", "models/collaborative_filtering_model.py", "models/content_based_model.py", "notebooks/exploratory_data_analysis.ipynb", "scripts/preprocess_data.py", "scripts/train_model.py", "scripts/generate_recommendations.py", "utils/data_loader.py", "app.py", "requirements.txt")

# Docs directories and files
$docsDirs = @("design", "design/wireframes", "api")
$docsFiles = @("design/style_guide.md", "api/api_specification.md", "README.md")

# Root files
$rootFiles = @(".gitignore", "README.md", "setup.sh")

# Create directories and files
function Create-DirsAndFiles($root, $dirs, $files) {
    foreach ($dir in $dirs) {
        New-Item -ItemType Directory -Path "$root\$dir" -Force
    }
    foreach ($file in $files) {
        New-Item -ItemType File -Path "$root\$file" -Force
    }
}

# Create root directories and files
Create-DirsAndFiles "." $rootDirs $rootFiles

# Create frontend directories and files
Create-DirsAndFiles "frontend" $frontendDirs $frontendFiles

# Create backend directories and files
Create-DirsAndFiles "backend" $backendDirs $backendFiles

# Create recommendation-system directories and files
Create-DirsAndFiles "recommendation-system" $recSysDirs $recSysFiles

# Create docs directories and files
Create-DirsAndFiles "docs" $docsDirs $docsFiles

Write-Output "Project structure created successfully!"
