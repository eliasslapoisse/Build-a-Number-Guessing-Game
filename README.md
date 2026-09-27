# Number Guessing Game

A Bash number guessing game backed by PostgreSQL. Players enter a username, guess a randomly generated number from 1 to 1000, and have their game statistics saved.

## Requirements

- Bash
- PostgreSQL
- A PostgreSQL database named `number_guess`
- A PostgreSQL user named `freecodecamp`

The script expects these tables:

```sql
CREATE TABLE users (
    user_id SERIAL PRIMARY KEY,
    name VARCHAR(22) UNIQUE NOT NULL
);

CREATE TABLE games (
    game_id SERIAL PRIMARY KEY,
    number_of_guesses INTEGER NOT NULL,
    user_id INTEGER NOT NULL REFERENCES users(user_id)
);
```

## Run

From this directory, run:

```bash
./number_guess.sh
```

If needed, make the script executable first:

```bash
chmod +x number_guess.sh
```

The script will:

1. Ask for a username.
2. Welcome new users or display returning-user statistics.
3. Generate a number between 1 and 1000.
4. Reject guesses that are not integers.
5. Save the completed game and number of guesses to PostgreSQL.

## PostgreSQL Configuration

The connection command is defined near the top of `number_guess.sh`:

```bash
PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"
```

Update this value if your PostgreSQL username or database name is different.
