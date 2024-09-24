#!/usr/bin/env bash
export SURVIVINGUSER=$PGUSER
export SURVIVINGPASSWORD=$PGPASSWORD
export PGUSER=nyctopo
export PGPASSWORD=$NYCTOPOPASSWORD
psql -c "drop database nyctopo"
export PGUSER=$SURVIVINGUSER
export PGPASSWORD=$SURVIVINGPASSWORD
psql -c "drop user nyctopo;"