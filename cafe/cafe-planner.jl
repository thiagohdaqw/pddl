using PDDL, PlanningDomains, SymbolicPlanners

domain = load_domain("cafe-domain.pddl")

problem = load_problem("cafe-problem.pddl")

state = initstate(domain, problem)

spec = MinStepsGoal(problem)

planner = AStarPlanner(HAdd())

sol = planner(domain, state, spec)
