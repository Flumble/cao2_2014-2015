The altera libaries for the device families:
- Cyclone
- Cyclone II

are compiled with QuestaSim-64 10.0b.
This version is installed on de lab machines.

copy the directory: simlib_altera
in the directory: P:\

If you prefer a ZIP-file. You can unpack the file simlib_altera.zip into directory P:|

=======================================================
Note: it is also possible to compile the two libraries with Quartus II (the web edition can NOT be used):
- start Quartus II
- Tools -> Launch EDA Simulation Library Compiler
tool name: QuestaSim
executable location: C:/Programs/questasim64_10.0b/win64 (forward slashes are required!!!)
select families: Cyclone, Cyclone II
output dir: P:\simlib_altera
(select show all messages and create log file).

The path selection to the tools seems a little bit tricky. Sometimes you have to make a change en conrrect that change and it works.
