BEGIN;

-- Step 1: Find all email_sent IDs for this customer
-- This is just for inspection, not part of the script:
-- SELECT id FROM email_sent WHERE customer_id = 8;

-- Step 2: Delete email_events for all those emails
DELETE FROM email_events
WHERE email_sent_id IN (
    SELECT id FROM email_sent WHERE customer_id = 8
);

-- Step 3: Delete email_links for all those emails
DELETE FROM email_links
WHERE email_sent_id IN (
    SELECT id FROM email_sent WHERE customer_id = 8
);

-- Step 4: Delete all email_sent records for the customer
DELETE FROM email_sent WHERE customer_id = 8;

-- Step 5: Now delete the customer
DELETE FROM customer WHERE id = 8;

COMMIT;

