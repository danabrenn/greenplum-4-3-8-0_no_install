#!/bin/bash


# Run this as gpadmin in the template1 DB after initializing the cluster.
# This solves an issue where pgAdmin III reports errors after you connect to a DB.

cat <<EndOfSQL | sudo -u gpadmin bash -c ". ~/.bash_profile && psql template1"

CREATE OR REPLACE FUNCTION public.pg_get_function_result (the_oid OID) RETURNS TEXT
AS
\$\$
BEGIN
  RETURN format_type(TYP.oid, NULL);
END;
\$\$ LANGUAGE plpgsql IMMUTABLE
RETURNS NULL ON NULL INPUT;

GRANT EXECUTE ON FUNCTION public.pg_get_function_result (OID) TO public;
EndOfSQL

