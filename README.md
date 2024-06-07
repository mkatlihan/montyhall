# Monty Hall Problem

The Monty Hall problem is an interesting scenario that can be explained and understood using Bayesian probability.

In the Monty Hall problem, a player initially selects one of three doors, behind one of which is a car and behind the other two are goats. The game host, Monty Hall, then opens one of the other two doors to reveal a goat. At this point, the player is given the option to stick with their original choice or switch to the other unopened door.

Using Bayesian probability, we can analyze the situation as follows:

Let's define the following events:

A: The event that the car is behind the player's original choice.
B: The event that the car is behind the door opened by Monty Hall.
C: The event that the car is behind the other unopened door.
We are interested in calculating the probability of the car being behind the player's original choice (event A), given that Monty Hall has opened a door with a goat (event B).

Using Bayes' theorem, the probability of event A given event B can be expressed as:

P(A|B) = P(B|A) * P(A) / P(B)

Where:

P(A|B) is the probability of the car being behind the player's original choice given that Monty Hall has opened a door with a goat.
P(B|A) is the probability of Monty Hall opening a door with a goat given that the car is behind the player's original choice.
P(A) is the prior probability of the car being behind the player's original choice.
P(B) is the prior probability of Monty Hall opening a door with a goat.
In the context of the Monty Hall problem:

P(A) = 1/3, as the car is equally likely to be behind any of the three doors initially.
P(B|A) = 1, because if the car is behind the player's original choice, Monty Hall can open either of the other two doors with a goat.
P(B) = 1/2, as there are two doors left after the player's initial choice, and Monty Hall has to choose one of them to open.
Plugging these values into Bayes' theorem, we get: P(A|B) = (1 * 1/3) / (1/2) = 2/3

This result means that if the player decides to switch their choice after Monty Hall opens a door with a goat, the probability of winning the car is 2/3. This is a counterintuitive result, as it suggests that the player should always switch their choice to maximize their chances of winning the car.

This Bayesian analysis provides a clear understanding of the advantage of changing the initial choice in the Monty Hall problem. It illustrates how updating the probability based on new information (Monty Hall opening a door with a goat) can significantly affect the player's optimal strategy.

By applying Bayesian probability, we can see that the initial probability distribution changes based on the new information, leading to a different optimal decision. This demonstrates the power of Bayesian reasoning in updating beliefs and making decisions in uncertain scenarios.

# Problem Simulator

`monty_hall.lua` is a Lua script that simulates the Monty Hall problem. The script allows you to run multiple simulations of the problem and calculates the win percentage when the player changes their initial choice.

## Usage

To run the Monty Hall problem simulator, follow these steps:

1. Make sure you have Lua installed on your system.

2. Open a terminal or command prompt and navigate to the directory where the script is located.

3. Run the script using the following command:


			$ lua monty_hall.lua [NDOORS]

4. Replace `[NDOORS]` with the desired number of doors for the simulation (default is 3 if not provided).
	
5. The script will run the specified number of simulations (default is 10,000) and display the win percentage when the player changes their initial choice, as well as the win percentage without changing the pick.

## Customization

You can customize the following parameters in the script:

- `NDOORS`: The number of doors used in the simulation. You can provide this value as a command-line argument when running the script. If not provided, the default value is 3.

- `is_debug`: Set this variable to `true` to enable debug output, which will display the player's initial choice, whether they change their pick, and their new choice (if applicable) for each simulation. Set it to `false` to disable debug output (default).

- `totalSimulations`: The total number of simulations to run. You can modify this value in the script to increase or decrease the number of simulations (default is 10,000).

## Example

Here's an example of running the Monty Hall problem simulator with 4 doors:

			$ lua monty_hall.lua 4
			Win percentage without changing the pick: 25.00%
			Win percentage when changing the pick   : 36.69%


## License

This script is provided under the [MIT License](https://opensource.org/licenses/MIT). Feel free to use, modify, and distribute it as needed.