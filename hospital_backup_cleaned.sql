
-- Database settings and configurations
-- Creation of the postgres database
CREATE DATABASE hospital_db;

-- Schema definition for public
CREATE SCHEMA public;

-- Table: appointments
CREATE TABLE appointments (
    appointment_id SERIAL PRIMARY KEY,
    patient_id INTEGER,
    doctor_id INTEGER,
    appointment_date DATE,
    status VARCHAR(50)
);

INSERT INTO appointments (appointment_id, patient_id, doctor_id, appointment_date, status) VALUES
(1, 1, 1, '2025-02-15', 'Scheduled'),
(2, 2, 2, '2025-02-16', 'Completed');

-- Table: billing
CREATE TABLE billing (
    bill_id SERIAL PRIMARY KEY,
    patient_id INTEGER,
    amount NUMERIC(10,2),
    payment_status VARCHAR(50),
    bill_date DATE
);

INSERT INTO billing (bill_id, patient_id, amount, payment_status, bill_date) VALUES
(1, 1, 5000, 'Paid', '2025-02-15'),
(2, 2, 3000, 'Pending', '2025-02-16');

-- Table: doctors
CREATE TABLE doctors (
    doctor_id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    specialization VARCHAR(100),
    contact VARCHAR(15)
);

INSERT INTO doctors (doctor_id, name, specialization, contact) VALUES
(1, 'Dr. Rajesh Khanna', 'Cardiologist', '9876541111'),
(2, 'Dr. Meera Iyer', 'Dermatologist', '9876542222');

-- Table: medical_records
CREATE TABLE medical_records (
    record_id SERIAL PRIMARY KEY,
    patient_id INTEGER,
    diagnosis TEXT,
    prescription TEXT,
    visit_date DATE
);

INSERT INTO medical_records (record_id, patient_id, diagnosis, prescription, visit_date) VALUES
(1, 1, 'Hypertension', 'Amlodipine 5mg once daily', '2025-02-15'),
(2, 2, 'Acne Vulgaris', 'Topical Clindamycin', '2025-02-16');

-- Table: patients
CREATE TABLE patients (
    patient_id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    age INTEGER,
    gender VARCHAR(10),
    contact VARCHAR(15),
    address TEXT
);

INSERT INTO patients (patient_id, name, age, gender, contact, address) VALUES
(1, 'Amit Sharma', 30, 'Male', '9876543210', 'Mumbai, India'),
(2, 'Priya Verma', 28, 'Female', '9876543220', 'Delhi, India');
