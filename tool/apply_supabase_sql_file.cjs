const fs = require('node:fs');
const { Client } = require('pg');

function splitSqlStatements(sql) {
  const statements = [];
  let current = '';
  let inSingleQuote = false;
  let inLineComment = false;
  let inBlockComment = false;
  let dollarTag = null;

  for (let index = 0; index < sql.length; index += 1) {
    const char = sql[index];
    const next = sql[index + 1];

    if (inLineComment) {
      current += char;
      if (char === '\n') {
        inLineComment = false;
      }
      continue;
    }

    if (inBlockComment) {
      current += char;
      if (char === '*' && next === '/') {
        current += next;
        index += 1;
        inBlockComment = false;
      }
      continue;
    }

    if (dollarTag !== null) {
      if (sql.startsWith(dollarTag, index)) {
        current += dollarTag;
        index += dollarTag.length - 1;
        dollarTag = null;
      } else {
        current += char;
      }
      continue;
    }

    if (inSingleQuote) {
      current += char;
      if (char === "'") {
        if (next === "'") {
          current += next;
          index += 1;
        } else {
          inSingleQuote = false;
        }
      }
      continue;
    }

    if (char === '-' && next === '-') {
      current += char + next;
      index += 1;
      inLineComment = true;
      continue;
    }

    if (char === '/' && next === '*') {
      current += char + next;
      index += 1;
      inBlockComment = true;
      continue;
    }

    if (char === "'") {
      current += char;
      inSingleQuote = true;
      continue;
    }

    if (char === '$') {
      const match = sql.slice(index).match(/^\$[A-Za-z_][A-Za-z0-9_]*\$|^\$\$/);
      if (match !== null) {
        dollarTag = match[0];
        current += dollarTag;
        index += dollarTag.length - 1;
        continue;
      }
    }

    if (char === ';') {
      const statement = current.trim();
      if (statement.length > 0) {
        statements.push(`${statement};`);
      }
      current = '';
      continue;
    }

    current += char;
  }

  const tail = current.trim();
  if (tail.length > 0) {
    statements.push(tail);
  }
  return statements;
}

async function main() {
  const [, , dbUrl, sqlFile] = process.argv;
  if (!dbUrl || !sqlFile) {
    throw new Error('Usage: node apply_supabase_sql_file.cjs <db-url> <sql-file>');
  }

  const sql = fs.readFileSync(sqlFile, 'utf8');
  const statements = splitSqlStatements(sql);
  const client = new Client({
    connectionString: dbUrl,
    ssl: { rejectUnauthorized: false },
    statement_timeout: 0,
    query_timeout: 0,
  });

  await client.connect();
  try {
    for (const [statementIndex, statement] of statements.entries()) {
      try {
        await client.query(statement);
      } catch (error) {
        const message = error instanceof Error ? error.message : error;
        throw new Error(
          `SQL statement ${statementIndex + 1}/${statements.length} failed for ${sqlFile}: ${message}`,
        );
      }
    }
  } finally {
    await client.end();
  }
}

main().catch((error) => {
  console.error(error instanceof Error ? error.message : error);
  process.exit(1);
});
