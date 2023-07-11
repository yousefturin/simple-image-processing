# simple-image-processing
This research paper contains computer codes for different problems on how to fix the intensity level of 
image and the implementation of a thresholding function for converting images to a binary scale as well 
as making enhancement using different methods like log transformation, power-law transformation and 
determine which method is more effective and in which cases, in the end, reconstruction of the image by 
using the bit planes method to compress images. The tool used in this paper is MATLAB desktop version 
“MATLAB R2022b”. 

# Implementation and algorithm 
Explanation of each case with mathematical calculation step by step with example of each algorithm.

## Example_1a
<b>Reduce the number of intensity levels in an image from 256 to 2, in integer powers of 2. Apply your program to Figure “Im_1”

matrix_1
| 0 | 5 | 0 | 1 |
|---|---|---|---|
| 6 | 7 | 2 | 0 | 
| 0 | 0 | 4 | 1 |

            Algorithm If number is >= 1, then number is =1, else number = 0
Output_matrix 
| 0 | 1 | 0 | 1 |
|---|---|---|---|
| 1 | 1 | 1 | 0 | 
| 0 | 0 | 1 | 1 |

![Figure1_A](https://github.com/yousefturin/simple-image-processing/assets/94796673/f13d16a6-22fd-48a9-aa73-72541e11f531)

## Example_1b
<b>Use at least four thresholding values in the interval [0, L-1], and produce the corresponding binary images
matrix_1 
| 0 | 5 | 0 | 1 |
|---|---|---|---|
| 6 | 7 | 2 | 0 | 
| 0 | 0 | 4 | 1 |
        Threshold = 4
        Algorithm If number is >= Threshold, then number is = 0” white”, if number is < Threshold then, 
        number = 255” black”

Output_matrix 

| 255 | 0 | 255 | 255 |
|---|---|---|---|
| 0 | 0 | 255 | 255 | 
| 255 | 0 | 0 | 255 |

![Figure1_B](https://github.com/yousefturin/simple-image-processing/assets/94796673/f082ba1a-bb32-4f5d-a6e2-2fcb04f11bcf)

## Example_1c
<b>Reversing the intensity levels of Figure “Im_2” to produce the equivalent of a  photographic negative.
matrix_1 

| 216 | 216 | 248 | 255 |
|---|---|---|---|
| 250 | 188 | 167 | 143 | 
| 83 | 111 | 124 | 205 |

Matrix_ones 
| 1 | 1 | 1 | 1 |
|---|---|---|---|
| 1 | 1 | 1 | 1 | 
| 1 | 1 | 1 | 1 |
 
Matrix_1_double 

| 0.84 | 0.84 | 0.97 | 1 |
|---|---|---|---|
| 0.98 | 0.73 | 0.65 | 0.56 | 
| 0.32 | 0.43 | 0.48 | 0.80 |

        Algorithm Output_matrix = Matrix_ones – Matrix_1_double

Output_matrix
| 0.16 | 0.16 | 0.03 | 0 |
|---|---|---|---|
| 0.02 | 0.27 | 0.35 | 0.44 | 
| 0.68  | 0.57 | 0.52 | 0.20 |

![Figure1_C](https://github.com/yousefturin/simple-image-processing/assets/94796673/9bd0032e-dcf6-4dae-bb3f-98ce9bfa8483)

## Example_2
Enhance Figure “Im_3” using the log transformation (s=clog(1+r)). Obtain the best visual enhancement according to your judgment.
matrix_1 
| 216 | 216 | 248 | 255 |
|---|---|---|---|
| 250 | 188 | 167 | 143 | 
| 83 | 111 | 124 | 205 |

Matrix_1_double 
| 0.84 | 0.84 | 0.97 | 1 |
|---|---|---|---|
| 0.98 | 0.73 | 0.65 | 0.56 | 
| 0.32 | 0.43 | 0.48 | 0.80 |
        Algorithm Output_matrix =2*log (1+ Matrix_1_double)
Output_matrix
| 0.52 | 0.52 | 0.58 | 0.60 |
|---|---|---|---|
| 0.59 | 0.47 | 0.43 |  0.38 | 
| 0.24 | 0.31 | 0.34 | 0.51 |

![Figure2](https://github.com/yousefturin/simple-image-processing/assets/94796673/d799fe0b-00ab-4f3c-93d3-c41868f159cd)

## Example_3
Enhance Figure “Im_4” using the power-law transformation (s=cr^γ). Obtain the best visual enhancement according to your judgment.
matrix_1
| 216 | 216 | 248 | 255 |
|---|---|---|---|
| 250 | 188 | 167 | 143 | 
| 83 | 111 | 124 | 205 |

Matrix_1_double 
| 0.84 | 0.84 | 0.97 | 1 |
|---|---|---|---|
| 0.98 | 0.73 | 0.65 | 0.56 | 
| 0.32 | 0.43 | 0.48 | 0.80 |
        Algorithm Output_matrix =2* (Matrix_1_double)y where y=1.8 in this case
Output_matrix
| 1.46 | 1.46 | 1.89 | 2 |
|---|---|---|---|
| 1.90 | 1.13 | 1.13 | 0.70 | 
| 0.25 |0.43| 0.53 | 1.33 |

![Figure3](https://github.com/yousefturin/simple-image-processing/assets/94796673/71caea70-1d03-4fe9-a461-021d511136f2)

## Example_4

![Figure4](https://github.com/yousefturin/simple-image-processing/assets/94796673/c64ecda6-9de7-49c8-aa8d-22bcf5f15352)

## Example_5
The contribution to the total image appearance by specific bits can be highlighted. Decompose Figure “Im_2” into its bit planes. Then reconstruct the same image by using its upper three planes.

matrix_1 
| 216 | 216 | 248 | 255 |
|---|---|---|---|
| 250 | 188 | 167 | 143 | 
| 83 | 111 | 124 | 205 |

_____________________________________________________________________
Bin_matrix 
| 11011000 | 11011000 | 11111000 | 11111111 |
|---|---|---|---|
| 11111010 | 10111100 | 10100111 | 10001111 | 
| 01010011 | 01101111 | 11111000 | 11001101 |

_____________________________________________________________________
MSB 
| 10000000 | 10000000 | 10000000 | 10000000 |
|---|---|---|---|
| 10000000 | 10000000 | 10000000 | 10000000 | 
| 00000000 | 00000000 | 10000000 | 10000000 |

_____________________________________________________________________
Bin_7 
| 01000000 | 01000000 | 01000000 | 01000000 |
|---|---|---|---|
| 01000000 | 00000000 | 00000000 | 00000000 | 
| 01000000 | 01000000 | 01000000 | 01000000 |

_____________________________________________________________________
Bin_6
| 00000000 | 00000000 | 00100000 | 00100000 |
|---|---|---|---|
| 00100000 | 00100000 | 00100000 | 00000000 | 
| 00000000 | 00100000 | 00100000 | 00000000 |

_____________________________________________________________________
Bin_5
| 00010000 | 00010000 | 00010000 | 00010000 |
|---|---|---|---|
| 00010000 | 00010000 | 00000000 | 00000000 | 
| 00010000 | 00000000 | 00010000 | 00000000 |

_____________________________________________________________________
Bin_4
| 00001000 | 00001000 | 00001000 | 00001000 |
|---|---|---|---|
| 00001000 | 00001000 | 00000000 | 00001000 | 
| 00000000 | 00001000 | 00000000 | 00001000 |
_____________________________________________________________________
Bin_3
| 00000000 | 00000000 | 00000000 | 00000100 |
|---|---|---|---|
| 00000000 | 00000100 | 00000100 | 00000100 | 
| 00000000 | 00000100 | 00000000 | 00000100 |

_____________________________________________________________________
Bin_2
| 00000000 | 00000000 | 00000000 | 00000010 |
|---|---|---|---|
| 00000010 | 00000000 | 00000010 | 00000010 | 
| 00000010 | 00000010 | 00000000 | 00000000 |

_____________________________________________________________________
Bin_1
| 00000000 | 00000000 | 00000000 | 00000001 |
|---|---|---|---|
| 00000000 | 00000000 | 00000001 | 00000001 | 
| 00000001 | 00000001 | 00000000 | 00000001 |

_____________________________________________________________________
        Output_matrix= MSB+Bin_7+Bin_6

| 11000000 | 11000000 | 11100000 | 11100000 |
|---|---|---|---|
| 11100000 | 10100000 | 10100000 | 10000000 | 
| 01000000 | 01100000 | 11100000 | 10100000 |

![Figure5](https://github.com/yousefturin/simple-image-processing/assets/94796673/54bc907e-c64d-4de3-9218-ceadf681b5d6)


