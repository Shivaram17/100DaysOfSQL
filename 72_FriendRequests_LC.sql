SELECT ROUND(a.acceptance/r.requester , 2) AS acceptance_rate
FROM 
(
SELECT COUNT(DISTINCT(req_id, acc_id)) AS acceptance FROM request_accepted
) AS a,
(
SELECT COUNT(DISTINCT(send_id, send_to_id)) AS requester FROM friend_request
) AS r;
