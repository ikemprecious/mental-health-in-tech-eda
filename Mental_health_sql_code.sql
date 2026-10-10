
WITH joined_data AS (
    SELECT 
        a.UserID,
        s.SurveyID,
        s.Description,
        q.questionid,
        q.questiontext,
        a.AnswerText
    FROM Answer AS a
    JOIN Question AS q
        ON a.QuestionID = q.questionid
    JOIN Survey AS s
        ON s.SurveyID = a.SurveyID
)

SELECT 
    UserID,
    SurveyID,
    MAX(CASE WHEN questionid = 1 
        THEN AnswerText END) AS Age,
    MAX(CASE WHEN questionid = 2 
        THEN AnswerText END) AS Gender,
    MAX(CASE WHEN questionid = 89 
        THEN AnswerText END) AS Race,
    MAX(CASE 
        WHEN questionid = 5 AND AnswerText = '1' THEN 'Yes'
        WHEN questionid = 5 AND AnswerText = '0' THEN 'No'
    END) AS Self_Employed,
    MAX(CASE WHEN questionid = 117 
        THEN AnswerText END) AS Occupation,
    MAX(CASE WHEN questionid = 3 
        THEN AnswerText END) AS Country_of_Residence,
    MAX(CASE WHEN questionid = 50 
        THEN AnswerText END) AS Employment_country,
    MAX(CASE WHEN questionid = 118 
        THEN AnswerText END) AS Work_Mode,
    MAX(CASE WHEN questionid = 116 
        THEN AnswerText END) AS Suspected_conditions,
    MAX(CASE WHEN questionid = 115
        THEN AnswerText END) AS Diagonsed_conditions,
    MAX(CASE WHEN questionid = 34
        THEN AnswerText END) AS Diagonsed
    
FROM joined_data
GROUP BY UserID, SurveyID
ORDER BY UserID DESC;