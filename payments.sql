
CREATE OR REPLACE PROCEDURE portal_seed()
LANGUAGE plpgsql
AS $$

DECLARE
    this_payment_txn_id uuid = uuid_generate_v4();
    this_merchant_id uuid = '47b70ca4-0f6e-4c52-819f-667ae804f9d2';
    this_payment_intent_id uuid = uuid_generate_v4();
    this_api_user_id uuid = 'cd86ff2e-fa0f-4bbc-92dd-0f0fde10e8cf';
    this_payment_source_token_id uuid = '98e11d34-4519-4668-b09d-85a3c6765989';

    customer1_first_name VARCHAR = 'Barbara'; 
    customer1_last_name VARCHAR = 'Rich'; 
    customer1_email VARCHAR = 'BRich'; 

    customer2_first_name VARCHAR = 'Kevin'; 
    customer2_last_name VARCHAR = 'Casanova'; 
    customer2_email VARCHAR = 'KevinC'; 

    customer3_first_name VARCHAR = 'Linda'; 
    customer3_last_name VARCHAR = 'Wilcox'; 
    customer3_email VARCHAR = 'Linda.Wilcox'; 

    customer4_first_name VARCHAR = 'Patricia'; 
    customer4_last_name VARCHAR = 'Hooper'; 
    customer4_email VARCHAR = 'PatriciaHooper'; 

    customer5_first_name VARCHAR = 'Sam'; 
    customer5_last_name VARCHAR = 'Nelson'; 
    customer5_email VARCHAR = 'NelsonS'; 

BEGIN

ALTER TABLE "payments"."payment_txn" DISABLE TRIGGER ALL;
ALTER TABLE "payments"."payment_intent" DISABLE TRIGGER ALL;

-- create payments for Barbara Rich  
PERFORM create_payment(customer1_email,customer1_first_name, customer1_last_name, '2018-10-31', 10000, 'Payment', 'captured');   
PERFORM create_payment(customer1_email,customer1_first_name, customer1_last_name, '2018-10-31', 10000, 'Refund', 'refunded');   
PERFORM create_payment(customer1_email,customer1_first_name, customer1_last_name, '2018-12-30', 94000, 'Payment', 'captured');
PERFORM create_payment(customer1_email,customer1_first_name, customer1_last_name, '2019-01-10', 27000, 'Payment', 'captured');
PERFORM create_payment(customer1_email,customer1_first_name, customer1_last_name, '2019-02-02', 1000, 'Payment', 'captured');
PERFORM create_payment(customer1_email,customer1_first_name, customer1_last_name, '2019-03-15', 40300, 'Payment', 'canceled');
PERFORM create_payment(customer1_email,customer1_first_name, customer1_last_name, '2019-04-30', 678900, 'Payment', 'captured');
PERFORM create_payment(customer1_email,customer1_first_name, customer1_last_name, '2019-04-30', 678900, 'Refund', 'refunded');
PERFORM create_payment(customer1_email,customer1_first_name, customer1_last_name, '2019-05-15', 32000, 'Payment', 'captured');
PERFORM create_payment(customer1_email,customer1_first_name, customer1_last_name, '2019-06-11', 1000000, 'Payment', 'captured');
PERFORM create_payment(customer1_email,customer1_first_name, customer1_last_name, '2019-07-24', 1000000, 'Payment', 'pending');
PERFORM create_payment(customer1_email,customer1_first_name, customer1_last_name, '2019-09-23', 100, 'Payment', 'captured');
PERFORM create_payment(customer1_email,customer1_first_name, customer1_last_name, '2019-09-30', 6700, 'Payment', 'captured');
PERFORM create_payment(customer1_email,customer1_first_name, customer1_last_name, '2019-10-10', 6700, 'Refund', 'refunded');
PERFORM create_payment(customer1_email,customer1_first_name, customer1_last_name, '2019-10-20', 50500, 'Payment', 'pending');
PERFORM create_payment(customer1_email,customer1_first_name, customer1_last_name, '2019-10-30', 40400, 'Payment', 'canceled');


