<h2><a href="https://leetcode.com/problems/monthly-transactions-i">1193. Monthly Transactions I</a></h2><h3>Medium</h3><hr><p>Table: <code>Transactions</code></p>

<pre>
+---------------+---------+
| Column Name   | Type    |
+---------------+---------+
| id            | int     |
| country       | varchar |
| state         | enum    |
| amount        | int     |
| trans_date    | date    |
+---------------+---------+
id is the primary key of this table.
The table has information about incoming transactions.
The state column is an enum of type [&quot;approved&quot;, &quot;declined&quot;].
</pre>

<p>&nbsp;</p>

<p>Write an SQL query to find for each month and country, the number of transactions and their total amount, the number of approved transactions and their total amount.</p>

<p>Return the result table in <strong>any order</strong>.</p>

<p>The query result format is in the following example.</p>

<p>&nbsp;</p>
<p><strong class="example">Example 1:</strong></p>

<pre>
<strong>Input:</strong> 
Transactions table:
+------+---------+----------+--------+------------+
| id   | country | state    | amount | trans_date |
+------+---------+----------+--------+------------+
| 121  | US      | approved | 1000   | 2018-12-18 |
| 122  | US      | declined | 2000   | 2018-12-19 |
| 123  | US      | approved | 2000   | 2019-01-01 |
| 124  | DE      | approved | 2000   | 2019-01-07 |
+------+---------+----------+--------+------------+
<strong>Output:</strong> 
+----------+---------+-------------+----------------+--------------------+-----------------------+
| month    | country | trans_count | approved_count | trans_total_amount | approved_total_amount |
+----------+---------+-------------+----------------+--------------------+-----------------------+
| 2018-12  | US      | 2           | 1              | 3000               | 1000                  |
| 2019-01  | US      | 1           | 1              | 2000               | 2000                  |
| 2019-01  | DE      | 1           | 1              | 2000               | 2000                  |
+----------+---------+-------------+----------------+--------------------+-----------------------+
</pre>
<br/>
<hr>
<h2>[MySQL] 시간/날짜 함수 DATE_FORMAT (LeetCode 1193)</h2>
<img width="657" alt="스크린샷 2024-10-18 오전 9 58 39" src="https://github.com/user-attachments/assets/098466b7-61de-4802-8369-8fa9f0323327">
<br/><br/>
https://cupucharm.tistory.com/entry/MySQL-%EC%8B%9C%EA%B0%84%EB%82%A0%EC%A7%9C-%ED%95%A8%EC%88%98-DATEFORMAT-LeetCode-1193
