USE startersql;

-- CREATE TABLE addresses(
-- Id INT AUTO_INCREMENT PRIMARY KEY,
-- user_id INT,
-- street VARCHAR(100),
-- city VARCHAR(100),
-- state VARCHAR(100),
-- pincode VARCHAR(13),
-- CONSTRAINT fk_user FOREIGN KEY (user_id) REFERENCES users(PersonID) ON DELETE CASCADE
-- );

-- INSERT INTO addresses (user_id, street, city, state, pincode) VALUES
-- (1, '45 Model Town', 'Lahore', 'Punjab', '54700'),
-- (4, 'Block 6 PECHS', 'Karachi', 'Sindh', '75400'),
-- (8, 'F-10 Markaz', 'Islamabad', 'Islamabad Capital Territory', '44000'),
-- (2, 'Satellite Town', 'Rawalpindi', 'Punjab', '46000'),
-- (11, 'Cantt Area', 'Multan', 'Punjab', '60000'),
-- (6, 'University Road', 'Peshawar', 'Khyber Pakhtunkhwa', '25000'),
-- (15, 'Gulshan-e-Iqbal', 'Karachi', 'Sindh', '75300'),
-- (3, 'Johar Town', 'Lahore', 'Punjab', '54600'),
-- (19, 'G-9 Markaz', 'Islamabad', 'Islamabad Capital Territory', '44080'),
-- (9, 'Chaklala Scheme', 'Rawalpindi', 'Punjab', '46020'),
-- (23, 'Bosan Road', 'Multan', 'Punjab', '60650'),
-- (5, 'Hayatabad Phase 3', 'Peshawar', 'Khyber Pakhtunkhwa', '25100'),
-- (14, 'DHA Phase 5', 'Karachi', 'Sindh', '75500'),
-- (20, 'Gulberg III', 'Lahore', 'Punjab', '54660'),
-- (7, 'Blue Area', 'Islamabad', 'Islamabad Capital Territory', '44010'),
-- (25, 'Bahria Town', 'Rawalpindi', 'Punjab', '46300'),
-- (12, 'Shah Rukn-e-Alam', 'Multan', 'Punjab', '60700'),
-- (17, 'Saddar', 'Peshawar', 'Khyber Pakhtunkhwa', '25120'),
-- (10, 'Nazimabad', 'Karachi', 'Sindh', '74600'),
-- (21, 'Faisal Town', 'Lahore', 'Punjab', '54770'),
-- (16, 'Bahria Enclave', 'Islamabad', 'Islamabad Capital Territory', '44500'),
-- (24, 'Adiala Road', 'Rawalpindi', 'Punjab', '46100'),
-- (13, 'Gulgasht Colony', 'Multan', 'Punjab', '60800'),
-- (18, 'Ring Road', 'Peshawar', 'Khyber Pakhtunkhwa', '25130'),
-- (22, 'Clifton Block 2', 'Karachi', 'Sindh', '75600');

SELECT * FROM users;
SELECT * FROM addresses;
