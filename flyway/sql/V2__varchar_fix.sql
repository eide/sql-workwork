-- "Mistake" in postgres, might not be a mistake in other databases.
-- In postgres, don't set limits on VARCHARs, unless you are really really sure
-- you need one (and then you might actually want a CHAR?).

ALTER TABLE person ALTER name TYPE VARCHAR;
ALTER TABLE post ALTER title TYPE VARCHAR;
ALTER TABLE post ALTER content TYPE VARCHAR;
