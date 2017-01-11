#Main department
import random

class Department(object):
    def __init__(self, name, supervisor, employee_count, intern_count):
        self.name = name
        self.supervisor = supervisor
        self.size = employee_count
        self.intern_count = intern_count
        self.budget = 5000
        self.employees = set()

    def add_employee(self, employee):

    def remove_employee(self, employee):

    def get_employees(self):


    def get_name(self):
      return self.name

    def get_supervisor(self):
      return self.supervisor

    def meet(self):
      print("Everyone meet in {}'s office.".format(self.supervisor))

    def get_budget(self):
      return self.budget

# Human Resources Department
class HumanResources(Department):

    def __init__(self, slogan):
        super().__init__("Human Resources Rocks", "bob", 12, 2)
        self.policies = { "policy1": "do things right", "policy2": "don't do things wrong", "policy3": "work hard" }
        self.slogan = slogan

    def get_policy(self):
        return self.policies

    def add_policy(self, policy_name, policy_text):
        self.policy_name = tuple()
        self.policy_text = tuple()

        self.policies.add((policy_name, policy_text))

    def meet(self):
        print("Run around the office until you find your team - HIDE AND SEEK!")

    def set_budget(self):
        self.budget = self.budget + 100

    def get_budget(self):
        return self.budget


hr_department = HumanResources("We make sure employees are :)!")


#IT Department
class IT(Department):

    def __init__(self, slogan):
        super().__init__("IT Rocks", "Tom", 15, 1)
        self.policies = { "policy1": "do things" }
        self.slogan = slogan

    def get_policy():
        return self.policies

    def add_policy():
        self.policy_name = tuple()
        self.policy_text = tuple()

    def meet(self):
        print("Everyone meet at Red Bicycle bc it's dope!")

    def set_budget(self):
        self.budget = self.budget + 300

    def get_budget(self):
        return self.budget

it_department = IT("We build stuff on the internetz!")

# Marketing Department
class Marketing(Department):

    def __init__(self, slogan):
        super().__init__("Marketing", "Don", 15, 1)
        self.policies = { "policy1": "get all the customers" }
        self.slogan = slogan

    def get_policy():
        return self.policies

    def add_policy():
        self.policy_name = tuple()
        self.policy_text = tuple()

    def meet(self):
        print("Everyone meet at Red Bicycle bc it's dope!")

    def set_budget(self):
        self.budget = self.budget + 45

    def get_budget(self):
        return self.budget

marketing_department = Marketing("We get you customers!")


restaurants = ["Red Bicycle", "Taco truck", "Interasian Market", "NSS free sandwiches"]

class Employee(Department):
    def __init__(self, first_name, last_name):
        self.first_name = first_name
        self.last_name = last_name
        self.employee_full_name = first_name + " " + last_name

    def set_employee(self):
        self.first_name = self.first_name
        self.last_name = self.last_name

    def get_employee(self):
        return self.first_name + " " + self.last_name

    def eat(self, food=None, companion=None):

        if food is None:
          food = "no food"
        else:
          food = food

        if companion is None:
          companion = "no one"
        else:
          companion = companion

        return "{} {} ate {} with {} at {}".format(self.first_name, self.last_name, food, companion, random.choice(restaurants))

dani_adkins = Employee("Dani", "Adkins")


foods_and_friends = Employee("Dani", "Adkins")

foods_and_friends.eat(food="pizza", companion="Joe")

print(foods_and_friends.eat(food="pizza", companion="Joe"))




class FullTime():

  def __init__(self):
    self.hours_per_week = 40


class PartTime():

  def __init__(self):
    self.hours_per_week = 24


class HumanResources(Employee, FullTime):
  """Describes human resources employees"""

  def __init__(self, first_name, last_name):
    # Note that we can't use super() any more because there is
    # more than one class being inherited from. Because of that
    # we have to call the constructor of each parent class individually
    Employee.__init__(first_name, last_name)
    FullTime.__init__()


# print(marketing_department.name)
# print(hr_department.name)
# print(it_department.name)

# print(marketing_department.meet())
# print(hr_department.meet())
# print(it_department.meet())

# marketing_department.set_budget()
# print(marketing_department.budget)

# hr_department.set_budget()
# print(hr_department.budget)

# it_department.set_budget()
# print(it_department.budget)

# print(random.choice(restaurants))














      # Arguments:
        # policy_name (string)
        # policy_text (string)

