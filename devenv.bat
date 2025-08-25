@echo off
if "%1"=="sf" (
    if "%2"=="fetch" (
        echo [INFO] Fetching metadata from Salesforce org...
        sf project retrieve start --manifest manifest\package.xml --target-org dev-org
        echo [SUCCESS] Fetch completed!
    ) else if "%2"=="deploy" (
        echo [INFO] Deploying to Salesforce org...
        sf project deploy start --target-org dev-org
        echo [SUCCESS] Deployment completed!
    ) else (
        echo [ERROR] Invalid command. Use: devenv.bat sf fetch OR devenv.bat sf deploy
    )
) else (
    echo [ERROR] Invalid usage. Use: devenv.bat sf fetch OR devenv.bat sf deploy
)
pause