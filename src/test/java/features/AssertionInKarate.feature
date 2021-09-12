Feature:


  Scenario: some matching example
    * def name = 'Severus Snape'
    * print name
    * match name == 'Severus Snape'
  # similar to Assert asertEquals
  * match name != 'Severus'


  @wip
  Scenario:
   * def employee =
    """
     { "firstname" : "Steven",
      "lastname" : "King" ,
       "salary" : 1200
    }

    """
    * def emp_name = employee.firstname
    * match emp_name == "Steven"
    * match employee.salary == 1200

    * def employee1 =
    """
     { "firstname" : "Steven",
      "lastname" : "King" ,
       "salary" : 1200
    }

    """

    * match employee == employee1