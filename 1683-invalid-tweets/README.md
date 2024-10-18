<h2><a href="https://leetcode.com/problems/invalid-tweets/?envType=study-plan-v2&envId=top-sql-50">1683. Invalid Tweets</a></h2><h3>Easy</h3><hr><p>Table: <code>Tweets</code></p>

<pre>
+----------------+---------+
| Column Name    | Type    |
+----------------+---------+
| tweet_id       | int     |
| content        | varchar |
+----------------+---------+
tweet_id is the primary key (column with unique values) for this table.
This table contains all the tweets in a social media app.
</pre>

<p>&nbsp;</p>

<p>Write a solution to find the IDs of the invalid tweets. The tweet is invalid if the number of characters used in the content of the tweet is <strong>strictly greater</strong> than <code>15</code>.</p>

<p>Return the result table in <strong>any order</strong>.</p>

<p>The result format is in the following example.</p>

<p>&nbsp;</p>
<p><strong class="example">Example 1:</strong></p>

<pre>
<strong>Input:</strong> 
Tweets table:
+----------+-----------------------------------+
| tweet_id | content                           |
+----------+-----------------------------------+
| 1        | Let us Code                       |
| 2        | More than fifteen chars are here! |
+----------+-----------------------------------+
<strong>Output:</strong> 
+----------+
| tweet_id |
+----------+
| 2        |
+----------+
<strong>Explanation:</strong> 
Tweet 1 has length = 11. It is a valid tweet.
Tweet 2 has length = 33. It is an invalid tweet.
</pre>

<hr>
<h2>[MySQL] 문자열 길이 CHAR_LENGTH, LENGTH (LeetCode 1683)</h2>
<img width="804" alt="스크린샷 2024-10-17 오후 1 56 31" src="https://github.com/user-attachments/assets/ee7768de-3ae2-49cc-aa0b-a08be2167986">
<br/><br/>
https://cupucharm.tistory.com/entry/MySQL-%EB%AC%B8%EC%9E%90%EC%97%B4-%EA%B8%B8%EC%9D%B4-CHARLENGTH-LENGTH

