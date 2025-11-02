# Environment Setup Guide

This guide explains how to configure environment variables for development.

## Quick Start

1. **Database Setup**: Already configured via Docker Compose (see `icv_server/docker-compose.yaml`)
2. **Server Configuration**: See `icv_server/config/development.yaml`
3. **Passwords**: See `icv_server/config/passwords.yaml` (not in version control)

## Flutter Client Configuration

### Server URL

The Flutter app connects to the Serverpod server. By default, it uses `http://localhost:8080/`.

**For Physical Devices:**
- You need to use your computer's IP address
- Find your IP: `ifconfig` (Mac/Linux) or `ipconfig` (Windows)
- Run: `flutter run --dart-define=SERVER_URL=http://YOUR_IP:8080/`

**For Web:**
- Use `http://localhost:8080/` when running locally
- For production, use your deployed server URL

**For iOS Simulator/Android Emulator:**
- Use `http://localhost:8080/` (works on simulators)
- For Android emulator, may need `http://10.0.2.2:8080/`

### Example Commands

```bash
# Local development (default)
flutter run

# Physical device
flutter run --dart-define=SERVER_URL=http://192.168.1.100:8080/

# Production build
flutter build apk --dart-define=SERVER_URL=https://api.example.com/
```

## Serverpod Server Configuration

### Configuration Files

Serverpod uses YAML configuration files in `icv_server/config/`:
- `development.yaml` - Development environment settings
- `passwords.yaml` - Sensitive credentials (not in version control)
- `staging.yaml` - Staging environment
- `production.yaml` - Production environment
- `test.yaml` - Test environment

### Environment Variables

Serverpod supports environment variables with `SERVERPOD_` prefix. See `.env.example` for examples.

**Common Variables:**
- `SERVERPOD_RUN_MODE` - Sets the run mode (development, staging, production, test)
- `SERVERPOD_SERVER_ROLE` - Server role (monolith, serverless, maintenance)
- `SERVERPOD_DATABASE_HOST` - Database host
- `SERVERPOD_DATABASE_PORT` - Database port
- `SERVERPOD_DATABASE_NAME` - Database name
- `SERVERPOD_DATABASE_USER` - Database user

**Custom Passwords:**
Use `SERVERPOD_PASSWORD_<key>` prefix. Example:
```bash
export SERVERPOD_PASSWORD_myApiKey=secret123
```
Accessible as `session.passwords['myApiKey']` in code.

### Email Configuration (SMTP)

For password reset and email authentication (Phase 11), configure SMTP in `passwords.yaml`:

```yaml
development:
  emailPasswordPepper: 'your-secret-pepper-string'
  smtpHost: 'smtp.example.com'
  smtpPort: 587
  smtpUsername: 'your-email@example.com'
  smtpPassword: 'your-smtp-password'
  smtpUseTls: true
```

**Email Providers:**
- SendGrid: `smtp.sendgrid.net:587`
- Gmail: `smtp.gmail.com:587` (requires app-specific password)
- AWS SES: See AWS documentation
- Mailgun: See Mailgun documentation

### OAuth Configuration (Phase 11)

For Google and Apple Sign-In, add credentials to `passwords.yaml`:

```yaml
development:
  googleClientId: 'your-google-client-id'
  googleClientSecret: 'your-google-client-secret'
  appleClientId: 'your-apple-client-id'
  appleTeamId: 'your-apple-team-id'
  appleKeyId: 'your-apple-key-id'
  applePrivateKey: 'your-apple-private-key'
```

## Database Setup

The development database is configured via Docker Compose:

```bash
cd icv_server
docker compose up -d postgres
```

Database configuration:
- Host: `localhost`
- Port: `8090`
- Database: `icv`
- User: `postgres`
- Password: See `config/passwords.yaml`

## Redis Setup (Optional)

Redis is configured but disabled by default. To enable:

1. Start Redis: `docker compose up -d redis`
2. Update `development.yaml`: Set `redis.enabled: true`
3. Password: See `passwords.yaml`

## Running the Server

```bash
cd icv_server
dart bin/main.dart
```

The server will:
- Read configuration from `config/development.yaml`
- Load passwords from `config/passwords.yaml`
- Connect to PostgreSQL on port 8090
- Start API server on port 8080

## Troubleshooting

### Connection Issues

**Flutter can't connect to server:**
- Check server is running: `curl http://localhost:8080/`
- For physical devices, ensure IP address is correct
- Check firewall settings

**Database connection errors:**
- Verify PostgreSQL is running: `docker compose ps`
- Check database credentials in `passwords.yaml`
- Test connection: `docker exec -it icv_server-postgres-1 psql -U postgres -d icv`

### Environment Variables Not Loading

- Serverpod reads from config files first, then environment variables
- Check `SERVERPOD_RUN_MODE` is set correctly
- Ensure `passwords.yaml` exists and is in correct format

## Security Notes

1. **Never commit `passwords.yaml`** - It's in `.gitignore`
2. **Never commit `.env` files** - Contains sensitive data
3. **Use different credentials for each environment**
4. **Rotate secrets regularly in production**

## Next Steps

- Phase 11: Configure SMTP for password reset emails
- Phase 11: Set up OAuth provider credentials
- Phase 19: Configure production environment variables

