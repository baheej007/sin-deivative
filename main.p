import sympy as sp


x = sp.symbols('x')

user_input = input("Enter a function in terms of x (e.g., sin(x), x**2 + 3*x): ")


try:
    f = sp.sympify(user_input)
except sp.SympifyError:
    print("Invalid function input. Please enter a valid sympy expression.")
    exit()


f_prime = sp.diff(f, x)

print(f"The derivative of {user_input} is: {f_prime}")
