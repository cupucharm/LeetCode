<h2><a href="https://leetcode.com/problems/rising-temperature">197. Rising Temperature</a></h2><h3>Easy</h3><hr><p>Table: <code>Weather</code></p>

<pre>
+---------------+---------+
| Column Name   | Type    |
+---------------+---------+
| id            | int     |
| recordDate    | date    |
| temperature   | int     |
+---------------+---------+
id is the column with unique values for this table.
There are no different rows with the same recordDate.
This table contains information about the temperature on a certain day.
</pre>

<p>&nbsp;</p>

<p>Write a solution to find all dates&#39; <code>id</code> with higher temperatures compared to its previous dates (yesterday).</p>

<p>Return the result table in <strong>any order</strong>.</p>

<p>The result format is in the following example.</p>

<p>&nbsp;</p>
<p><strong class="example">Example 1:</strong></p>

<pre>
<strong>Input:</strong> 
Weather table:
+----+------------+-------------+
| id | recordDate | temperature |
+----+------------+-------------+
| 1  | 2015-01-01 | 10          |
| 2  | 2015-01-02 | 25          |
| 3  | 2015-01-03 | 20          |
| 4  | 2015-01-04 | 30          |
+----+------------+-------------+
<strong>Output:</strong> 
+----+
| id |
+----+
| 2  |
| 4  |
+----+
<strong>Explanation:</strong> 
In 2015-01-02, the temperature was higher than the previous day (10 -&gt; 25).
In 2015-01-04, the temperature was higher than the previous day (20 -&gt; 30).
</pre>

<br/>
<hr>
<h2>[MySQL] 날짜 함수 DATE_ADD, DATEDIFF (LeetCode 197)</h2>
<img width="790" alt="스크린샷 2024-10-17 오후 2 00 12" src="https://github.com/user-attachments/assets/2752305a-b0bb-4c87-a4b3-284be1cdf190">
<img width="790" alt="스크린샷 2024-10-17 오후 2 00 26" src="https://github.com/user-attachments/assets/f00eb23a-0e39-4ed9-b95d-11130f7672c6">
<img width="790" alt="스크린샷 2024-10-17 오후 2 00 35" src="https://github.com/user-attachments/assets/f2714859-d63c-442c-9d64-c08d7893d99b">
<br/>
<br/>
https://cupucharm.tistory.com/entry/MySQL-%EB%82%A0%EC%A7%9C-%ED%95%A8%EC%88%98-DATEADD-DATEDIFF-LeetCode-197