-- create payments for Kevin Casanova  
PERFORM create_payment(customer2_email,customer2_first_name, customer2_last_name, '2018-10-31', 1, 'Payment', 'captured');   
PERFORM create_payment(customer2_email,customer2_first_name, customer2_last_name, '2018-10-31', 1, 'Refund', 'refunded');     
PERFORM create_payment(customer2_email,customer2_first_name, customer2_last_name, '2018-10-30', 11, 'Payment', 'captured'); 
PERFORM create_payment(customer2_email,customer2_first_name, customer2_last_name, '2019-01-10', 99, 'Payment', 'captured'); 
PERFORM create_payment(customer2_email,customer2_first_name, customer2_last_name, '2019-02-02', 100, 'Payment', 'captured'); 
PERFORM create_payment(customer2_email,customer2_first_name, customer2_last_name, '2019-03-15', 499, 'Payment', 'captured'); 
PERFORM create_payment(customer2_email,customer2_first_name, customer2_last_name, '2019-04-30', 1097, 'Payment', 'captured'); 
PERFORM create_payment(customer2_email,customer2_first_name, customer2_last_name, '2019-05-10', 1097, 'Refund', 'refunded');  
PERFORM create_payment(customer2_email,customer2_first_name, customer2_last_name, '2019-05-15', 10098, 'Payment', 'pending'); 
PERFORM create_payment(customer2_email,customer2_first_name, customer2_last_name, '2019-06-11', 99999, 'Payment', 'canceled');
PERFORM create_payment(customer2_email,customer2_first_name, customer2_last_name, '2019-07-24', 990, 'Payment', 'captured'); 
PERFORM create_payment(customer2_email,customer2_first_name, customer2_last_name, '2019-04-30', 1097, 'Payment', 'captured'); 
PERFORM create_payment(customer2_email,customer2_first_name, customer2_last_name, '2019-09-23', 40309, 'Payment', 'canceled');
PERFORM create_payment(customer2_email,customer2_first_name, customer2_last_name, '2019-09-30', 12345, 'Payment', 'captured'); 
PERFORM create_payment(customer2_email,customer2_first_name, customer2_last_name, '2019-09-30', 12345, 'Refund', 'refunded');   
PERFORM create_payment(customer2_email,customer2_first_name, customer2_last_name, '2019-10-20', 5, 'Refund', 'refunded');  
PERFORM create_payment(customer2_email,customer2_first_name, customer2_last_name, '2019-10-30', 606, 'Payment', 'pending'); 


-- create payments for Linda Wilcox
PERFORM create_payment(customer3_email,customer3_first_name, customer3_last_name, '2018-01-31', 10000, 'Payment', 'captured');   
PERFORM create_payment(customer3_email,customer3_first_name, customer3_last_name, '2018-01-31', 10000, 'Refund', 'refunded');    
PERFORM create_payment(customer3_email,customer3_first_name, customer3_last_name, '2018-02-28', 94000, 'Payment', 'captured'); 
PERFORM create_payment(customer3_email,customer3_first_name, customer3_last_name, '2019-03-10', 27000, 'Payment', 'pending'); 
PERFORM create_payment(customer3_email,customer3_first_name, customer3_last_name, '2019-04-02', 1000, 'Payment', 'canceled');
PERFORM create_payment(customer3_email,customer3_first_name, customer3_last_name, '2019-05-15', 40300, 'Payment', 'captured');
PERFORM create_payment(customer3_email,customer3_first_name, customer3_last_name, '2019-05-15', 40300, 'Refund', 'refunded');
PERFORM create_payment(customer3_email,customer3_first_name, customer3_last_name, '2019-06-30', 678900, 'Payment', 'captured');
PERFORM create_payment(customer3_email,customer3_first_name, customer3_last_name, '2019-07-15', 32000, 'Payment', 'pending');
PERFORM create_payment(customer3_email,customer3_first_name, customer3_last_name, '2019-08-11', 1000000, 'Payment', 'canceled');
PERFORM create_payment(customer3_email,customer3_first_name, customer3_last_name, '2019-09-24', 600, 'Payment', 'captured');


