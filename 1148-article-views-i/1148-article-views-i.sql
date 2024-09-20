# Write your MySQL query statement below
SELECT distinct(author_id) as id FROM Views WHERE author_id = viewer_id order by author_id asc;

# SELECT author_id as id FROM Views WHERE author_id = viewer_id group by author_id order by author_id asc;