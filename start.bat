start cmd.exe /c connect.bat
cd server
uvicorn main:app --reload --host 