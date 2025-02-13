# Use the official .NET 8.0 SDK image as the build environment
FROM mcr.microsoft.com/dotnet/sdk:8.0 AS build
WORKDIR /app

# Copy project files
COPY . ./

# Restore dependencies
RUN dotnet restore

# Build the application
RUN dotnet publish -c Release -o /out

# Use the official .NET runtime image
FROM mcr.microsoft.com/dotnet/aspnet:8.0 AS runtime
WORKDIR /app

# Copy the compiled application from the build stage
COPY --from=build /out ./

# Copy the SQLite database
COPY library.db /app/library.db

# Expose the port the API runs on
EXPOSE 5103

# Start the API
ENTRYPOINT ["dotnet", "LibraryManagementBackend.dll"]
