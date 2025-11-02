import 'package:test/test.dart';

// Import the generated test helper file
import 'test_tools/serverpod_test_tools.dart';

/// Test suite for Phase 2.1: Server connectivity and database connection
///
/// This test verifies:
/// 1. Server can start successfully
/// 2. Database connection works (verified through endpoint calls)
/// 3. Server endpoints are reachable
///
/// Note: Database connectivity is tested implicitly through server startup
/// and endpoint execution. The withServerpod helper ensures the database
/// is connected and migrations are applied before tests run.
void main() {
  withServerpod(
    'Server Connectivity and Database Connection Tests',
    (sessionBuilder, endpoints) {
      group('Server Connectivity', () {
        test('server should start successfully', () async {
          // If we reach here, the server has started successfully
          // withServerpod automatically starts the server before running tests
          // This includes connecting to the database and applying migrations
          expect(sessionBuilder, isNotNull);
          expect(endpoints, isNotNull);
        });

        test('server endpoints should be accessible', () async {
          // Test that we can call an endpoint (greeting endpoint exists)
          // This verifies server connectivity and that endpoints are working
          final greeting =
              await endpoints.greeting.hello(sessionBuilder, 'Test');
          expect(greeting, isNotNull);
          expect(greeting.message, contains('Test'));
          expect(greeting.author, isNotEmpty);
          expect(greeting.timestamp, isNotNull);
        });

        test('multiple endpoint calls should work correctly', () async {
          // Test multiple consecutive calls to verify server stability
          final results = <String>[];
          for (int i = 0; i < 5; i++) {
            final greeting = await endpoints.greeting.hello(
              sessionBuilder,
              'User$i',
            );
            results.add(greeting.message);
          }

          expect(results.length, equals(5));
          expect(results[0], contains('User0'));
          expect(results[4], contains('User4'));
        });
      });

      group('Database Connection', () {
        test('database connection is established on server startup', () async {
          // The withServerpod helper automatically connects to the database
          // If we reach here without errors, the database connection is working
          // This test verifies that the server can start and connect to the database
          expect(sessionBuilder, isNotNull);
          expect(endpoints, isNotNull);

          // Test that we can make endpoint calls (which use the database session)
          final greeting =
              await endpoints.greeting.hello(sessionBuilder, 'DBTest');
          expect(greeting, isNotNull);
        });

        test('database migrations are applied correctly', () async {
          // The withServerpod helper with applyMigrations: true ensures
          // all migrations are applied. If we reach here, migrations succeeded.
          // This means the database schema is set up correctly.
          expect(sessionBuilder, isNotNull);

          // Verify server is functional (which requires database to be set up)
          final greeting = await endpoints.greeting.hello(
            sessionBuilder,
            'MigrationTest',
          );
          expect(greeting, isNotNull);
        });
      });
    },
    // Configuration for connectivity tests
    applyMigrations: true, // Apply migrations to ensure database is set up
    enableSessionLogging:
        false, // Disable session logging for cleaner test output
    serverpodStartTimeout:
        Duration(seconds: 60), // Increase timeout for database connection
  );
}
