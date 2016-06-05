#Parrot Libre Build config scripts

N.B: Script under heavy development. Only for parrots devs


this configuration folder for live-build is used to build our official Parrot Libre ISO images

known bugs:

something in our build process creates incorrect initramfs, the error triggers an unrecoverable kernel panic
the bug is momentaneously suppressed by manually replacing the initramfs inside the iso, but a true fix will be provided soon
