# Musician Gear Tracker

Web app for musicians to manage gear inventory, schedule maintenance, upload receipts/photos, and support team sharing. Mobile-friendly design with cloud deployment support.

## Features
- Gear inventory management (add, edit, delete)
- Manage specs, serial numbers, receipts, and condition
- Maintenance/service logging with reminders
- Notifications for scheduled upkeep
- Multi-user sharing (techs, managers)
- Export inventory (CSV/PDF)

## Tech Stack
- Frontend: React.js (mobile-responsive, PWA)
- Backend: Node.js, Express.js
- Database: PostgreSQL
- File Storage: AWS S3/Google Cloud Storage

## Architecture
- React (PWA/mobile)
- REST API backend
- PostgreSQL database
- File upload to S3/GCS
- In-app and email notifications

## Setup
1. Clone this repo
2. Add environment variables for database, file storage, auth
3. Install dependencies: `npm install` in /frontend and /backend
4. Run: `npm run dev` (frontend and backend separately)
5. Deployment: Use Vercel/Netlify (frontend), Render/Heroku (backend)

## Database Tables
- users
- gear
- maintenance_logs
- teams, team_members

## Deployment
Configure env vars, build and push images, connect to cloud SQL as needed.

For a full project plan and schema, see the linked Google Doc.
