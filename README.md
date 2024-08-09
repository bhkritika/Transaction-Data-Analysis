# Transaction Data Analysis Project

## Overview
This project analyzes a dataset of financial transactions to uncover insights into transaction patterns, sender and receiver behavior, and transaction statuses. The dataset contains the following columns:

- `Transaction_ID`: Unique identifier for each transaction
- `Timestamp`: Date and time of the transaction
- `Sender_Name`: Name of the sender
- `Sender_UPI_ID`: UPI ID of the sender
- `Receiver_Name`: Name of the receiver
- `Receiver_UPI_ID`: UPI ID of the receiver
- `Amount`: Amount of money transacted
- `Status`: Status of the transaction (e.g., successful, failed)

## Database Setup

   ```sql
   CREATE DATABASE transactions;

   USE transactions;

   CREATE TABLE transactions (
        Transaction_ID INT PRIMARY KEY,
        Timestamp DATETIME,
        Sender_Name VARCHAR(255),
        Sender_UPI_ID VARCHAR(255),
        Receiver_Name VARCHAR(255),
        Receiver_UPI_ID VARCHAR(255),
        Amount DECIMAL(10, 2),
        Status VARCHAR(50)
    );
```
## Analysis Queries

### Basic Analysis
1. Total Number of Transactions
2. Total Amount Transacted
3. Count of Each Status
4. Average Transaction Amount
5. Minimum and Maximum Transaction Amount
6. Total Transactions per Status
7. Total Amount per Status
8. Total Transactions per Sender
9. Total Amount Transacted by Each Sender
10. Total Transactions per Receiver

### Intermediate Analysis

1. Top 5 Senders by Total Amount Transacted
2. Top 5 Receivers by Total Amount Received
3. Average Transaction Amount per Status
4. Total Transactions and Amount by Year
5. Correlation Between Transaction Amount and Frequency
6. Top 10 Sender-Receiver Pairs by Total Amount Transacted
7. Transaction Amount Variability per Sender
8. High-Value Transactions
9. Time-of-Day Analysis for Transactions
10. Impact of Transaction Status on Amount


## Getting Started

1. **Setup Environment:** Ensure you have a SQL environment set up (e.g., PostgreSQL, MySQL).
2. **Create Database and Table:+** Run the provided SQL commands to create the database and table.
3. **Import Data:** Load the transaction data into the transactions table.
4. **Run Queries:** Execute the SQL queries provided to perform the various analyses.
5. **Analyze Results:** Review and interpret the results to draw insights from the data.