-- create payments for Patricia Hooper
PERFORM create_payment(customer4_email,customer4_first_name, customer4_last_name, '2018-01-31', 10000, 'Payment', 'captured');   
PERFORM create_payment(customer4_email,customer4_first_name, customer4_last_name, '2018-01-31', 10000, 'Refund', 'refunded');    
PERFORM create_payment(customer4_email,customer4_first_name, customer4_last_name, '2018-02-28', 94000, 'Payment', 'captured');
PERFORM create_payment(customer4_email,customer4_first_name, customer4_last_name, '2019-03-10', 27000, 'Payment', 'pending');
PERFORM create_payment(customer4_email,customer4_first_name, customer4_last_name, '2019-04-02', 1000, 'Payment', 'canceled');
PERFORM create_payment(customer4_email,customer4_first_name, customer4_last_name, '2019-05-15', 40300, 'Payment', 'captured');   
PERFORM create_payment(customer4_email,customer4_first_name, customer4_last_name, '2019-05-15', 40300, 'Refund', 'refunded'); 
PERFORM create_payment(customer4_email,customer4_first_name, customer4_last_name, '2019-05-15', 678900, 'Payment', 'captured'); 
PERFORM create_payment(customer4_email,customer4_first_name, customer4_last_name, '2019-07-15', 32000, 'Payment', 'pending'); 
PERFORM create_payment(customer4_email,customer4_first_name, customer4_last_name, '2019-08-11', 1000000, 'Payment', 'canceled'); 
PERFORM create_payment(customer4_email,customer4_first_name, customer4_last_name, '2019-09-24', 600, 'Payment', 'captured'); 

-- create payments for Sam Nelson
PERFORM create_payment(customer5_email,customer5_first_name, customer5_last_name, '2019-03-15', 10000, 'Payment', 'captured');   
PERFORM create_payment(customer5_email,customer5_first_name, customer5_last_name, '2019-03-15', 10000, 'Refund', 'refunded'); 
PERFORM create_payment(customer5_email,customer5_first_name, customer5_last_name, '2019-04-30', 94000, 'Payment', 'captured');   
PERFORM create_payment(customer5_email,customer5_first_name, customer5_last_name, '2019-05-15', 27000, 'Payment', 'pending'); 
PERFORM create_payment(customer5_email,customer5_first_name, customer5_last_name, '2019-06-11', 1000, 'Payment', 'canceled'); 
PERFORM create_payment(customer5_email,customer5_first_name, customer5_last_name, '2019-07-24', 40300, 'Payment', 'captured'); 
PERFORM create_payment(customer5_email,customer5_first_name, customer5_last_name, '2019-07-24', 40300, 'Refund', 'refunded'); 
PERFORM create_payment(customer5_email,customer5_first_name, customer5_last_name, '2019-09-23', 678900, 'Payment', 'captured'); 
PERFORM create_payment(customer5_email,customer5_first_name, customer5_last_name, '2019-09-30', 32000, 'Payment', 'pending'); 
PERFORM create_payment(customer5_email,customer5_first_name, customer5_last_name, '2019-10-20', 1000000, 'Payment', 'canceled'); 
PERFORM create_payment(customer5_email,customer5_first_name, customer5_last_name, '2019-10-30', 32000, 'Payment', 'captured'); 


COMMIT;

ALTER TABLE "payments"."payment_txn" ENABLE TRIGGER ALL;
ALTER TABLE "payments"."payment_intent" ENABLE TRIGGER ALL;

END;
$$;

