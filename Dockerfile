#Get base SDK image from microsoft
FROM mcr.microsoft.com/dotnet/core/sdk:3.1 as build-env
RUN mkdir /app
WORKDIR /app

#copy the csproj file and restore any dependecies (via NUGET)
COPY C:\Users\Sahaya Godson\DotNET\Tailspin.SpaceGame.Web\Tailspin.SpaceGame.Web.csproj
RUN dotnet restore


#copy the project files and build our release
COPY . ./
RUN dotnet publish -c release -o out


