# Database Design Lab

## PART 1

Design Questions

**1. (3 PTS) What tables should you build?**
- There should be 4 tables:
  - Table 1: **courses**
  - Table 2: **learning_outcomes**
  - Table 3: **instructors**
  - Table 4: **assignments**

**2. (2 PTS) For each table, what field(s) will you use for primary key?**
  - Table 1: **courses**: Primary key: `mnemonic`
  - Table 2: **learning_outcomes**: Primary key: `outcome_id`
  - Table 3: **instructors**: Primary key: `instructor_id`
  - Table 4: **assignments**: Primary key: `assignment_id` = `instructor_id` + `mnemonic`
  
**3. (2 PTS) For each table, what foreign keys will you use?**
  - Table 1: **courses**: Foriegn key will be `mnemonic` used in the `assignments` table
  - Table 2: **learning_outcomes**: Foreign key will be `mnemonic` used in the `courses` table
  - Table 3: **instructors**: Foreign key will be the `instructor_id` used in the`assignments` table
  - Table 4: **assignments**: Foreign key will be coming from the `courses` table and `instructors` table as `mnemonic` and `instructor_id` responectively.

**4. (2 PTS) Learning outcomes, courses, and instructors need a flag to indicate if they are currently active or not. How will your database support this feature? In particular:**

- If a course will be taught again, it will be flagged as active. If the course won’t be taught again, it will be flagged as inactive.
	- Create a column in the `courses` table called `active` to hold these flag values
- It is important to track if an instructor is a current employee or not.
  - Create a column in the `instructors` table called `active` to hold these flag values

- Learning outcomes for a course can change. You’ll want to track if a learning outcome is currently active or not.
  - Create a column in the `learning_outcomes` table called `active` to hold these flag values
  
**5. (1 PT) Is there anything to normalize in the database, and if so, how will you normalize it? Recall the desire to eliminate redundancy.**
- In order to normalize the database, we will have to check for atomicity and redundancies in the data.
- The `instructors`, `courses`, `learning_outcomes`, and `assignments` tables all satisfy 1NF. Each column contains atomic values and the values in the columns are of consistent data types.
- Key dependencies are appropriately functionally dependent satisfying 2NF.
- There does not appear to be any transitive dependencies, satisfying 3NF.

**6. (1 PT) Are there indexes that you should build? Explain your reasoning.**
- Yes, indexes containing these primary keys shoudl be created. This will allow for better data retrieval and standardization when querying.

**7. (2 PTS) Are there constraints to enforce? Explain your answer and strategy. For example, these actions should not be allowed:**
- Entering learning objectives for a course not offered by the School of Data Science
- Assigning an invalid instructor to a course**
	- Terms listed cannot be for the past
	- An instructor cannot be assigned to the multiple courses in the same term


**8. (5 PTS) Draw and submit a Relational Model for your project. For an example, see Beginning Database Design Solutions page 115 Figure 5-28.**

https://dbdiagram.io/d/DS-5111-Database-Design-655c18693be1495787643d6b


![Database Design](./databaseDesign.png)



**9. (2 PTS) Suppose you were asked if your database could also support the UVA SDS Residential MSDS Program. Explain any issues that might arise, changes to the database structure (schema), and new data that might be needed. Note you won’t actually need to support this use case for the project.**
- An issue would be having to keep track of room availability for certain times as well as classroom capacities. This would require creating another table to keep track of the rooms, another to handle capacities, and another to handle to avaiabilties at certain times.
