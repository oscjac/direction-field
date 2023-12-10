# direction-field

A simple matlab function to plot direction fields for systems of first order differential equations.

## Usage

This program can be run from the command line or from within matlab. To run from the command line, use the following syntax:

```bash
    matlab -bash "direction_field(A)"
```

where `A` is a 2x2 matrix of the form

```matlab
    A = [a b; c d]
```

The function also plots one trajectory for the system. By default, the trajectory is plotted for the initial conditions `x0 = 0` and `y0 = 0`. To plot a trajectory for different initial conditions, use the following syntax:

```bash
    matlab -bash "direction_field(A, [x0 y0])"
```

where `x0` and `y0` are the initial conditions for the trajectory.
