Feature:


  Scenario: some matching example
    * def name = 'Severus Snape'
    * print name
    * match name == 'Severus Snape'
  # similar to Assert asertEquals
  * match name != 'Severus'



  Scenario: Match json
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


  Scenario: fuzzy matching with format

    * def employee =
    """
     { "firstname" : "Steven",
      "lastname" : "King" ,
       "salary" : 1200
    }

    """

    * match employee.firstname == '#string'
    * match employee.salary == '#number'
    * match employee == '#object'


  Scenario: fuzzy matching json
    * def employees =

"""
[

  { "firstname" : "Steven",
  "lastname" : "King"

  },
  { "firstname" : "Barış",
  "lastname" : "Altun"
  },
  { "firstname" : "Hacı",
  "lastname" : "Abi"

  }
  ]
    """

    * def length = employees.length
    * print length
    * match length == 3
    * match employees contains { "firstname" : "Hacı",   "lastname" : "Abi"}
    * match employees[2] contains { "firstname" : "Hacı"}
