ΝΑ,
Υͺ
D
AddV2
x"T
y"T
z"T"
Ttype:
2	
B
AssignVariableOp
resource
value"dtype"
dtypetype
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
?
Mul
x"T
y"T
z"T"
Ttype:
2	

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype
E
Relu
features"T
activations"T"
Ttype:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
.
Rsqrt
x"T
y"T"
Ttype:

2
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
0
Sigmoid
x"T
y"T"
Ttype:

2
Ύ
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring 
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
<
Sub
x"T
y"T
z"T"
Ttype:
2	

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 "serve*2.6.42v2.6.3-62-g9ef160463d18―)

batch_normalization_4/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*,
shared_namebatch_normalization_4/gamma

/batch_normalization_4/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_4/gamma*
_output_shapes
:	*
dtype0

batch_normalization_4/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*+
shared_namebatch_normalization_4/beta

.batch_normalization_4/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_4/beta*
_output_shapes
:	*
dtype0

!batch_normalization_4/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*2
shared_name#!batch_normalization_4/moving_mean

5batch_normalization_4/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_4/moving_mean*
_output_shapes
:	*
dtype0
’
%batch_normalization_4/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*6
shared_name'%batch_normalization_4/moving_variance

9batch_normalization_4/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_4/moving_variance*
_output_shapes
:	*
dtype0

#batch_normalization_4/moving_stddevVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*4
shared_name%#batch_normalization_4/moving_stddev

7batch_normalization_4/moving_stddev/Read/ReadVariableOpReadVariableOp#batch_normalization_4/moving_stddev*
_output_shapes
:	*
dtype0

!batch_normalization_4/renorm_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*2
shared_name#!batch_normalization_4/renorm_mean

5batch_normalization_4/renorm_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_4/renorm_mean*
_output_shapes
:	*
dtype0

#batch_normalization_4/renorm_stddevVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*4
shared_name%#batch_normalization_4/renorm_stddev

7batch_normalization_4/renorm_stddev/Read/ReadVariableOpReadVariableOp#batch_normalization_4/renorm_stddev*
_output_shapes
:	*
dtype0
{
dense_21/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:		* 
shared_namedense_21/kernel
t
#dense_21/kernel/Read/ReadVariableOpReadVariableOpdense_21/kernel*
_output_shapes
:		*
dtype0
s
dense_21/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_21/bias
l
!dense_21/bias/Read/ReadVariableOpReadVariableOpdense_21/bias*
_output_shapes	
:*
dtype0

batch_normalization_5/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namebatch_normalization_5/gamma

/batch_normalization_5/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_5/gamma*
_output_shapes	
:*
dtype0

batch_normalization_5/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_namebatch_normalization_5/beta

.batch_normalization_5/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_5/beta*
_output_shapes	
:*
dtype0

!batch_normalization_5/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!batch_normalization_5/moving_mean

5batch_normalization_5/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_5/moving_mean*
_output_shapes	
:*
dtype0
£
%batch_normalization_5/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*6
shared_name'%batch_normalization_5/moving_variance

9batch_normalization_5/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_5/moving_variance*
_output_shapes	
:*
dtype0

#batch_normalization_5/moving_stddevVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#batch_normalization_5/moving_stddev

7batch_normalization_5/moving_stddev/Read/ReadVariableOpReadVariableOp#batch_normalization_5/moving_stddev*
_output_shapes	
:*
dtype0

!batch_normalization_5/renorm_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!batch_normalization_5/renorm_mean

5batch_normalization_5/renorm_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_5/renorm_mean*
_output_shapes	
:*
dtype0

#batch_normalization_5/renorm_stddevVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#batch_normalization_5/renorm_stddev

7batch_normalization_5/renorm_stddev/Read/ReadVariableOpReadVariableOp#batch_normalization_5/renorm_stddev*
_output_shapes	
:*
dtype0
|
dense_22/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
* 
shared_namedense_22/kernel
u
#dense_22/kernel/Read/ReadVariableOpReadVariableOpdense_22/kernel* 
_output_shapes
:
*
dtype0
s
dense_22/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_22/bias
l
!dense_22/bias/Read/ReadVariableOpReadVariableOpdense_22/bias*
_output_shapes	
:*
dtype0

batch_normalization_6/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namebatch_normalization_6/gamma

/batch_normalization_6/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_6/gamma*
_output_shapes	
:*
dtype0

batch_normalization_6/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_namebatch_normalization_6/beta

.batch_normalization_6/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_6/beta*
_output_shapes	
:*
dtype0

!batch_normalization_6/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!batch_normalization_6/moving_mean

5batch_normalization_6/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_6/moving_mean*
_output_shapes	
:*
dtype0
£
%batch_normalization_6/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*6
shared_name'%batch_normalization_6/moving_variance

9batch_normalization_6/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_6/moving_variance*
_output_shapes	
:*
dtype0

#batch_normalization_6/moving_stddevVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#batch_normalization_6/moving_stddev

7batch_normalization_6/moving_stddev/Read/ReadVariableOpReadVariableOp#batch_normalization_6/moving_stddev*
_output_shapes	
:*
dtype0

!batch_normalization_6/renorm_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!batch_normalization_6/renorm_mean

5batch_normalization_6/renorm_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_6/renorm_mean*
_output_shapes	
:*
dtype0

#batch_normalization_6/renorm_stddevVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#batch_normalization_6/renorm_stddev

7batch_normalization_6/renorm_stddev/Read/ReadVariableOpReadVariableOp#batch_normalization_6/renorm_stddev*
_output_shapes	
:*
dtype0
|
dense_23/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
* 
shared_namedense_23/kernel
u
#dense_23/kernel/Read/ReadVariableOpReadVariableOpdense_23/kernel* 
_output_shapes
:
*
dtype0
s
dense_23/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_23/bias
l
!dense_23/bias/Read/ReadVariableOpReadVariableOpdense_23/bias*
_output_shapes	
:*
dtype0

batch_normalization_7/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namebatch_normalization_7/gamma

/batch_normalization_7/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_7/gamma*
_output_shapes	
:*
dtype0

batch_normalization_7/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_namebatch_normalization_7/beta

.batch_normalization_7/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_7/beta*
_output_shapes	
:*
dtype0

!batch_normalization_7/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!batch_normalization_7/moving_mean

5batch_normalization_7/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_7/moving_mean*
_output_shapes	
:*
dtype0
£
%batch_normalization_7/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*6
shared_name'%batch_normalization_7/moving_variance

9batch_normalization_7/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_7/moving_variance*
_output_shapes	
:*
dtype0

#batch_normalization_7/moving_stddevVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#batch_normalization_7/moving_stddev

7batch_normalization_7/moving_stddev/Read/ReadVariableOpReadVariableOp#batch_normalization_7/moving_stddev*
_output_shapes	
:*
dtype0

!batch_normalization_7/renorm_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!batch_normalization_7/renorm_mean

5batch_normalization_7/renorm_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_7/renorm_mean*
_output_shapes	
:*
dtype0

#batch_normalization_7/renorm_stddevVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#batch_normalization_7/renorm_stddev

7batch_normalization_7/renorm_stddev/Read/ReadVariableOpReadVariableOp#batch_normalization_7/renorm_stddev*
_output_shapes	
:*
dtype0
|
dense_24/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
* 
shared_namedense_24/kernel
u
#dense_24/kernel/Read/ReadVariableOpReadVariableOpdense_24/kernel* 
_output_shapes
:
*
dtype0
s
dense_24/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_24/bias
l
!dense_24/bias/Read/ReadVariableOpReadVariableOpdense_24/bias*
_output_shapes	
:*
dtype0

batch_normalization_8/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namebatch_normalization_8/gamma

/batch_normalization_8/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_8/gamma*
_output_shapes	
:*
dtype0

batch_normalization_8/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_namebatch_normalization_8/beta

.batch_normalization_8/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_8/beta*
_output_shapes	
:*
dtype0

!batch_normalization_8/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!batch_normalization_8/moving_mean

5batch_normalization_8/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_8/moving_mean*
_output_shapes	
:*
dtype0
£
%batch_normalization_8/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*6
shared_name'%batch_normalization_8/moving_variance

9batch_normalization_8/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_8/moving_variance*
_output_shapes	
:*
dtype0

#batch_normalization_8/moving_stddevVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#batch_normalization_8/moving_stddev

7batch_normalization_8/moving_stddev/Read/ReadVariableOpReadVariableOp#batch_normalization_8/moving_stddev*
_output_shapes	
:*
dtype0

!batch_normalization_8/renorm_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!batch_normalization_8/renorm_mean

5batch_normalization_8/renorm_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_8/renorm_mean*
_output_shapes	
:*
dtype0

#batch_normalization_8/renorm_stddevVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#batch_normalization_8/renorm_stddev

7batch_normalization_8/renorm_stddev/Read/ReadVariableOpReadVariableOp#batch_normalization_8/renorm_stddev*
_output_shapes	
:*
dtype0
{
dense_25/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@* 
shared_namedense_25/kernel
t
#dense_25/kernel/Read/ReadVariableOpReadVariableOpdense_25/kernel*
_output_shapes
:	@*
dtype0
r
dense_25/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_namedense_25/bias
k
!dense_25/bias/Read/ReadVariableOpReadVariableOpdense_25/bias*
_output_shapes
:@*
dtype0

batch_normalization_9/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*,
shared_namebatch_normalization_9/gamma

/batch_normalization_9/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_9/gamma*
_output_shapes
:@*
dtype0

batch_normalization_9/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*+
shared_namebatch_normalization_9/beta

.batch_normalization_9/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_9/beta*
_output_shapes
:@*
dtype0

!batch_normalization_9/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*2
shared_name#!batch_normalization_9/moving_mean

5batch_normalization_9/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_9/moving_mean*
_output_shapes
:@*
dtype0
’
%batch_normalization_9/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*6
shared_name'%batch_normalization_9/moving_variance

9batch_normalization_9/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_9/moving_variance*
_output_shapes
:@*
dtype0

#batch_normalization_9/moving_stddevVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*4
shared_name%#batch_normalization_9/moving_stddev

7batch_normalization_9/moving_stddev/Read/ReadVariableOpReadVariableOp#batch_normalization_9/moving_stddev*
_output_shapes
:@*
dtype0

!batch_normalization_9/renorm_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*2
shared_name#!batch_normalization_9/renorm_mean

5batch_normalization_9/renorm_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_9/renorm_mean*
_output_shapes
:@*
dtype0

#batch_normalization_9/renorm_stddevVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*4
shared_name%#batch_normalization_9/renorm_stddev

7batch_normalization_9/renorm_stddev/Read/ReadVariableOpReadVariableOp#batch_normalization_9/renorm_stddev*
_output_shapes
:@*
dtype0
z
dense_26/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@ * 
shared_namedense_26/kernel
s
#dense_26/kernel/Read/ReadVariableOpReadVariableOpdense_26/kernel*
_output_shapes

:@ *
dtype0
r
dense_26/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namedense_26/bias
k
!dense_26/bias/Read/ReadVariableOpReadVariableOpdense_26/bias*
_output_shapes
: *
dtype0
z
dense_27/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: * 
shared_namedense_27/kernel
s
#dense_27/kernel/Read/ReadVariableOpReadVariableOpdense_27/kernel*
_output_shapes

: *
dtype0
r
dense_27/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_27/bias
k
!dense_27/bias/Read/ReadVariableOpReadVariableOpdense_27/bias*
_output_shapes
:*
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0

"Adam/batch_normalization_4/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*3
shared_name$"Adam/batch_normalization_4/gamma/m

6Adam/batch_normalization_4/gamma/m/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_4/gamma/m*
_output_shapes
:	*
dtype0

!Adam/batch_normalization_4/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*2
shared_name#!Adam/batch_normalization_4/beta/m

5Adam/batch_normalization_4/beta/m/Read/ReadVariableOpReadVariableOp!Adam/batch_normalization_4/beta/m*
_output_shapes
:	*
dtype0

Adam/dense_21/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:		*'
shared_nameAdam/dense_21/kernel/m

*Adam/dense_21/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_21/kernel/m*
_output_shapes
:		*
dtype0

Adam/dense_21/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_21/bias/m
z
(Adam/dense_21/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_21/bias/m*
_output_shapes	
:*
dtype0

"Adam/batch_normalization_5/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adam/batch_normalization_5/gamma/m

6Adam/batch_normalization_5/gamma/m/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_5/gamma/m*
_output_shapes	
:*
dtype0

!Adam/batch_normalization_5/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!Adam/batch_normalization_5/beta/m

5Adam/batch_normalization_5/beta/m/Read/ReadVariableOpReadVariableOp!Adam/batch_normalization_5/beta/m*
_output_shapes	
:*
dtype0

Adam/dense_22/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*'
shared_nameAdam/dense_22/kernel/m

*Adam/dense_22/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_22/kernel/m* 
_output_shapes
:
*
dtype0

Adam/dense_22/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_22/bias/m
z
(Adam/dense_22/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_22/bias/m*
_output_shapes	
:*
dtype0

"Adam/batch_normalization_6/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adam/batch_normalization_6/gamma/m

6Adam/batch_normalization_6/gamma/m/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_6/gamma/m*
_output_shapes	
:*
dtype0

!Adam/batch_normalization_6/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!Adam/batch_normalization_6/beta/m

5Adam/batch_normalization_6/beta/m/Read/ReadVariableOpReadVariableOp!Adam/batch_normalization_6/beta/m*
_output_shapes	
:*
dtype0

Adam/dense_23/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*'
shared_nameAdam/dense_23/kernel/m

*Adam/dense_23/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_23/kernel/m* 
_output_shapes
:
*
dtype0

Adam/dense_23/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_23/bias/m
z
(Adam/dense_23/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_23/bias/m*
_output_shapes	
:*
dtype0

"Adam/batch_normalization_7/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adam/batch_normalization_7/gamma/m

6Adam/batch_normalization_7/gamma/m/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_7/gamma/m*
_output_shapes	
:*
dtype0

!Adam/batch_normalization_7/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!Adam/batch_normalization_7/beta/m

5Adam/batch_normalization_7/beta/m/Read/ReadVariableOpReadVariableOp!Adam/batch_normalization_7/beta/m*
_output_shapes	
:*
dtype0

Adam/dense_24/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*'
shared_nameAdam/dense_24/kernel/m

*Adam/dense_24/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_24/kernel/m* 
_output_shapes
:
*
dtype0

Adam/dense_24/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_24/bias/m
z
(Adam/dense_24/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_24/bias/m*
_output_shapes	
:*
dtype0

"Adam/batch_normalization_8/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adam/batch_normalization_8/gamma/m

6Adam/batch_normalization_8/gamma/m/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_8/gamma/m*
_output_shapes	
:*
dtype0

!Adam/batch_normalization_8/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!Adam/batch_normalization_8/beta/m

5Adam/batch_normalization_8/beta/m/Read/ReadVariableOpReadVariableOp!Adam/batch_normalization_8/beta/m*
_output_shapes	
:*
dtype0

Adam/dense_25/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@*'
shared_nameAdam/dense_25/kernel/m

*Adam/dense_25/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_25/kernel/m*
_output_shapes
:	@*
dtype0

Adam/dense_25/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/dense_25/bias/m
y
(Adam/dense_25/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_25/bias/m*
_output_shapes
:@*
dtype0

"Adam/batch_normalization_9/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*3
shared_name$"Adam/batch_normalization_9/gamma/m

6Adam/batch_normalization_9/gamma/m/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_9/gamma/m*
_output_shapes
:@*
dtype0

!Adam/batch_normalization_9/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*2
shared_name#!Adam/batch_normalization_9/beta/m

5Adam/batch_normalization_9/beta/m/Read/ReadVariableOpReadVariableOp!Adam/batch_normalization_9/beta/m*
_output_shapes
:@*
dtype0

Adam/dense_26/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@ *'
shared_nameAdam/dense_26/kernel/m

*Adam/dense_26/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_26/kernel/m*
_output_shapes

:@ *
dtype0

Adam/dense_26/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/dense_26/bias/m
y
(Adam/dense_26/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_26/bias/m*
_output_shapes
: *
dtype0

Adam/dense_27/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *'
shared_nameAdam/dense_27/kernel/m

*Adam/dense_27/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_27/kernel/m*
_output_shapes

: *
dtype0

Adam/dense_27/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_27/bias/m
y
(Adam/dense_27/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_27/bias/m*
_output_shapes
:*
dtype0

"Adam/batch_normalization_4/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*3
shared_name$"Adam/batch_normalization_4/gamma/v

6Adam/batch_normalization_4/gamma/v/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_4/gamma/v*
_output_shapes
:	*
dtype0

!Adam/batch_normalization_4/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*2
shared_name#!Adam/batch_normalization_4/beta/v

5Adam/batch_normalization_4/beta/v/Read/ReadVariableOpReadVariableOp!Adam/batch_normalization_4/beta/v*
_output_shapes
:	*
dtype0

Adam/dense_21/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:		*'
shared_nameAdam/dense_21/kernel/v

*Adam/dense_21/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_21/kernel/v*
_output_shapes
:		*
dtype0

Adam/dense_21/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_21/bias/v
z
(Adam/dense_21/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_21/bias/v*
_output_shapes	
:*
dtype0

"Adam/batch_normalization_5/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adam/batch_normalization_5/gamma/v

6Adam/batch_normalization_5/gamma/v/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_5/gamma/v*
_output_shapes	
:*
dtype0

!Adam/batch_normalization_5/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!Adam/batch_normalization_5/beta/v

5Adam/batch_normalization_5/beta/v/Read/ReadVariableOpReadVariableOp!Adam/batch_normalization_5/beta/v*
_output_shapes	
:*
dtype0

Adam/dense_22/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*'
shared_nameAdam/dense_22/kernel/v

*Adam/dense_22/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_22/kernel/v* 
_output_shapes
:
*
dtype0

Adam/dense_22/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_22/bias/v
z
(Adam/dense_22/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_22/bias/v*
_output_shapes	
:*
dtype0

"Adam/batch_normalization_6/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adam/batch_normalization_6/gamma/v

6Adam/batch_normalization_6/gamma/v/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_6/gamma/v*
_output_shapes	
:*
dtype0

!Adam/batch_normalization_6/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!Adam/batch_normalization_6/beta/v

5Adam/batch_normalization_6/beta/v/Read/ReadVariableOpReadVariableOp!Adam/batch_normalization_6/beta/v*
_output_shapes	
:*
dtype0

Adam/dense_23/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*'
shared_nameAdam/dense_23/kernel/v

*Adam/dense_23/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_23/kernel/v* 
_output_shapes
:
*
dtype0

Adam/dense_23/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_23/bias/v
z
(Adam/dense_23/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_23/bias/v*
_output_shapes	
:*
dtype0

"Adam/batch_normalization_7/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adam/batch_normalization_7/gamma/v

6Adam/batch_normalization_7/gamma/v/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_7/gamma/v*
_output_shapes	
:*
dtype0

!Adam/batch_normalization_7/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!Adam/batch_normalization_7/beta/v

5Adam/batch_normalization_7/beta/v/Read/ReadVariableOpReadVariableOp!Adam/batch_normalization_7/beta/v*
_output_shapes	
:*
dtype0

Adam/dense_24/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*'
shared_nameAdam/dense_24/kernel/v

*Adam/dense_24/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_24/kernel/v* 
_output_shapes
:
*
dtype0

Adam/dense_24/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_24/bias/v
z
(Adam/dense_24/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_24/bias/v*
_output_shapes	
:*
dtype0

"Adam/batch_normalization_8/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adam/batch_normalization_8/gamma/v

6Adam/batch_normalization_8/gamma/v/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_8/gamma/v*
_output_shapes	
:*
dtype0

!Adam/batch_normalization_8/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!Adam/batch_normalization_8/beta/v

5Adam/batch_normalization_8/beta/v/Read/ReadVariableOpReadVariableOp!Adam/batch_normalization_8/beta/v*
_output_shapes	
:*
dtype0

Adam/dense_25/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@*'
shared_nameAdam/dense_25/kernel/v

*Adam/dense_25/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_25/kernel/v*
_output_shapes
:	@*
dtype0

Adam/dense_25/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/dense_25/bias/v
y
(Adam/dense_25/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_25/bias/v*
_output_shapes
:@*
dtype0

"Adam/batch_normalization_9/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*3
shared_name$"Adam/batch_normalization_9/gamma/v

6Adam/batch_normalization_9/gamma/v/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_9/gamma/v*
_output_shapes
:@*
dtype0

!Adam/batch_normalization_9/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*2
shared_name#!Adam/batch_normalization_9/beta/v

5Adam/batch_normalization_9/beta/v/Read/ReadVariableOpReadVariableOp!Adam/batch_normalization_9/beta/v*
_output_shapes
:@*
dtype0

Adam/dense_26/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@ *'
shared_nameAdam/dense_26/kernel/v

*Adam/dense_26/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_26/kernel/v*
_output_shapes

:@ *
dtype0

Adam/dense_26/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/dense_26/bias/v
y
(Adam/dense_26/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_26/bias/v*
_output_shapes
: *
dtype0

Adam/dense_27/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *'
shared_nameAdam/dense_27/kernel/v

*Adam/dense_27/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_27/kernel/v*
_output_shapes

: *
dtype0

Adam/dense_27/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_27/bias/v
y
(Adam/dense_27/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_27/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
ΆΊ
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*πΉ
valueεΉBαΉ BΩΉ
Ζ
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer-2
layer_with_weights-2
layer-3
layer_with_weights-3
layer-4
layer-5
layer_with_weights-4
layer-6
layer_with_weights-5
layer-7
	layer-8

layer_with_weights-6

layer-9
layer_with_weights-7
layer-10
layer-11
layer_with_weights-8
layer-12
layer_with_weights-9
layer-13
layer-14
layer_with_weights-10
layer-15
layer_with_weights-11
layer-16
layer-17
layer_with_weights-12
layer-18
	optimizer
regularization_losses
	variables
trainable_variables
	keras_api

signatures
γ
renorm_clipping
axis
	gamma
beta
moving_mean
moving_variance
 moving_stddev
!renorm_mean
"renorm_stddev
#regularization_losses
$	variables
%trainable_variables
&	keras_api
h

'kernel
(bias
)regularization_losses
*	variables
+trainable_variables
,	keras_api
R
-regularization_losses
.	variables
/trainable_variables
0	keras_api
γ
1renorm_clipping
2axis
	3gamma
4beta
5moving_mean
6moving_variance
7moving_stddev
8renorm_mean
9renorm_stddev
:regularization_losses
;	variables
<trainable_variables
=	keras_api
h

>kernel
?bias
@regularization_losses
A	variables
Btrainable_variables
C	keras_api
R
Dregularization_losses
E	variables
Ftrainable_variables
G	keras_api
γ
Hrenorm_clipping
Iaxis
	Jgamma
Kbeta
Lmoving_mean
Mmoving_variance
Nmoving_stddev
Orenorm_mean
Prenorm_stddev
Qregularization_losses
R	variables
Strainable_variables
T	keras_api
h

Ukernel
Vbias
Wregularization_losses
X	variables
Ytrainable_variables
Z	keras_api
R
[regularization_losses
\	variables
]trainable_variables
^	keras_api
γ
_renorm_clipping
`axis
	agamma
bbeta
cmoving_mean
dmoving_variance
emoving_stddev
frenorm_mean
grenorm_stddev
hregularization_losses
i	variables
jtrainable_variables
k	keras_api
h

lkernel
mbias
nregularization_losses
o	variables
ptrainable_variables
q	keras_api
R
rregularization_losses
s	variables
ttrainable_variables
u	keras_api
ζ
vrenorm_clipping
waxis
	xgamma
ybeta
zmoving_mean
{moving_variance
|moving_stddev
}renorm_mean
~renorm_stddev
regularization_losses
	variables
trainable_variables
	keras_api
n
kernel
	bias
regularization_losses
	variables
trainable_variables
	keras_api
V
regularization_losses
	variables
trainable_variables
	keras_api
π
renorm_clipping
	axis

gamma
	beta
moving_mean
moving_variance
moving_stddev
renorm_mean
renorm_stddev
regularization_losses
	variables
trainable_variables
	keras_api
n
kernel
	bias
regularization_losses
	variables
trainable_variables
	keras_api
V
 regularization_losses
‘	variables
’trainable_variables
£	keras_api
n
€kernel
	₯bias
¦regularization_losses
§	variables
¨trainable_variables
©	keras_api
έ
	ͺiter
«beta_1
¬beta_2

­decay
?learning_ratemm'm (m‘3m’4m£>m€?m₯Jm¦Km§Um¨Vm©amͺbm«lm¬mm­xm?ym―	m°	m±	m²	m³	m΄	m΅	€mΆ	₯m·vΈvΉ'vΊ(v»3vΌ4v½>vΎ?vΏJvΐKvΑUvΒVvΓavΔbvΕlvΖmvΗxvΘyvΙ	vΚ	vΛ	vΜ	vΝ	vΞ	vΟ	€vΠ	₯vΡ
 
Γ
0
1
2
3
 4
!5
"6
'7
(8
39
410
511
612
713
814
915
>16
?17
J18
K19
L20
M21
N22
O23
P24
U25
V26
a27
b28
c29
d30
e31
f32
g33
l34
m35
x36
y37
z38
{39
|40
}41
~42
43
44
45
46
47
48
49
50
51
52
53
€54
₯55
Ξ
0
1
'2
(3
34
45
>6
?7
J8
K9
U10
V11
a12
b13
l14
m15
x16
y17
18
19
20
21
22
23
€24
₯25
²
―non_trainable_variables
°layer_metrics
regularization_losses
±layers
	variables
trainable_variables
 ²layer_regularization_losses
³metrics
 
 
 
fd
VARIABLE_VALUEbatch_normalization_4/gamma5layer_with_weights-0/gamma/.ATTRIBUTES/VARIABLE_VALUE
db
VARIABLE_VALUEbatch_normalization_4/beta4layer_with_weights-0/beta/.ATTRIBUTES/VARIABLE_VALUE
rp
VARIABLE_VALUE!batch_normalization_4/moving_mean;layer_with_weights-0/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE%batch_normalization_4/moving_variance?layer_with_weights-0/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUE#batch_normalization_4/moving_stddev=layer_with_weights-0/moving_stddev/.ATTRIBUTES/VARIABLE_VALUE
rp
VARIABLE_VALUE!batch_normalization_4/renorm_mean;layer_with_weights-0/renorm_mean/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUE#batch_normalization_4/renorm_stddev=layer_with_weights-0/renorm_stddev/.ATTRIBUTES/VARIABLE_VALUE
 
1
0
1
2
3
 4
!5
"6

0
1
²
΄non_trainable_variables
΅layer_metrics
#regularization_losses
Άlayers
$	variables
%trainable_variables
 ·layer_regularization_losses
Έmetrics
[Y
VARIABLE_VALUEdense_21/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_21/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE
 

'0
(1

'0
(1
²
Ήnon_trainable_variables
Ίlayer_metrics
)regularization_losses
»layers
*	variables
+trainable_variables
 Όlayer_regularization_losses
½metrics
 
 
 
²
Ύnon_trainable_variables
Ώlayer_metrics
-regularization_losses
ΐlayers
.	variables
/trainable_variables
 Αlayer_regularization_losses
Βmetrics
 
 
fd
VARIABLE_VALUEbatch_normalization_5/gamma5layer_with_weights-2/gamma/.ATTRIBUTES/VARIABLE_VALUE
db
VARIABLE_VALUEbatch_normalization_5/beta4layer_with_weights-2/beta/.ATTRIBUTES/VARIABLE_VALUE
rp
VARIABLE_VALUE!batch_normalization_5/moving_mean;layer_with_weights-2/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE%batch_normalization_5/moving_variance?layer_with_weights-2/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUE#batch_normalization_5/moving_stddev=layer_with_weights-2/moving_stddev/.ATTRIBUTES/VARIABLE_VALUE
rp
VARIABLE_VALUE!batch_normalization_5/renorm_mean;layer_with_weights-2/renorm_mean/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUE#batch_normalization_5/renorm_stddev=layer_with_weights-2/renorm_stddev/.ATTRIBUTES/VARIABLE_VALUE
 
1
30
41
52
63
74
85
96

30
41
²
Γnon_trainable_variables
Δlayer_metrics
:regularization_losses
Εlayers
;	variables
<trainable_variables
 Ζlayer_regularization_losses
Ηmetrics
[Y
VARIABLE_VALUEdense_22/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_22/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
 

>0
?1

>0
?1
²
Θnon_trainable_variables
Ιlayer_metrics
@regularization_losses
Κlayers
A	variables
Btrainable_variables
 Λlayer_regularization_losses
Μmetrics
 
 
 
²
Νnon_trainable_variables
Ξlayer_metrics
Dregularization_losses
Οlayers
E	variables
Ftrainable_variables
 Πlayer_regularization_losses
Ρmetrics
 
 
fd
VARIABLE_VALUEbatch_normalization_6/gamma5layer_with_weights-4/gamma/.ATTRIBUTES/VARIABLE_VALUE
db
VARIABLE_VALUEbatch_normalization_6/beta4layer_with_weights-4/beta/.ATTRIBUTES/VARIABLE_VALUE
rp
VARIABLE_VALUE!batch_normalization_6/moving_mean;layer_with_weights-4/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE%batch_normalization_6/moving_variance?layer_with_weights-4/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUE#batch_normalization_6/moving_stddev=layer_with_weights-4/moving_stddev/.ATTRIBUTES/VARIABLE_VALUE
rp
VARIABLE_VALUE!batch_normalization_6/renorm_mean;layer_with_weights-4/renorm_mean/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUE#batch_normalization_6/renorm_stddev=layer_with_weights-4/renorm_stddev/.ATTRIBUTES/VARIABLE_VALUE
 
1
J0
K1
L2
M3
N4
O5
P6

J0
K1
²
?non_trainable_variables
Σlayer_metrics
Qregularization_losses
Τlayers
R	variables
Strainable_variables
 Υlayer_regularization_losses
Φmetrics
[Y
VARIABLE_VALUEdense_23/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_23/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE
 

U0
V1

U0
V1
²
Χnon_trainable_variables
Ψlayer_metrics
Wregularization_losses
Ωlayers
X	variables
Ytrainable_variables
 Ϊlayer_regularization_losses
Ϋmetrics
 
 
 
²
άnon_trainable_variables
έlayer_metrics
[regularization_losses
ήlayers
\	variables
]trainable_variables
 ίlayer_regularization_losses
ΰmetrics
 
 
fd
VARIABLE_VALUEbatch_normalization_7/gamma5layer_with_weights-6/gamma/.ATTRIBUTES/VARIABLE_VALUE
db
VARIABLE_VALUEbatch_normalization_7/beta4layer_with_weights-6/beta/.ATTRIBUTES/VARIABLE_VALUE
rp
VARIABLE_VALUE!batch_normalization_7/moving_mean;layer_with_weights-6/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE%batch_normalization_7/moving_variance?layer_with_weights-6/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUE#batch_normalization_7/moving_stddev=layer_with_weights-6/moving_stddev/.ATTRIBUTES/VARIABLE_VALUE
rp
VARIABLE_VALUE!batch_normalization_7/renorm_mean;layer_with_weights-6/renorm_mean/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUE#batch_normalization_7/renorm_stddev=layer_with_weights-6/renorm_stddev/.ATTRIBUTES/VARIABLE_VALUE
 
1
a0
b1
c2
d3
e4
f5
g6

a0
b1
²
αnon_trainable_variables
βlayer_metrics
hregularization_losses
γlayers
i	variables
jtrainable_variables
 δlayer_regularization_losses
εmetrics
[Y
VARIABLE_VALUEdense_24/kernel6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_24/bias4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUE
 

l0
m1

l0
m1
²
ζnon_trainable_variables
ηlayer_metrics
nregularization_losses
θlayers
o	variables
ptrainable_variables
 ιlayer_regularization_losses
κmetrics
 
 
 
²
λnon_trainable_variables
μlayer_metrics
rregularization_losses
νlayers
s	variables
ttrainable_variables
 ξlayer_regularization_losses
οmetrics
 
 
fd
VARIABLE_VALUEbatch_normalization_8/gamma5layer_with_weights-8/gamma/.ATTRIBUTES/VARIABLE_VALUE
db
VARIABLE_VALUEbatch_normalization_8/beta4layer_with_weights-8/beta/.ATTRIBUTES/VARIABLE_VALUE
rp
VARIABLE_VALUE!batch_normalization_8/moving_mean;layer_with_weights-8/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE%batch_normalization_8/moving_variance?layer_with_weights-8/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUE#batch_normalization_8/moving_stddev=layer_with_weights-8/moving_stddev/.ATTRIBUTES/VARIABLE_VALUE
rp
VARIABLE_VALUE!batch_normalization_8/renorm_mean;layer_with_weights-8/renorm_mean/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUE#batch_normalization_8/renorm_stddev=layer_with_weights-8/renorm_stddev/.ATTRIBUTES/VARIABLE_VALUE
 
1
x0
y1
z2
{3
|4
}5
~6

x0
y1
΄
πnon_trainable_variables
ρlayer_metrics
regularization_losses
ςlayers
	variables
trainable_variables
 σlayer_regularization_losses
τmetrics
[Y
VARIABLE_VALUEdense_25/kernel6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_25/bias4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

0
1
΅
υnon_trainable_variables
φlayer_metrics
regularization_losses
χlayers
	variables
trainable_variables
 ψlayer_regularization_losses
ωmetrics
 
 
 
΅
ϊnon_trainable_variables
ϋlayer_metrics
regularization_losses
όlayers
	variables
trainable_variables
 ύlayer_regularization_losses
ώmetrics
 
 
ge
VARIABLE_VALUEbatch_normalization_9/gamma6layer_with_weights-10/gamma/.ATTRIBUTES/VARIABLE_VALUE
ec
VARIABLE_VALUEbatch_normalization_9/beta5layer_with_weights-10/beta/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUE!batch_normalization_9/moving_mean<layer_with_weights-10/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUE%batch_normalization_9/moving_variance@layer_with_weights-10/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUE#batch_normalization_9/moving_stddev>layer_with_weights-10/moving_stddev/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUE!batch_normalization_9/renorm_mean<layer_with_weights-10/renorm_mean/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUE#batch_normalization_9/renorm_stddev>layer_with_weights-10/renorm_stddev/.ATTRIBUTES/VARIABLE_VALUE
 
8
0
1
2
3
4
5
6

0
1
΅
?non_trainable_variables
layer_metrics
regularization_losses
layers
	variables
trainable_variables
 layer_regularization_losses
metrics
\Z
VARIABLE_VALUEdense_26/kernel7layer_with_weights-11/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_26/bias5layer_with_weights-11/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

0
1
΅
non_trainable_variables
layer_metrics
regularization_losses
layers
	variables
trainable_variables
 layer_regularization_losses
metrics
 
 
 
΅
non_trainable_variables
layer_metrics
 regularization_losses
layers
‘	variables
’trainable_variables
 layer_regularization_losses
metrics
\Z
VARIABLE_VALUEdense_27/kernel7layer_with_weights-12/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_27/bias5layer_with_weights-12/bias/.ATTRIBUTES/VARIABLE_VALUE
 

€0
₯1

€0
₯1
΅
non_trainable_variables
layer_metrics
¦regularization_losses
layers
§	variables
¨trainable_variables
 layer_regularization_losses
metrics
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
λ
0
1
 2
!3
"4
55
66
77
88
99
L10
M11
N12
O13
P14
c15
d16
e17
f18
g19
z20
{21
|22
}23
~24
25
26
27
28
29
 

0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15
16
17
18
 

0
1
#
0
1
 2
!3
"4
 
 
 
 
 
 
 
 
 
 
 
 
 
 
#
50
61
72
83
94
 
 
 
 
 
 
 
 
 
 
 
 
 
 
#
L0
M1
N2
O3
P4
 
 
 
 
 
 
 
 
 
 
 
 
 
 
#
c0
d1
e2
f3
g4
 
 
 
 
 
 
 
 
 
 
 
 
 
 
#
z0
{1
|2
}3
~4
 
 
 
 
 
 
 
 
 
 
 
 
 
 
(
0
1
2
3
4
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
8

total

count
	variables
	keras_api
I

total

count

_fn_kwargs
	variables
	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

0
1

	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

	variables

VARIABLE_VALUE"Adam/batch_normalization_4/gamma/mQlayer_with_weights-0/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE!Adam/batch_normalization_4/beta/mPlayer_with_weights-0/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_21/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_21/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE"Adam/batch_normalization_5/gamma/mQlayer_with_weights-2/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE!Adam/batch_normalization_5/beta/mPlayer_with_weights-2/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_22/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_22/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE"Adam/batch_normalization_6/gamma/mQlayer_with_weights-4/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE!Adam/batch_normalization_6/beta/mPlayer_with_weights-4/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_23/kernel/mRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_23/bias/mPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE"Adam/batch_normalization_7/gamma/mQlayer_with_weights-6/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE!Adam/batch_normalization_7/beta/mPlayer_with_weights-6/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_24/kernel/mRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_24/bias/mPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE"Adam/batch_normalization_8/gamma/mQlayer_with_weights-8/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE!Adam/batch_normalization_8/beta/mPlayer_with_weights-8/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_25/kernel/mRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_25/bias/mPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE"Adam/batch_normalization_9/gamma/mRlayer_with_weights-10/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE!Adam/batch_normalization_9/beta/mQlayer_with_weights-10/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_26/kernel/mSlayer_with_weights-11/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_26/bias/mQlayer_with_weights-11/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_27/kernel/mSlayer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_27/bias/mQlayer_with_weights-12/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE"Adam/batch_normalization_4/gamma/vQlayer_with_weights-0/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE!Adam/batch_normalization_4/beta/vPlayer_with_weights-0/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_21/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_21/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE"Adam/batch_normalization_5/gamma/vQlayer_with_weights-2/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE!Adam/batch_normalization_5/beta/vPlayer_with_weights-2/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_22/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_22/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE"Adam/batch_normalization_6/gamma/vQlayer_with_weights-4/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE!Adam/batch_normalization_6/beta/vPlayer_with_weights-4/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_23/kernel/vRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_23/bias/vPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE"Adam/batch_normalization_7/gamma/vQlayer_with_weights-6/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE!Adam/batch_normalization_7/beta/vPlayer_with_weights-6/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_24/kernel/vRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_24/bias/vPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE"Adam/batch_normalization_8/gamma/vQlayer_with_weights-8/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE!Adam/batch_normalization_8/beta/vPlayer_with_weights-8/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_25/kernel/vRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_25/bias/vPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE"Adam/batch_normalization_9/gamma/vRlayer_with_weights-10/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE!Adam/batch_normalization_9/beta/vQlayer_with_weights-10/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_26/kernel/vSlayer_with_weights-11/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_26/bias/vQlayer_with_weights-11/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_27/kernel/vSlayer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_27/bias/vQlayer_with_weights-12/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
z
serving_default_input_3Placeholder*'
_output_shapes
:?????????	*
dtype0*
shape:?????????	
υ

StatefulPartitionedCallStatefulPartitionedCallserving_default_input_3%batch_normalization_4/moving_variancebatch_normalization_4/gamma!batch_normalization_4/moving_meanbatch_normalization_4/betadense_21/kerneldense_21/bias%batch_normalization_5/moving_variancebatch_normalization_5/gamma!batch_normalization_5/moving_meanbatch_normalization_5/betadense_22/kerneldense_22/bias%batch_normalization_6/moving_variancebatch_normalization_6/gamma!batch_normalization_6/moving_meanbatch_normalization_6/betadense_23/kerneldense_23/bias%batch_normalization_7/moving_variancebatch_normalization_7/gamma!batch_normalization_7/moving_meanbatch_normalization_7/betadense_24/kerneldense_24/bias%batch_normalization_8/moving_variancebatch_normalization_8/gamma!batch_normalization_8/moving_meanbatch_normalization_8/betadense_25/kerneldense_25/bias%batch_normalization_9/moving_variancebatch_normalization_9/gamma!batch_normalization_9/moving_meanbatch_normalization_9/betadense_26/kerneldense_26/biasdense_27/kerneldense_27/bias*2
Tin+
)2'*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*H
_read_only_resource_inputs*
(&	
 !"#$%&*2
config_proto" 

CPU

GPU2*0,1J 8 *-
f(R&
$__inference_signature_wrapper_599957
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
χ.
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename/batch_normalization_4/gamma/Read/ReadVariableOp.batch_normalization_4/beta/Read/ReadVariableOp5batch_normalization_4/moving_mean/Read/ReadVariableOp9batch_normalization_4/moving_variance/Read/ReadVariableOp7batch_normalization_4/moving_stddev/Read/ReadVariableOp5batch_normalization_4/renorm_mean/Read/ReadVariableOp7batch_normalization_4/renorm_stddev/Read/ReadVariableOp#dense_21/kernel/Read/ReadVariableOp!dense_21/bias/Read/ReadVariableOp/batch_normalization_5/gamma/Read/ReadVariableOp.batch_normalization_5/beta/Read/ReadVariableOp5batch_normalization_5/moving_mean/Read/ReadVariableOp9batch_normalization_5/moving_variance/Read/ReadVariableOp7batch_normalization_5/moving_stddev/Read/ReadVariableOp5batch_normalization_5/renorm_mean/Read/ReadVariableOp7batch_normalization_5/renorm_stddev/Read/ReadVariableOp#dense_22/kernel/Read/ReadVariableOp!dense_22/bias/Read/ReadVariableOp/batch_normalization_6/gamma/Read/ReadVariableOp.batch_normalization_6/beta/Read/ReadVariableOp5batch_normalization_6/moving_mean/Read/ReadVariableOp9batch_normalization_6/moving_variance/Read/ReadVariableOp7batch_normalization_6/moving_stddev/Read/ReadVariableOp5batch_normalization_6/renorm_mean/Read/ReadVariableOp7batch_normalization_6/renorm_stddev/Read/ReadVariableOp#dense_23/kernel/Read/ReadVariableOp!dense_23/bias/Read/ReadVariableOp/batch_normalization_7/gamma/Read/ReadVariableOp.batch_normalization_7/beta/Read/ReadVariableOp5batch_normalization_7/moving_mean/Read/ReadVariableOp9batch_normalization_7/moving_variance/Read/ReadVariableOp7batch_normalization_7/moving_stddev/Read/ReadVariableOp5batch_normalization_7/renorm_mean/Read/ReadVariableOp7batch_normalization_7/renorm_stddev/Read/ReadVariableOp#dense_24/kernel/Read/ReadVariableOp!dense_24/bias/Read/ReadVariableOp/batch_normalization_8/gamma/Read/ReadVariableOp.batch_normalization_8/beta/Read/ReadVariableOp5batch_normalization_8/moving_mean/Read/ReadVariableOp9batch_normalization_8/moving_variance/Read/ReadVariableOp7batch_normalization_8/moving_stddev/Read/ReadVariableOp5batch_normalization_8/renorm_mean/Read/ReadVariableOp7batch_normalization_8/renorm_stddev/Read/ReadVariableOp#dense_25/kernel/Read/ReadVariableOp!dense_25/bias/Read/ReadVariableOp/batch_normalization_9/gamma/Read/ReadVariableOp.batch_normalization_9/beta/Read/ReadVariableOp5batch_normalization_9/moving_mean/Read/ReadVariableOp9batch_normalization_9/moving_variance/Read/ReadVariableOp7batch_normalization_9/moving_stddev/Read/ReadVariableOp5batch_normalization_9/renorm_mean/Read/ReadVariableOp7batch_normalization_9/renorm_stddev/Read/ReadVariableOp#dense_26/kernel/Read/ReadVariableOp!dense_26/bias/Read/ReadVariableOp#dense_27/kernel/Read/ReadVariableOp!dense_27/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp6Adam/batch_normalization_4/gamma/m/Read/ReadVariableOp5Adam/batch_normalization_4/beta/m/Read/ReadVariableOp*Adam/dense_21/kernel/m/Read/ReadVariableOp(Adam/dense_21/bias/m/Read/ReadVariableOp6Adam/batch_normalization_5/gamma/m/Read/ReadVariableOp5Adam/batch_normalization_5/beta/m/Read/ReadVariableOp*Adam/dense_22/kernel/m/Read/ReadVariableOp(Adam/dense_22/bias/m/Read/ReadVariableOp6Adam/batch_normalization_6/gamma/m/Read/ReadVariableOp5Adam/batch_normalization_6/beta/m/Read/ReadVariableOp*Adam/dense_23/kernel/m/Read/ReadVariableOp(Adam/dense_23/bias/m/Read/ReadVariableOp6Adam/batch_normalization_7/gamma/m/Read/ReadVariableOp5Adam/batch_normalization_7/beta/m/Read/ReadVariableOp*Adam/dense_24/kernel/m/Read/ReadVariableOp(Adam/dense_24/bias/m/Read/ReadVariableOp6Adam/batch_normalization_8/gamma/m/Read/ReadVariableOp5Adam/batch_normalization_8/beta/m/Read/ReadVariableOp*Adam/dense_25/kernel/m/Read/ReadVariableOp(Adam/dense_25/bias/m/Read/ReadVariableOp6Adam/batch_normalization_9/gamma/m/Read/ReadVariableOp5Adam/batch_normalization_9/beta/m/Read/ReadVariableOp*Adam/dense_26/kernel/m/Read/ReadVariableOp(Adam/dense_26/bias/m/Read/ReadVariableOp*Adam/dense_27/kernel/m/Read/ReadVariableOp(Adam/dense_27/bias/m/Read/ReadVariableOp6Adam/batch_normalization_4/gamma/v/Read/ReadVariableOp5Adam/batch_normalization_4/beta/v/Read/ReadVariableOp*Adam/dense_21/kernel/v/Read/ReadVariableOp(Adam/dense_21/bias/v/Read/ReadVariableOp6Adam/batch_normalization_5/gamma/v/Read/ReadVariableOp5Adam/batch_normalization_5/beta/v/Read/ReadVariableOp*Adam/dense_22/kernel/v/Read/ReadVariableOp(Adam/dense_22/bias/v/Read/ReadVariableOp6Adam/batch_normalization_6/gamma/v/Read/ReadVariableOp5Adam/batch_normalization_6/beta/v/Read/ReadVariableOp*Adam/dense_23/kernel/v/Read/ReadVariableOp(Adam/dense_23/bias/v/Read/ReadVariableOp6Adam/batch_normalization_7/gamma/v/Read/ReadVariableOp5Adam/batch_normalization_7/beta/v/Read/ReadVariableOp*Adam/dense_24/kernel/v/Read/ReadVariableOp(Adam/dense_24/bias/v/Read/ReadVariableOp6Adam/batch_normalization_8/gamma/v/Read/ReadVariableOp5Adam/batch_normalization_8/beta/v/Read/ReadVariableOp*Adam/dense_25/kernel/v/Read/ReadVariableOp(Adam/dense_25/bias/v/Read/ReadVariableOp6Adam/batch_normalization_9/gamma/v/Read/ReadVariableOp5Adam/batch_normalization_9/beta/v/Read/ReadVariableOp*Adam/dense_26/kernel/v/Read/ReadVariableOp(Adam/dense_26/bias/v/Read/ReadVariableOp*Adam/dense_27/kernel/v/Read/ReadVariableOp(Adam/dense_27/bias/v/Read/ReadVariableOpConst*
Tin{
y2w	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8 *(
f#R!
__inference__traced_save_602299
Ξ
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamebatch_normalization_4/gammabatch_normalization_4/beta!batch_normalization_4/moving_mean%batch_normalization_4/moving_variance#batch_normalization_4/moving_stddev!batch_normalization_4/renorm_mean#batch_normalization_4/renorm_stddevdense_21/kerneldense_21/biasbatch_normalization_5/gammabatch_normalization_5/beta!batch_normalization_5/moving_mean%batch_normalization_5/moving_variance#batch_normalization_5/moving_stddev!batch_normalization_5/renorm_mean#batch_normalization_5/renorm_stddevdense_22/kerneldense_22/biasbatch_normalization_6/gammabatch_normalization_6/beta!batch_normalization_6/moving_mean%batch_normalization_6/moving_variance#batch_normalization_6/moving_stddev!batch_normalization_6/renorm_mean#batch_normalization_6/renorm_stddevdense_23/kerneldense_23/biasbatch_normalization_7/gammabatch_normalization_7/beta!batch_normalization_7/moving_mean%batch_normalization_7/moving_variance#batch_normalization_7/moving_stddev!batch_normalization_7/renorm_mean#batch_normalization_7/renorm_stddevdense_24/kerneldense_24/biasbatch_normalization_8/gammabatch_normalization_8/beta!batch_normalization_8/moving_mean%batch_normalization_8/moving_variance#batch_normalization_8/moving_stddev!batch_normalization_8/renorm_mean#batch_normalization_8/renorm_stddevdense_25/kerneldense_25/biasbatch_normalization_9/gammabatch_normalization_9/beta!batch_normalization_9/moving_mean%batch_normalization_9/moving_variance#batch_normalization_9/moving_stddev!batch_normalization_9/renorm_mean#batch_normalization_9/renorm_stddevdense_26/kerneldense_26/biasdense_27/kerneldense_27/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1"Adam/batch_normalization_4/gamma/m!Adam/batch_normalization_4/beta/mAdam/dense_21/kernel/mAdam/dense_21/bias/m"Adam/batch_normalization_5/gamma/m!Adam/batch_normalization_5/beta/mAdam/dense_22/kernel/mAdam/dense_22/bias/m"Adam/batch_normalization_6/gamma/m!Adam/batch_normalization_6/beta/mAdam/dense_23/kernel/mAdam/dense_23/bias/m"Adam/batch_normalization_7/gamma/m!Adam/batch_normalization_7/beta/mAdam/dense_24/kernel/mAdam/dense_24/bias/m"Adam/batch_normalization_8/gamma/m!Adam/batch_normalization_8/beta/mAdam/dense_25/kernel/mAdam/dense_25/bias/m"Adam/batch_normalization_9/gamma/m!Adam/batch_normalization_9/beta/mAdam/dense_26/kernel/mAdam/dense_26/bias/mAdam/dense_27/kernel/mAdam/dense_27/bias/m"Adam/batch_normalization_4/gamma/v!Adam/batch_normalization_4/beta/vAdam/dense_21/kernel/vAdam/dense_21/bias/v"Adam/batch_normalization_5/gamma/v!Adam/batch_normalization_5/beta/vAdam/dense_22/kernel/vAdam/dense_22/bias/v"Adam/batch_normalization_6/gamma/v!Adam/batch_normalization_6/beta/vAdam/dense_23/kernel/vAdam/dense_23/bias/v"Adam/batch_normalization_7/gamma/v!Adam/batch_normalization_7/beta/vAdam/dense_24/kernel/vAdam/dense_24/bias/v"Adam/batch_normalization_8/gamma/v!Adam/batch_normalization_8/beta/vAdam/dense_25/kernel/vAdam/dense_25/bias/v"Adam/batch_normalization_9/gamma/v!Adam/batch_normalization_9/beta/vAdam/dense_26/kernel/vAdam/dense_26/bias/vAdam/dense_27/kernel/vAdam/dense_27/bias/v*
Tinz
x2v*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8 *+
f&R$
"__inference__traced_restore_602660°%
φ

)__inference_dense_27_layer_call_fn_601925

inputs
unknown: 
	unknown_0:
identity’StatefulPartitionedCallω
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8 *M
fHRF
D__inference_dense_27_layer_call_and_return_conditional_losses_5988902
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:????????? : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs

ψ
D__inference_dense_24_layer_call_and_return_conditional_losses_598800

inputs2
matmul_readvariableop_resource:
.
biasadd_readvariableop_resource:	
identity’BiasAdd/ReadVariableOp’MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:?????????2
Relun
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:?????????2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:?????????
 
_user_specified_nameinputs

υ
D__inference_dense_26_layer_call_and_return_conditional_losses_598866

inputs0
matmul_readvariableop_resource:@ -
biasadd_readvariableop_resource: 
identity’BiasAdd/ReadVariableOp’MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@ *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:????????? 2
Relum
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
΄
d
E__inference_dropout_6_layer_call_and_return_conditional_losses_599105

inputs
identityc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nΫΆ?2
dropout/Constt
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:?????????2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape΅
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:?????????*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2
dropout/GreaterEqual/yΏ
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:?????????2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:?????????2
dropout/Cast{
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:?????????2
dropout/Mul_1f
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:?????????:P L
(
_output_shapes
:?????????
 
_user_specified_nameinputs
Z
Ζ
Q__inference_batch_normalization_8_layer_call_and_return_conditional_losses_601650

inputs.
maximum_readvariableop_resource:	*
sub_readvariableop_resource:	*
mul_readvariableop_resource:	,
add_1_readvariableop_resource:	8
)assignmovingavg_2_readvariableop_resource:	8
)assignmovingavg_3_readvariableop_resource:	&
assignnewvalue_resource:	

identity_6’AssignMovingAvg’AssignMovingAvg/ReadVariableOp’AssignMovingAvg_1’ AssignMovingAvg_1/ReadVariableOp’AssignMovingAvg_2’ AssignMovingAvg_2/ReadVariableOp’AssignMovingAvg_3’ AssignMovingAvg_3/ReadVariableOp’AssignNewValue’Maximum/ReadVariableOp’ReadVariableOp’add_1/ReadVariableOp’mul/ReadVariableOp’mul_1/ReadVariableOp’mul_2/ReadVariableOp’sub/ReadVariableOp
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2 
moments/mean/reduction_indices
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	*
	keep_dims(2
moments/mean}
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes
:	2
moments/StopGradient₯
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*(
_output_shapes
:?????????2
moments/SquaredDifference
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2$
"moments/variance/reduction_indices³
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	*
	keep_dims(2
moments/variance
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 2
moments/Squeeze
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 2
moments/Squeeze_1S
add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
add/ye
addAddV2moments/Squeeze_1:output:0add/y:output:0*
T0*
_output_shapes	
:2
addC
SqrtSqrtadd:z:0*
T0*
_output_shapes	
:2
SqrtY
Sqrt_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *o:2

Sqrt_1/xL
Sqrt_1SqrtSqrt_1/x:output:0*
T0*
_output_shapes
: 2
Sqrt_1
Maximum/ReadVariableOpReadVariableOpmaximum_readvariableop_resource*
_output_shapes	
:*
dtype02
Maximum/ReadVariableOpo
MaximumMaximumMaximum/ReadVariableOp:value:0
Sqrt_1:y:0*
T0*
_output_shapes	
:2	
MaximumZ
truedivRealDivSqrt:y:0Maximum:z:0*
T0*
_output_shapes	
:2	
truediv
sub/ReadVariableOpReadVariableOpsub_readvariableop_resource*
_output_shapes	
:*
dtype02
sub/ReadVariableOpm
subSubmoments/Squeeze:output:0sub/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
sub]
	truediv_1RealDivsub:z:0Maximum:z:0*
T0*
_output_shapes	
:2
	truediv_1v
IdentityIdentitymoments/Squeeze:output:0^truediv
^truediv_1*
T0*
_output_shapes	
:2

Identityj

Identity_1IdentitySqrt:y:0^truediv
^truediv_1*
T0*
_output_shapes	
:2

Identity_1]

Identity_2IdentityIdentity:output:0*
T0*
_output_shapes	
:2

Identity_2s
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
Χ#<2
AssignMovingAvg/decay
AssignMovingAvg/ReadVariableOpReadVariableOpsub_readvariableop_resource*
_output_shapes	
:*
dtype02 
AssignMovingAvg/ReadVariableOp
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0Identity_2:output:0*
T0*
_output_shapes	
:2
AssignMovingAvg/sub
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:2
AssignMovingAvg/mulΘ
AssignMovingAvgAssignSubVariableOpsub_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp^sub/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_

Identity_3IdentityIdentity_1:output:0*
T0*
_output_shapes	
:2

Identity_3w
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
Χ#<2
AssignMovingAvg_1/decay‘
 AssignMovingAvg_1/ReadVariableOpReadVariableOpmaximum_readvariableop_resource*
_output_shapes	
:*
dtype02"
 AssignMovingAvg_1/ReadVariableOp
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0Identity_3:output:0*
T0*
_output_shapes	
:2
AssignMovingAvg_1/sub
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:2
AssignMovingAvg_1/mulΨ
AssignMovingAvg_1AssignSubVariableOpmaximum_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp^Maximum/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_1

Identity_4IdentityIdentity:output:0^AssignMovingAvg^AssignMovingAvg_1*
T0*
_output_shapes	
:2

Identity_4

Identity_5Identitymoments/Squeeze_1:output:0^AssignMovingAvg^AssignMovingAvg_1*
T0*
_output_shapes	
:2

Identity_5W
renorm_rStopGradienttruediv:z:0*
T0*
_output_shapes	
:2

renorm_rY
renorm_dStopGradienttruediv_1:z:0*
T0*
_output_shapes	
:2

renorm_d
mul/ReadVariableOpReadVariableOpmul_readvariableop_resource*
_output_shapes	
:*
dtype02
mul/ReadVariableOpf
mulMulrenorm_r:output:0mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
mul
mul_1/ReadVariableOpReadVariableOpmul_readvariableop_resource*
_output_shapes	
:*
dtype02
mul_1/ReadVariableOpl
mul_1Mulrenorm_d:output:0mul_1/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
mul_1
add_1/ReadVariableOpReadVariableOpadd_1_readvariableop_resource*
_output_shapes	
:*
dtype02
add_1/ReadVariableOpf
add_1AddV2	mul_1:z:0add_1/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
add_1w
AssignMovingAvg_2/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
Χ#<2
AssignMovingAvg_2/decay«
 AssignMovingAvg_2/ReadVariableOpReadVariableOp)assignmovingavg_2_readvariableop_resource*
_output_shapes	
:*
dtype02"
 AssignMovingAvg_2/ReadVariableOp
AssignMovingAvg_2/subSub(AssignMovingAvg_2/ReadVariableOp:value:0Identity_4:output:0*
T0*
_output_shapes	
:2
AssignMovingAvg_2/sub
AssignMovingAvg_2/mulMulAssignMovingAvg_2/sub:z:0 AssignMovingAvg_2/decay:output:0*
T0*
_output_shapes	
:2
AssignMovingAvg_2/mulΙ
AssignMovingAvg_2AssignSubVariableOp)assignmovingavg_2_readvariableop_resourceAssignMovingAvg_2/mul:z:0!^AssignMovingAvg_2/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_2W
add_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2	
add_2/yd
add_2AddV2Identity_5:output:0add_2/y:output:0*
T0*
_output_shapes	
:2
add_2I
Sqrt_2Sqrt	add_2:z:0*
T0*
_output_shapes	
:2
Sqrt_2w
AssignMovingAvg_3/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
Χ#<2
AssignMovingAvg_3/decay«
 AssignMovingAvg_3/ReadVariableOpReadVariableOp)assignmovingavg_3_readvariableop_resource*
_output_shapes	
:*
dtype02"
 AssignMovingAvg_3/ReadVariableOp
AssignMovingAvg_3/subSub(AssignMovingAvg_3/ReadVariableOp:value:0
Sqrt_2:y:0*
T0*
_output_shapes	
:2
AssignMovingAvg_3/sub
AssignMovingAvg_3/mulMulAssignMovingAvg_3/sub:z:0 AssignMovingAvg_3/decay:output:0*
T0*
_output_shapes	
:2
AssignMovingAvg_3/mulΙ
AssignMovingAvg_3AssignSubVariableOp)assignmovingavg_3_readvariableop_resourceAssignMovingAvg_3/mul:z:0!^AssignMovingAvg_3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_3
ReadVariableOpReadVariableOp)assignmovingavg_3_readvariableop_resource^AssignMovingAvg_3*
_output_shapes	
:*
dtype02
ReadVariableOp§
mul_2/ReadVariableOpReadVariableOp)assignmovingavg_3_readvariableop_resource^AssignMovingAvg_3*
_output_shapes	
:*
dtype02
mul_2/ReadVariableOpq
mul_2MulReadVariableOp:value:0mul_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
mul_2W
sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2	
sub_1/yX
sub_1Sub	mul_2:z:0sub_1/y:output:0*
T0*
_output_shapes	
:2
sub_1E
ReluRelu	sub_1:z:0*
T0*
_output_shapes	
:2
Relu
AssignNewValueAssignVariableOpassignnewvalue_resourceRelu:activations:0*
_output_shapes
 *
dtype02
AssignNewValueg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batchnorm/add/y
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:2
batchnorm/Rsqrti
batchnorm/mulMulbatchnorm/Rsqrt:y:0mul:z:0*
T0*
_output_shapes	
:2
batchnorm/mulw
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:?????????2
batchnorm/mul_1|
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:2
batchnorm/mul_2k
batchnorm/subSub	add_1:z:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:2
batchnorm/sub
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:?????????2
batchnorm/add_1s

Identity_6Identitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:?????????2

Identity_6Π
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^AssignMovingAvg_2!^AssignMovingAvg_2/ReadVariableOp^AssignMovingAvg_3!^AssignMovingAvg_3/ReadVariableOp^AssignNewValue^Maximum/ReadVariableOp^ReadVariableOp^add_1/ReadVariableOp^mul/ReadVariableOp^mul_1/ReadVariableOp^mul_2/ReadVariableOp^sub/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"!

identity_6Identity_6:output:0*(
_construction_contextkEagerRuntime*5
_input_shapes$
":?????????: : : : : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp2&
AssignMovingAvg_2AssignMovingAvg_22D
 AssignMovingAvg_2/ReadVariableOp AssignMovingAvg_2/ReadVariableOp2&
AssignMovingAvg_3AssignMovingAvg_32D
 AssignMovingAvg_3/ReadVariableOp AssignMovingAvg_3/ReadVariableOp2 
AssignNewValueAssignNewValue20
Maximum/ReadVariableOpMaximum/ReadVariableOp2 
ReadVariableOpReadVariableOp2,
add_1/ReadVariableOpadd_1/ReadVariableOp2(
mul/ReadVariableOpmul/ReadVariableOp2,
mul_1/ReadVariableOpmul_1/ReadVariableOp2,
mul_2/ReadVariableOpmul_2/ReadVariableOp2(
sub/ReadVariableOpsub/ReadVariableOp:P L
(
_output_shapes
:?????????
 
_user_specified_nameinputs
©
c
*__inference_dropout_6_layer_call_fn_601377

inputs
identity’StatefulPartitionedCallα
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8 *N
fIRG
E__inference_dropout_6_layer_call_and_return_conditional_losses_5991052
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:?????????22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:?????????
 
_user_specified_nameinputs

΄
Q__inference_batch_normalization_6_layer_call_and_return_conditional_losses_597658

inputs0
!batchnorm_readvariableop_resource:	4
%batchnorm_mul_readvariableop_resource:	2
#batchnorm_readvariableop_1_resource:	2
#batchnorm_readvariableop_2_resource:	
identity’batchnorm/ReadVariableOp’batchnorm/ReadVariableOp_1’batchnorm/ReadVariableOp_2’batchnorm/mul/ReadVariableOp
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batchnorm/add/y
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:2
batchnorm/Rsqrt
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype02
batchnorm/mul/ReadVariableOp
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
batchnorm/mulw
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:?????????2
batchnorm/mul_1
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOp_1
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:2
batchnorm/mul_2
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOp_2
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:2
batchnorm/sub
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:?????????2
batchnorm/add_1o
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:?????????2

IdentityΒ
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:?????????: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:?????????
 
_user_specified_nameinputs
δ
Υ
6__inference_batch_normalization_6_layer_call_fn_601311

inputs
unknown:	
	unknown_0:	
	unknown_1:	
	unknown_2:	
identity’StatefulPartitionedCall‘
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????*&
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8 *Z
fURS
Q__inference_batch_normalization_6_layer_call_and_return_conditional_losses_5976582
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:?????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:?????????
 
_user_specified_nameinputs

΄
Q__inference_batch_normalization_8_layer_call_and_return_conditional_losses_598178

inputs0
!batchnorm_readvariableop_resource:	4
%batchnorm_mul_readvariableop_resource:	2
#batchnorm_readvariableop_1_resource:	2
#batchnorm_readvariableop_2_resource:	
identity’batchnorm/ReadVariableOp’batchnorm/ReadVariableOp_1’batchnorm/ReadVariableOp_2’batchnorm/mul/ReadVariableOp
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batchnorm/add/y
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:2
batchnorm/Rsqrt
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype02
batchnorm/mul/ReadVariableOp
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
batchnorm/mulw
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:?????????2
batchnorm/mul_1
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOp_1
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:2
batchnorm/mul_2
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOp_2
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:2
batchnorm/sub
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:?????????2
batchnorm/add_1o
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:?????????2

IdentityΒ
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:?????????: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:?????????
 
_user_specified_nameinputs

΄
Q__inference_batch_normalization_7_layer_call_and_return_conditional_losses_601397

inputs0
!batchnorm_readvariableop_resource:	4
%batchnorm_mul_readvariableop_resource:	2
#batchnorm_readvariableop_1_resource:	2
#batchnorm_readvariableop_2_resource:	
identity’batchnorm/ReadVariableOp’batchnorm/ReadVariableOp_1’batchnorm/ReadVariableOp_2’batchnorm/mul/ReadVariableOp
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batchnorm/add/y
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:2
batchnorm/Rsqrt
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype02
batchnorm/mul/ReadVariableOp
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
batchnorm/mulw
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:?????????2
batchnorm/mul_1
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOp_1
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:2
batchnorm/mul_2
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOp_2
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:2
batchnorm/sub
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:?????????2
batchnorm/add_1o
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:?????????2

IdentityΒ
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:?????????: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:?????????
 
_user_specified_nameinputs
Z
Ζ
Q__inference_batch_normalization_6_layer_call_and_return_conditional_losses_601298

inputs.
maximum_readvariableop_resource:	*
sub_readvariableop_resource:	*
mul_readvariableop_resource:	,
add_1_readvariableop_resource:	8
)assignmovingavg_2_readvariableop_resource:	8
)assignmovingavg_3_readvariableop_resource:	&
assignnewvalue_resource:	

identity_6’AssignMovingAvg’AssignMovingAvg/ReadVariableOp’AssignMovingAvg_1’ AssignMovingAvg_1/ReadVariableOp’AssignMovingAvg_2’ AssignMovingAvg_2/ReadVariableOp’AssignMovingAvg_3’ AssignMovingAvg_3/ReadVariableOp’AssignNewValue’Maximum/ReadVariableOp’ReadVariableOp’add_1/ReadVariableOp’mul/ReadVariableOp’mul_1/ReadVariableOp’mul_2/ReadVariableOp’sub/ReadVariableOp
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2 
moments/mean/reduction_indices
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	*
	keep_dims(2
moments/mean}
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes
:	2
moments/StopGradient₯
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*(
_output_shapes
:?????????2
moments/SquaredDifference
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2$
"moments/variance/reduction_indices³
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	*
	keep_dims(2
moments/variance
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 2
moments/Squeeze
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 2
moments/Squeeze_1S
add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
add/ye
addAddV2moments/Squeeze_1:output:0add/y:output:0*
T0*
_output_shapes	
:2
addC
SqrtSqrtadd:z:0*
T0*
_output_shapes	
:2
SqrtY
Sqrt_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *o:2

Sqrt_1/xL
Sqrt_1SqrtSqrt_1/x:output:0*
T0*
_output_shapes
: 2
Sqrt_1
Maximum/ReadVariableOpReadVariableOpmaximum_readvariableop_resource*
_output_shapes	
:*
dtype02
Maximum/ReadVariableOpo
MaximumMaximumMaximum/ReadVariableOp:value:0
Sqrt_1:y:0*
T0*
_output_shapes	
:2	
MaximumZ
truedivRealDivSqrt:y:0Maximum:z:0*
T0*
_output_shapes	
:2	
truediv
sub/ReadVariableOpReadVariableOpsub_readvariableop_resource*
_output_shapes	
:*
dtype02
sub/ReadVariableOpm
subSubmoments/Squeeze:output:0sub/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
sub]
	truediv_1RealDivsub:z:0Maximum:z:0*
T0*
_output_shapes	
:2
	truediv_1v
IdentityIdentitymoments/Squeeze:output:0^truediv
^truediv_1*
T0*
_output_shapes	
:2

Identityj

Identity_1IdentitySqrt:y:0^truediv
^truediv_1*
T0*
_output_shapes	
:2

Identity_1]

Identity_2IdentityIdentity:output:0*
T0*
_output_shapes	
:2

Identity_2s
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
Χ#<2
AssignMovingAvg/decay
AssignMovingAvg/ReadVariableOpReadVariableOpsub_readvariableop_resource*
_output_shapes	
:*
dtype02 
AssignMovingAvg/ReadVariableOp
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0Identity_2:output:0*
T0*
_output_shapes	
:2
AssignMovingAvg/sub
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:2
AssignMovingAvg/mulΘ
AssignMovingAvgAssignSubVariableOpsub_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp^sub/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_

Identity_3IdentityIdentity_1:output:0*
T0*
_output_shapes	
:2

Identity_3w
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
Χ#<2
AssignMovingAvg_1/decay‘
 AssignMovingAvg_1/ReadVariableOpReadVariableOpmaximum_readvariableop_resource*
_output_shapes	
:*
dtype02"
 AssignMovingAvg_1/ReadVariableOp
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0Identity_3:output:0*
T0*
_output_shapes	
:2
AssignMovingAvg_1/sub
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:2
AssignMovingAvg_1/mulΨ
AssignMovingAvg_1AssignSubVariableOpmaximum_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp^Maximum/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_1

Identity_4IdentityIdentity:output:0^AssignMovingAvg^AssignMovingAvg_1*
T0*
_output_shapes	
:2

Identity_4

Identity_5Identitymoments/Squeeze_1:output:0^AssignMovingAvg^AssignMovingAvg_1*
T0*
_output_shapes	
:2

Identity_5W
renorm_rStopGradienttruediv:z:0*
T0*
_output_shapes	
:2

renorm_rY
renorm_dStopGradienttruediv_1:z:0*
T0*
_output_shapes	
:2

renorm_d
mul/ReadVariableOpReadVariableOpmul_readvariableop_resource*
_output_shapes	
:*
dtype02
mul/ReadVariableOpf
mulMulrenorm_r:output:0mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
mul
mul_1/ReadVariableOpReadVariableOpmul_readvariableop_resource*
_output_shapes	
:*
dtype02
mul_1/ReadVariableOpl
mul_1Mulrenorm_d:output:0mul_1/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
mul_1
add_1/ReadVariableOpReadVariableOpadd_1_readvariableop_resource*
_output_shapes	
:*
dtype02
add_1/ReadVariableOpf
add_1AddV2	mul_1:z:0add_1/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
add_1w
AssignMovingAvg_2/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
Χ#<2
AssignMovingAvg_2/decay«
 AssignMovingAvg_2/ReadVariableOpReadVariableOp)assignmovingavg_2_readvariableop_resource*
_output_shapes	
:*
dtype02"
 AssignMovingAvg_2/ReadVariableOp
AssignMovingAvg_2/subSub(AssignMovingAvg_2/ReadVariableOp:value:0Identity_4:output:0*
T0*
_output_shapes	
:2
AssignMovingAvg_2/sub
AssignMovingAvg_2/mulMulAssignMovingAvg_2/sub:z:0 AssignMovingAvg_2/decay:output:0*
T0*
_output_shapes	
:2
AssignMovingAvg_2/mulΙ
AssignMovingAvg_2AssignSubVariableOp)assignmovingavg_2_readvariableop_resourceAssignMovingAvg_2/mul:z:0!^AssignMovingAvg_2/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_2W
add_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2	
add_2/yd
add_2AddV2Identity_5:output:0add_2/y:output:0*
T0*
_output_shapes	
:2
add_2I
Sqrt_2Sqrt	add_2:z:0*
T0*
_output_shapes	
:2
Sqrt_2w
AssignMovingAvg_3/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
Χ#<2
AssignMovingAvg_3/decay«
 AssignMovingAvg_3/ReadVariableOpReadVariableOp)assignmovingavg_3_readvariableop_resource*
_output_shapes	
:*
dtype02"
 AssignMovingAvg_3/ReadVariableOp
AssignMovingAvg_3/subSub(AssignMovingAvg_3/ReadVariableOp:value:0
Sqrt_2:y:0*
T0*
_output_shapes	
:2
AssignMovingAvg_3/sub
AssignMovingAvg_3/mulMulAssignMovingAvg_3/sub:z:0 AssignMovingAvg_3/decay:output:0*
T0*
_output_shapes	
:2
AssignMovingAvg_3/mulΙ
AssignMovingAvg_3AssignSubVariableOp)assignmovingavg_3_readvariableop_resourceAssignMovingAvg_3/mul:z:0!^AssignMovingAvg_3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_3
ReadVariableOpReadVariableOp)assignmovingavg_3_readvariableop_resource^AssignMovingAvg_3*
_output_shapes	
:*
dtype02
ReadVariableOp§
mul_2/ReadVariableOpReadVariableOp)assignmovingavg_3_readvariableop_resource^AssignMovingAvg_3*
_output_shapes	
:*
dtype02
mul_2/ReadVariableOpq
mul_2MulReadVariableOp:value:0mul_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
mul_2W
sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2	
sub_1/yX
sub_1Sub	mul_2:z:0sub_1/y:output:0*
T0*
_output_shapes	
:2
sub_1E
ReluRelu	sub_1:z:0*
T0*
_output_shapes	
:2
Relu
AssignNewValueAssignVariableOpassignnewvalue_resourceRelu:activations:0*
_output_shapes
 *
dtype02
AssignNewValueg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batchnorm/add/y
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:2
batchnorm/Rsqrti
batchnorm/mulMulbatchnorm/Rsqrt:y:0mul:z:0*
T0*
_output_shapes	
:2
batchnorm/mulw
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:?????????2
batchnorm/mul_1|
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:2
batchnorm/mul_2k
batchnorm/subSub	add_1:z:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:2
batchnorm/sub
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:?????????2
batchnorm/add_1s

Identity_6Identitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:?????????2

Identity_6Π
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^AssignMovingAvg_2!^AssignMovingAvg_2/ReadVariableOp^AssignMovingAvg_3!^AssignMovingAvg_3/ReadVariableOp^AssignNewValue^Maximum/ReadVariableOp^ReadVariableOp^add_1/ReadVariableOp^mul/ReadVariableOp^mul_1/ReadVariableOp^mul_2/ReadVariableOp^sub/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"!

identity_6Identity_6:output:0*(
_construction_contextkEagerRuntime*5
_input_shapes$
":?????????: : : : : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp2&
AssignMovingAvg_2AssignMovingAvg_22D
 AssignMovingAvg_2/ReadVariableOp AssignMovingAvg_2/ReadVariableOp2&
AssignMovingAvg_3AssignMovingAvg_32D
 AssignMovingAvg_3/ReadVariableOp AssignMovingAvg_3/ReadVariableOp2 
AssignNewValueAssignNewValue20
Maximum/ReadVariableOpMaximum/ReadVariableOp2 
ReadVariableOpReadVariableOp2,
add_1/ReadVariableOpadd_1/ReadVariableOp2(
mul/ReadVariableOpmul/ReadVariableOp2,
mul_1/ReadVariableOpmul_1/ReadVariableOp2,
mul_2/ReadVariableOpmul_2/ReadVariableOp2(
sub/ReadVariableOpsub/ReadVariableOp:P L
(
_output_shapes
:?????????
 
_user_specified_nameinputs
ϊ

)__inference_dense_21_layer_call_fn_600998

inputs
unknown:		
	unknown_0:	
identity’StatefulPartitionedCallϊ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8 *M
fHRF
D__inference_dense_21_layer_call_and_return_conditional_losses_5987012
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????	: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????	
 
_user_specified_nameinputs
Z
Ζ
Q__inference_batch_normalization_7_layer_call_and_return_conditional_losses_598021

inputs.
maximum_readvariableop_resource:	*
sub_readvariableop_resource:	*
mul_readvariableop_resource:	,
add_1_readvariableop_resource:	8
)assignmovingavg_2_readvariableop_resource:	8
)assignmovingavg_3_readvariableop_resource:	&
assignnewvalue_resource:	

identity_6’AssignMovingAvg’AssignMovingAvg/ReadVariableOp’AssignMovingAvg_1’ AssignMovingAvg_1/ReadVariableOp’AssignMovingAvg_2’ AssignMovingAvg_2/ReadVariableOp’AssignMovingAvg_3’ AssignMovingAvg_3/ReadVariableOp’AssignNewValue’Maximum/ReadVariableOp’ReadVariableOp’add_1/ReadVariableOp’mul/ReadVariableOp’mul_1/ReadVariableOp’mul_2/ReadVariableOp’sub/ReadVariableOp
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2 
moments/mean/reduction_indices
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	*
	keep_dims(2
moments/mean}
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes
:	2
moments/StopGradient₯
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*(
_output_shapes
:?????????2
moments/SquaredDifference
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2$
"moments/variance/reduction_indices³
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	*
	keep_dims(2
moments/variance
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 2
moments/Squeeze
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 2
moments/Squeeze_1S
add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
add/ye
addAddV2moments/Squeeze_1:output:0add/y:output:0*
T0*
_output_shapes	
:2
addC
SqrtSqrtadd:z:0*
T0*
_output_shapes	
:2
SqrtY
Sqrt_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *o:2

Sqrt_1/xL
Sqrt_1SqrtSqrt_1/x:output:0*
T0*
_output_shapes
: 2
Sqrt_1
Maximum/ReadVariableOpReadVariableOpmaximum_readvariableop_resource*
_output_shapes	
:*
dtype02
Maximum/ReadVariableOpo
MaximumMaximumMaximum/ReadVariableOp:value:0
Sqrt_1:y:0*
T0*
_output_shapes	
:2	
MaximumZ
truedivRealDivSqrt:y:0Maximum:z:0*
T0*
_output_shapes	
:2	
truediv
sub/ReadVariableOpReadVariableOpsub_readvariableop_resource*
_output_shapes	
:*
dtype02
sub/ReadVariableOpm
subSubmoments/Squeeze:output:0sub/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
sub]
	truediv_1RealDivsub:z:0Maximum:z:0*
T0*
_output_shapes	
:2
	truediv_1v
IdentityIdentitymoments/Squeeze:output:0^truediv
^truediv_1*
T0*
_output_shapes	
:2

Identityj

Identity_1IdentitySqrt:y:0^truediv
^truediv_1*
T0*
_output_shapes	
:2

Identity_1]

Identity_2IdentityIdentity:output:0*
T0*
_output_shapes	
:2

Identity_2s
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
Χ#<2
AssignMovingAvg/decay
AssignMovingAvg/ReadVariableOpReadVariableOpsub_readvariableop_resource*
_output_shapes	
:*
dtype02 
AssignMovingAvg/ReadVariableOp
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0Identity_2:output:0*
T0*
_output_shapes	
:2
AssignMovingAvg/sub
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:2
AssignMovingAvg/mulΘ
AssignMovingAvgAssignSubVariableOpsub_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp^sub/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_

Identity_3IdentityIdentity_1:output:0*
T0*
_output_shapes	
:2

Identity_3w
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
Χ#<2
AssignMovingAvg_1/decay‘
 AssignMovingAvg_1/ReadVariableOpReadVariableOpmaximum_readvariableop_resource*
_output_shapes	
:*
dtype02"
 AssignMovingAvg_1/ReadVariableOp
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0Identity_3:output:0*
T0*
_output_shapes	
:2
AssignMovingAvg_1/sub
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:2
AssignMovingAvg_1/mulΨ
AssignMovingAvg_1AssignSubVariableOpmaximum_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp^Maximum/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_1

Identity_4IdentityIdentity:output:0^AssignMovingAvg^AssignMovingAvg_1*
T0*
_output_shapes	
:2

Identity_4

Identity_5Identitymoments/Squeeze_1:output:0^AssignMovingAvg^AssignMovingAvg_1*
T0*
_output_shapes	
:2

Identity_5W
renorm_rStopGradienttruediv:z:0*
T0*
_output_shapes	
:2

renorm_rY
renorm_dStopGradienttruediv_1:z:0*
T0*
_output_shapes	
:2

renorm_d
mul/ReadVariableOpReadVariableOpmul_readvariableop_resource*
_output_shapes	
:*
dtype02
mul/ReadVariableOpf
mulMulrenorm_r:output:0mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
mul
mul_1/ReadVariableOpReadVariableOpmul_readvariableop_resource*
_output_shapes	
:*
dtype02
mul_1/ReadVariableOpl
mul_1Mulrenorm_d:output:0mul_1/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
mul_1
add_1/ReadVariableOpReadVariableOpadd_1_readvariableop_resource*
_output_shapes	
:*
dtype02
add_1/ReadVariableOpf
add_1AddV2	mul_1:z:0add_1/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
add_1w
AssignMovingAvg_2/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
Χ#<2
AssignMovingAvg_2/decay«
 AssignMovingAvg_2/ReadVariableOpReadVariableOp)assignmovingavg_2_readvariableop_resource*
_output_shapes	
:*
dtype02"
 AssignMovingAvg_2/ReadVariableOp
AssignMovingAvg_2/subSub(AssignMovingAvg_2/ReadVariableOp:value:0Identity_4:output:0*
T0*
_output_shapes	
:2
AssignMovingAvg_2/sub
AssignMovingAvg_2/mulMulAssignMovingAvg_2/sub:z:0 AssignMovingAvg_2/decay:output:0*
T0*
_output_shapes	
:2
AssignMovingAvg_2/mulΙ
AssignMovingAvg_2AssignSubVariableOp)assignmovingavg_2_readvariableop_resourceAssignMovingAvg_2/mul:z:0!^AssignMovingAvg_2/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_2W
add_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2	
add_2/yd
add_2AddV2Identity_5:output:0add_2/y:output:0*
T0*
_output_shapes	
:2
add_2I
Sqrt_2Sqrt	add_2:z:0*
T0*
_output_shapes	
:2
Sqrt_2w
AssignMovingAvg_3/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
Χ#<2
AssignMovingAvg_3/decay«
 AssignMovingAvg_3/ReadVariableOpReadVariableOp)assignmovingavg_3_readvariableop_resource*
_output_shapes	
:*
dtype02"
 AssignMovingAvg_3/ReadVariableOp
AssignMovingAvg_3/subSub(AssignMovingAvg_3/ReadVariableOp:value:0
Sqrt_2:y:0*
T0*
_output_shapes	
:2
AssignMovingAvg_3/sub
AssignMovingAvg_3/mulMulAssignMovingAvg_3/sub:z:0 AssignMovingAvg_3/decay:output:0*
T0*
_output_shapes	
:2
AssignMovingAvg_3/mulΙ
AssignMovingAvg_3AssignSubVariableOp)assignmovingavg_3_readvariableop_resourceAssignMovingAvg_3/mul:z:0!^AssignMovingAvg_3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_3
ReadVariableOpReadVariableOp)assignmovingavg_3_readvariableop_resource^AssignMovingAvg_3*
_output_shapes	
:*
dtype02
ReadVariableOp§
mul_2/ReadVariableOpReadVariableOp)assignmovingavg_3_readvariableop_resource^AssignMovingAvg_3*
_output_shapes	
:*
dtype02
mul_2/ReadVariableOpq
mul_2MulReadVariableOp:value:0mul_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
mul_2W
sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2	
sub_1/yX
sub_1Sub	mul_2:z:0sub_1/y:output:0*
T0*
_output_shapes	
:2
sub_1E
ReluRelu	sub_1:z:0*
T0*
_output_shapes	
:2
Relu
AssignNewValueAssignVariableOpassignnewvalue_resourceRelu:activations:0*
_output_shapes
 *
dtype02
AssignNewValueg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batchnorm/add/y
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:2
batchnorm/Rsqrti
batchnorm/mulMulbatchnorm/Rsqrt:y:0mul:z:0*
T0*
_output_shapes	
:2
batchnorm/mulw
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:?????????2
batchnorm/mul_1|
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:2
batchnorm/mul_2k
batchnorm/subSub	add_1:z:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:2
batchnorm/sub
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:?????????2
batchnorm/add_1s

Identity_6Identitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:?????????2

Identity_6Π
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^AssignMovingAvg_2!^AssignMovingAvg_2/ReadVariableOp^AssignMovingAvg_3!^AssignMovingAvg_3/ReadVariableOp^AssignNewValue^Maximum/ReadVariableOp^ReadVariableOp^add_1/ReadVariableOp^mul/ReadVariableOp^mul_1/ReadVariableOp^mul_2/ReadVariableOp^sub/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"!

identity_6Identity_6:output:0*(
_construction_contextkEagerRuntime*5
_input_shapes$
":?????????: : : : : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp2&
AssignMovingAvg_2AssignMovingAvg_22D
 AssignMovingAvg_2/ReadVariableOp AssignMovingAvg_2/ReadVariableOp2&
AssignMovingAvg_3AssignMovingAvg_32D
 AssignMovingAvg_3/ReadVariableOp AssignMovingAvg_3/ReadVariableOp2 
AssignNewValueAssignNewValue20
Maximum/ReadVariableOpMaximum/ReadVariableOp2 
ReadVariableOpReadVariableOp2,
add_1/ReadVariableOpadd_1/ReadVariableOp2(
mul/ReadVariableOpmul/ReadVariableOp2,
mul_1/ReadVariableOpmul_1/ReadVariableOp2,
mul_2/ReadVariableOpmul_2/ReadVariableOp2(
sub/ReadVariableOpsub/ReadVariableOp:P L
(
_output_shapes
:?????????
 
_user_specified_nameinputs

΄
Q__inference_batch_normalization_6_layer_call_and_return_conditional_losses_601221

inputs0
!batchnorm_readvariableop_resource:	4
%batchnorm_mul_readvariableop_resource:	2
#batchnorm_readvariableop_1_resource:	2
#batchnorm_readvariableop_2_resource:	
identity’batchnorm/ReadVariableOp’batchnorm/ReadVariableOp_1’batchnorm/ReadVariableOp_2’batchnorm/mul/ReadVariableOp
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batchnorm/add/y
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:2
batchnorm/Rsqrt
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype02
batchnorm/mul/ReadVariableOp
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
batchnorm/mulw
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:?????????2
batchnorm/mul_1
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOp_1
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:2
batchnorm/mul_2
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOp_2
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:2
batchnorm/sub
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:?????????2
batchnorm/add_1o
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:?????????2

IdentityΒ
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:?????????: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:?????????
 
_user_specified_nameinputs
Ϊ	
£
6__inference_batch_normalization_7_layer_call_fn_601506

inputs
unknown:	
	unknown_0:	
	unknown_1:	
	unknown_2:	
	unknown_3:	
	unknown_4:	
	unknown_5:	
identity’StatefulPartitionedCallΓ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
Tin

2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8 *Z
fURS
Q__inference_batch_normalization_7_layer_call_and_return_conditional_losses_5980212
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*5
_input_shapes$
":?????????: : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:?????????
 
_user_specified_nameinputs
«
d
E__inference_dropout_9_layer_call_and_return_conditional_losses_601895

inputs
identityc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nΫΆ?2
dropout/Consts
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:????????? 2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape΄
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2
dropout/GreaterEqual/yΎ
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
dropout/Castz
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:????????? 2
dropout/Mul_1e
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:????????? :O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
Δ{

H__inference_sequential_8_layer_call_and_return_conditional_losses_599868
input_3*
batch_normalization_4_599736:	*
batch_normalization_4_599738:	*
batch_normalization_4_599740:	*
batch_normalization_4_599742:	*
batch_normalization_4_599744:	*
batch_normalization_4_599746:	*
batch_normalization_4_599748:	"
dense_21_599751:		
dense_21_599753:	+
batch_normalization_5_599757:	+
batch_normalization_5_599759:	+
batch_normalization_5_599761:	+
batch_normalization_5_599763:	+
batch_normalization_5_599765:	+
batch_normalization_5_599767:	+
batch_normalization_5_599769:	#
dense_22_599772:

dense_22_599774:	+
batch_normalization_6_599778:	+
batch_normalization_6_599780:	+
batch_normalization_6_599782:	+
batch_normalization_6_599784:	+
batch_normalization_6_599786:	+
batch_normalization_6_599788:	+
batch_normalization_6_599790:	#
dense_23_599793:

dense_23_599795:	+
batch_normalization_7_599799:	+
batch_normalization_7_599801:	+
batch_normalization_7_599803:	+
batch_normalization_7_599805:	+
batch_normalization_7_599807:	+
batch_normalization_7_599809:	+
batch_normalization_7_599811:	#
dense_24_599814:

dense_24_599816:	+
batch_normalization_8_599820:	+
batch_normalization_8_599822:	+
batch_normalization_8_599824:	+
batch_normalization_8_599826:	+
batch_normalization_8_599828:	+
batch_normalization_8_599830:	+
batch_normalization_8_599832:	"
dense_25_599835:	@
dense_25_599837:@*
batch_normalization_9_599841:@*
batch_normalization_9_599843:@*
batch_normalization_9_599845:@*
batch_normalization_9_599847:@*
batch_normalization_9_599849:@*
batch_normalization_9_599851:@*
batch_normalization_9_599853:@!
dense_26_599856:@ 
dense_26_599858: !
dense_27_599862: 
dense_27_599864:
identity’-batch_normalization_4/StatefulPartitionedCall’-batch_normalization_5/StatefulPartitionedCall’-batch_normalization_6/StatefulPartitionedCall’-batch_normalization_7/StatefulPartitionedCall’-batch_normalization_8/StatefulPartitionedCall’-batch_normalization_9/StatefulPartitionedCall’ dense_21/StatefulPartitionedCall’ dense_22/StatefulPartitionedCall’ dense_23/StatefulPartitionedCall’ dense_24/StatefulPartitionedCall’ dense_25/StatefulPartitionedCall’ dense_26/StatefulPartitionedCall’ dense_27/StatefulPartitionedCall’!dropout_4/StatefulPartitionedCall’!dropout_5/StatefulPartitionedCall’!dropout_6/StatefulPartitionedCall’!dropout_7/StatefulPartitionedCall’!dropout_8/StatefulPartitionedCall’!dropout_9/StatefulPartitionedCallφ
-batch_normalization_4/StatefulPartitionedCallStatefulPartitionedCallinput_3batch_normalization_4_599736batch_normalization_4_599738batch_normalization_4_599740batch_normalization_4_599742batch_normalization_4_599744batch_normalization_4_599746batch_normalization_4_599748*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????	*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8 *Z
fURS
Q__inference_batch_normalization_4_layer_call_and_return_conditional_losses_5972412/
-batch_normalization_4/StatefulPartitionedCallΚ
 dense_21/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_4/StatefulPartitionedCall:output:0dense_21_599751dense_21_599753*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8 *M
fHRF
D__inference_dense_21_layer_call_and_return_conditional_losses_5987012"
 dense_21/StatefulPartitionedCall
!dropout_4/StatefulPartitionedCallStatefulPartitionedCall)dense_21/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8 *N
fIRG
E__inference_dropout_4_layer_call_and_return_conditional_losses_5991712#
!dropout_4/StatefulPartitionedCall
-batch_normalization_5/StatefulPartitionedCallStatefulPartitionedCall*dropout_4/StatefulPartitionedCall:output:0batch_normalization_5_599757batch_normalization_5_599759batch_normalization_5_599761batch_normalization_5_599763batch_normalization_5_599765batch_normalization_5_599767batch_normalization_5_599769*
Tin

2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8 *Z
fURS
Q__inference_batch_normalization_5_layer_call_and_return_conditional_losses_5975012/
-batch_normalization_5/StatefulPartitionedCallΚ
 dense_22/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_5/StatefulPartitionedCall:output:0dense_22_599772dense_22_599774*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8 *M
fHRF
D__inference_dense_22_layer_call_and_return_conditional_losses_5987342"
 dense_22/StatefulPartitionedCallΌ
!dropout_5/StatefulPartitionedCallStatefulPartitionedCall)dense_22/StatefulPartitionedCall:output:0"^dropout_4/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8 *N
fIRG
E__inference_dropout_5_layer_call_and_return_conditional_losses_5991382#
!dropout_5/StatefulPartitionedCall
-batch_normalization_6/StatefulPartitionedCallStatefulPartitionedCall*dropout_5/StatefulPartitionedCall:output:0batch_normalization_6_599778batch_normalization_6_599780batch_normalization_6_599782batch_normalization_6_599784batch_normalization_6_599786batch_normalization_6_599788batch_normalization_6_599790*
Tin

2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8 *Z
fURS
Q__inference_batch_normalization_6_layer_call_and_return_conditional_losses_5977612/
-batch_normalization_6/StatefulPartitionedCallΚ
 dense_23/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_6/StatefulPartitionedCall:output:0dense_23_599793dense_23_599795*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8 *M
fHRF
D__inference_dense_23_layer_call_and_return_conditional_losses_5987672"
 dense_23/StatefulPartitionedCallΌ
!dropout_6/StatefulPartitionedCallStatefulPartitionedCall)dense_23/StatefulPartitionedCall:output:0"^dropout_5/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8 *N
fIRG
E__inference_dropout_6_layer_call_and_return_conditional_losses_5991052#
!dropout_6/StatefulPartitionedCall
-batch_normalization_7/StatefulPartitionedCallStatefulPartitionedCall*dropout_6/StatefulPartitionedCall:output:0batch_normalization_7_599799batch_normalization_7_599801batch_normalization_7_599803batch_normalization_7_599805batch_normalization_7_599807batch_normalization_7_599809batch_normalization_7_599811*
Tin

2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8 *Z
fURS
Q__inference_batch_normalization_7_layer_call_and_return_conditional_losses_5980212/
-batch_normalization_7/StatefulPartitionedCallΚ
 dense_24/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_7/StatefulPartitionedCall:output:0dense_24_599814dense_24_599816*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8 *M
fHRF
D__inference_dense_24_layer_call_and_return_conditional_losses_5988002"
 dense_24/StatefulPartitionedCallΌ
!dropout_7/StatefulPartitionedCallStatefulPartitionedCall)dense_24/StatefulPartitionedCall:output:0"^dropout_6/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8 *N
fIRG
E__inference_dropout_7_layer_call_and_return_conditional_losses_5990722#
!dropout_7/StatefulPartitionedCall
-batch_normalization_8/StatefulPartitionedCallStatefulPartitionedCall*dropout_7/StatefulPartitionedCall:output:0batch_normalization_8_599820batch_normalization_8_599822batch_normalization_8_599824batch_normalization_8_599826batch_normalization_8_599828batch_normalization_8_599830batch_normalization_8_599832*
Tin

2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8 *Z
fURS
Q__inference_batch_normalization_8_layer_call_and_return_conditional_losses_5982812/
-batch_normalization_8/StatefulPartitionedCallΙ
 dense_25/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_8/StatefulPartitionedCall:output:0dense_25_599835dense_25_599837*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8 *M
fHRF
D__inference_dense_25_layer_call_and_return_conditional_losses_5988332"
 dense_25/StatefulPartitionedCall»
!dropout_8/StatefulPartitionedCallStatefulPartitionedCall)dense_25/StatefulPartitionedCall:output:0"^dropout_7/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8 *N
fIRG
E__inference_dropout_8_layer_call_and_return_conditional_losses_5990392#
!dropout_8/StatefulPartitionedCall
-batch_normalization_9/StatefulPartitionedCallStatefulPartitionedCall*dropout_8/StatefulPartitionedCall:output:0batch_normalization_9_599841batch_normalization_9_599843batch_normalization_9_599845batch_normalization_9_599847batch_normalization_9_599849batch_normalization_9_599851batch_normalization_9_599853*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8 *Z
fURS
Q__inference_batch_normalization_9_layer_call_and_return_conditional_losses_5985412/
-batch_normalization_9/StatefulPartitionedCallΙ
 dense_26/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_9/StatefulPartitionedCall:output:0dense_26_599856dense_26_599858*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8 *M
fHRF
D__inference_dense_26_layer_call_and_return_conditional_losses_5988662"
 dense_26/StatefulPartitionedCall»
!dropout_9/StatefulPartitionedCallStatefulPartitionedCall)dense_26/StatefulPartitionedCall:output:0"^dropout_8/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8 *N
fIRG
E__inference_dropout_9_layer_call_and_return_conditional_losses_5990062#
!dropout_9/StatefulPartitionedCall½
 dense_27/StatefulPartitionedCallStatefulPartitionedCall*dropout_9/StatefulPartitionedCall:output:0dense_27_599862dense_27_599864*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8 *M
fHRF
D__inference_dense_27_layer_call_and_return_conditional_losses_5988902"
 dense_27/StatefulPartitionedCall
IdentityIdentity)dense_27/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity»
NoOpNoOp.^batch_normalization_4/StatefulPartitionedCall.^batch_normalization_5/StatefulPartitionedCall.^batch_normalization_6/StatefulPartitionedCall.^batch_normalization_7/StatefulPartitionedCall.^batch_normalization_8/StatefulPartitionedCall.^batch_normalization_9/StatefulPartitionedCall!^dense_21/StatefulPartitionedCall!^dense_22/StatefulPartitionedCall!^dense_23/StatefulPartitionedCall!^dense_24/StatefulPartitionedCall!^dense_25/StatefulPartitionedCall!^dense_26/StatefulPartitionedCall!^dense_27/StatefulPartitionedCall"^dropout_4/StatefulPartitionedCall"^dropout_5/StatefulPartitionedCall"^dropout_6/StatefulPartitionedCall"^dropout_7/StatefulPartitionedCall"^dropout_8/StatefulPartitionedCall"^dropout_9/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
:?????????	: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2^
-batch_normalization_4/StatefulPartitionedCall-batch_normalization_4/StatefulPartitionedCall2^
-batch_normalization_5/StatefulPartitionedCall-batch_normalization_5/StatefulPartitionedCall2^
-batch_normalization_6/StatefulPartitionedCall-batch_normalization_6/StatefulPartitionedCall2^
-batch_normalization_7/StatefulPartitionedCall-batch_normalization_7/StatefulPartitionedCall2^
-batch_normalization_8/StatefulPartitionedCall-batch_normalization_8/StatefulPartitionedCall2^
-batch_normalization_9/StatefulPartitionedCall-batch_normalization_9/StatefulPartitionedCall2D
 dense_21/StatefulPartitionedCall dense_21/StatefulPartitionedCall2D
 dense_22/StatefulPartitionedCall dense_22/StatefulPartitionedCall2D
 dense_23/StatefulPartitionedCall dense_23/StatefulPartitionedCall2D
 dense_24/StatefulPartitionedCall dense_24/StatefulPartitionedCall2D
 dense_25/StatefulPartitionedCall dense_25/StatefulPartitionedCall2D
 dense_26/StatefulPartitionedCall dense_26/StatefulPartitionedCall2D
 dense_27/StatefulPartitionedCall dense_27/StatefulPartitionedCall2F
!dropout_4/StatefulPartitionedCall!dropout_4/StatefulPartitionedCall2F
!dropout_5/StatefulPartitionedCall!dropout_5/StatefulPartitionedCall2F
!dropout_6/StatefulPartitionedCall!dropout_6/StatefulPartitionedCall2F
!dropout_7/StatefulPartitionedCall!dropout_7/StatefulPartitionedCall2F
!dropout_8/StatefulPartitionedCall!dropout_8/StatefulPartitionedCall2F
!dropout_9/StatefulPartitionedCall!dropout_9/StatefulPartitionedCall:P L
'
_output_shapes
:?????????	
!
_user_specified_name	input_3
φ
c
E__inference_dropout_4_layer_call_and_return_conditional_losses_601003

inputs

identity_1[
IdentityIdentityinputs*
T0*(
_output_shapes
:?????????2

Identityj

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:?????????2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:?????????:P L
(
_output_shapes
:?????????
 
_user_specified_nameinputs
δγ
Τ6
__inference__traced_save_602299
file_prefix:
6savev2_batch_normalization_4_gamma_read_readvariableop9
5savev2_batch_normalization_4_beta_read_readvariableop@
<savev2_batch_normalization_4_moving_mean_read_readvariableopD
@savev2_batch_normalization_4_moving_variance_read_readvariableopB
>savev2_batch_normalization_4_moving_stddev_read_readvariableop@
<savev2_batch_normalization_4_renorm_mean_read_readvariableopB
>savev2_batch_normalization_4_renorm_stddev_read_readvariableop.
*savev2_dense_21_kernel_read_readvariableop,
(savev2_dense_21_bias_read_readvariableop:
6savev2_batch_normalization_5_gamma_read_readvariableop9
5savev2_batch_normalization_5_beta_read_readvariableop@
<savev2_batch_normalization_5_moving_mean_read_readvariableopD
@savev2_batch_normalization_5_moving_variance_read_readvariableopB
>savev2_batch_normalization_5_moving_stddev_read_readvariableop@
<savev2_batch_normalization_5_renorm_mean_read_readvariableopB
>savev2_batch_normalization_5_renorm_stddev_read_readvariableop.
*savev2_dense_22_kernel_read_readvariableop,
(savev2_dense_22_bias_read_readvariableop:
6savev2_batch_normalization_6_gamma_read_readvariableop9
5savev2_batch_normalization_6_beta_read_readvariableop@
<savev2_batch_normalization_6_moving_mean_read_readvariableopD
@savev2_batch_normalization_6_moving_variance_read_readvariableopB
>savev2_batch_normalization_6_moving_stddev_read_readvariableop@
<savev2_batch_normalization_6_renorm_mean_read_readvariableopB
>savev2_batch_normalization_6_renorm_stddev_read_readvariableop.
*savev2_dense_23_kernel_read_readvariableop,
(savev2_dense_23_bias_read_readvariableop:
6savev2_batch_normalization_7_gamma_read_readvariableop9
5savev2_batch_normalization_7_beta_read_readvariableop@
<savev2_batch_normalization_7_moving_mean_read_readvariableopD
@savev2_batch_normalization_7_moving_variance_read_readvariableopB
>savev2_batch_normalization_7_moving_stddev_read_readvariableop@
<savev2_batch_normalization_7_renorm_mean_read_readvariableopB
>savev2_batch_normalization_7_renorm_stddev_read_readvariableop.
*savev2_dense_24_kernel_read_readvariableop,
(savev2_dense_24_bias_read_readvariableop:
6savev2_batch_normalization_8_gamma_read_readvariableop9
5savev2_batch_normalization_8_beta_read_readvariableop@
<savev2_batch_normalization_8_moving_mean_read_readvariableopD
@savev2_batch_normalization_8_moving_variance_read_readvariableopB
>savev2_batch_normalization_8_moving_stddev_read_readvariableop@
<savev2_batch_normalization_8_renorm_mean_read_readvariableopB
>savev2_batch_normalization_8_renorm_stddev_read_readvariableop.
*savev2_dense_25_kernel_read_readvariableop,
(savev2_dense_25_bias_read_readvariableop:
6savev2_batch_normalization_9_gamma_read_readvariableop9
5savev2_batch_normalization_9_beta_read_readvariableop@
<savev2_batch_normalization_9_moving_mean_read_readvariableopD
@savev2_batch_normalization_9_moving_variance_read_readvariableopB
>savev2_batch_normalization_9_moving_stddev_read_readvariableop@
<savev2_batch_normalization_9_renorm_mean_read_readvariableopB
>savev2_batch_normalization_9_renorm_stddev_read_readvariableop.
*savev2_dense_26_kernel_read_readvariableop,
(savev2_dense_26_bias_read_readvariableop.
*savev2_dense_27_kernel_read_readvariableop,
(savev2_dense_27_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableopA
=savev2_adam_batch_normalization_4_gamma_m_read_readvariableop@
<savev2_adam_batch_normalization_4_beta_m_read_readvariableop5
1savev2_adam_dense_21_kernel_m_read_readvariableop3
/savev2_adam_dense_21_bias_m_read_readvariableopA
=savev2_adam_batch_normalization_5_gamma_m_read_readvariableop@
<savev2_adam_batch_normalization_5_beta_m_read_readvariableop5
1savev2_adam_dense_22_kernel_m_read_readvariableop3
/savev2_adam_dense_22_bias_m_read_readvariableopA
=savev2_adam_batch_normalization_6_gamma_m_read_readvariableop@
<savev2_adam_batch_normalization_6_beta_m_read_readvariableop5
1savev2_adam_dense_23_kernel_m_read_readvariableop3
/savev2_adam_dense_23_bias_m_read_readvariableopA
=savev2_adam_batch_normalization_7_gamma_m_read_readvariableop@
<savev2_adam_batch_normalization_7_beta_m_read_readvariableop5
1savev2_adam_dense_24_kernel_m_read_readvariableop3
/savev2_adam_dense_24_bias_m_read_readvariableopA
=savev2_adam_batch_normalization_8_gamma_m_read_readvariableop@
<savev2_adam_batch_normalization_8_beta_m_read_readvariableop5
1savev2_adam_dense_25_kernel_m_read_readvariableop3
/savev2_adam_dense_25_bias_m_read_readvariableopA
=savev2_adam_batch_normalization_9_gamma_m_read_readvariableop@
<savev2_adam_batch_normalization_9_beta_m_read_readvariableop5
1savev2_adam_dense_26_kernel_m_read_readvariableop3
/savev2_adam_dense_26_bias_m_read_readvariableop5
1savev2_adam_dense_27_kernel_m_read_readvariableop3
/savev2_adam_dense_27_bias_m_read_readvariableopA
=savev2_adam_batch_normalization_4_gamma_v_read_readvariableop@
<savev2_adam_batch_normalization_4_beta_v_read_readvariableop5
1savev2_adam_dense_21_kernel_v_read_readvariableop3
/savev2_adam_dense_21_bias_v_read_readvariableopA
=savev2_adam_batch_normalization_5_gamma_v_read_readvariableop@
<savev2_adam_batch_normalization_5_beta_v_read_readvariableop5
1savev2_adam_dense_22_kernel_v_read_readvariableop3
/savev2_adam_dense_22_bias_v_read_readvariableopA
=savev2_adam_batch_normalization_6_gamma_v_read_readvariableop@
<savev2_adam_batch_normalization_6_beta_v_read_readvariableop5
1savev2_adam_dense_23_kernel_v_read_readvariableop3
/savev2_adam_dense_23_bias_v_read_readvariableopA
=savev2_adam_batch_normalization_7_gamma_v_read_readvariableop@
<savev2_adam_batch_normalization_7_beta_v_read_readvariableop5
1savev2_adam_dense_24_kernel_v_read_readvariableop3
/savev2_adam_dense_24_bias_v_read_readvariableopA
=savev2_adam_batch_normalization_8_gamma_v_read_readvariableop@
<savev2_adam_batch_normalization_8_beta_v_read_readvariableop5
1savev2_adam_dense_25_kernel_v_read_readvariableop3
/savev2_adam_dense_25_bias_v_read_readvariableopA
=savev2_adam_batch_normalization_9_gamma_v_read_readvariableop@
<savev2_adam_batch_normalization_9_beta_v_read_readvariableop5
1savev2_adam_dense_26_kernel_v_read_readvariableop3
/savev2_adam_dense_26_bias_v_read_readvariableop5
1savev2_adam_dense_27_kernel_v_read_readvariableop3
/savev2_adam_dense_27_bias_v_read_readvariableop
savev2_const

identity_1’MergeV2Checkpoints
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard¦
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename«@
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:v*
dtype0*½?
value³?B°?vB5layer_with_weights-0/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-0/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-0/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB=layer_with_weights-0/moving_stddev/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-0/renorm_mean/.ATTRIBUTES/VARIABLE_VALUEB=layer_with_weights-0/renorm_stddev/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-2/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-2/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-2/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB=layer_with_weights-2/moving_stddev/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-2/renorm_mean/.ATTRIBUTES/VARIABLE_VALUEB=layer_with_weights-2/renorm_stddev/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-4/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-4/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-4/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB=layer_with_weights-4/moving_stddev/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-4/renorm_mean/.ATTRIBUTES/VARIABLE_VALUEB=layer_with_weights-4/renorm_stddev/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-6/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-6/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-6/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB=layer_with_weights-6/moving_stddev/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-6/renorm_mean/.ATTRIBUTES/VARIABLE_VALUEB=layer_with_weights-6/renorm_stddev/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-8/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-8/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-8/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB=layer_with_weights-8/moving_stddev/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-8/renorm_mean/.ATTRIBUTES/VARIABLE_VALUEB=layer_with_weights-8/renorm_stddev/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-10/gamma/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-10/beta/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-10/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-10/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB>layer_with_weights-10/moving_stddev/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-10/renorm_mean/.ATTRIBUTES/VARIABLE_VALUEB>layer_with_weights-10/renorm_stddev/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-11/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-11/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-12/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-12/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-0/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-2/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-4/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-6/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-8/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-10/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-10/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-11/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-11/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-12/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-0/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-2/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-4/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-6/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-8/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-10/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-10/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-11/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-11/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-12/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_namesχ
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:v*
dtype0*
valueχBτvB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slicesΔ4
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:06savev2_batch_normalization_4_gamma_read_readvariableop5savev2_batch_normalization_4_beta_read_readvariableop<savev2_batch_normalization_4_moving_mean_read_readvariableop@savev2_batch_normalization_4_moving_variance_read_readvariableop>savev2_batch_normalization_4_moving_stddev_read_readvariableop<savev2_batch_normalization_4_renorm_mean_read_readvariableop>savev2_batch_normalization_4_renorm_stddev_read_readvariableop*savev2_dense_21_kernel_read_readvariableop(savev2_dense_21_bias_read_readvariableop6savev2_batch_normalization_5_gamma_read_readvariableop5savev2_batch_normalization_5_beta_read_readvariableop<savev2_batch_normalization_5_moving_mean_read_readvariableop@savev2_batch_normalization_5_moving_variance_read_readvariableop>savev2_batch_normalization_5_moving_stddev_read_readvariableop<savev2_batch_normalization_5_renorm_mean_read_readvariableop>savev2_batch_normalization_5_renorm_stddev_read_readvariableop*savev2_dense_22_kernel_read_readvariableop(savev2_dense_22_bias_read_readvariableop6savev2_batch_normalization_6_gamma_read_readvariableop5savev2_batch_normalization_6_beta_read_readvariableop<savev2_batch_normalization_6_moving_mean_read_readvariableop@savev2_batch_normalization_6_moving_variance_read_readvariableop>savev2_batch_normalization_6_moving_stddev_read_readvariableop<savev2_batch_normalization_6_renorm_mean_read_readvariableop>savev2_batch_normalization_6_renorm_stddev_read_readvariableop*savev2_dense_23_kernel_read_readvariableop(savev2_dense_23_bias_read_readvariableop6savev2_batch_normalization_7_gamma_read_readvariableop5savev2_batch_normalization_7_beta_read_readvariableop<savev2_batch_normalization_7_moving_mean_read_readvariableop@savev2_batch_normalization_7_moving_variance_read_readvariableop>savev2_batch_normalization_7_moving_stddev_read_readvariableop<savev2_batch_normalization_7_renorm_mean_read_readvariableop>savev2_batch_normalization_7_renorm_stddev_read_readvariableop*savev2_dense_24_kernel_read_readvariableop(savev2_dense_24_bias_read_readvariableop6savev2_batch_normalization_8_gamma_read_readvariableop5savev2_batch_normalization_8_beta_read_readvariableop<savev2_batch_normalization_8_moving_mean_read_readvariableop@savev2_batch_normalization_8_moving_variance_read_readvariableop>savev2_batch_normalization_8_moving_stddev_read_readvariableop<savev2_batch_normalization_8_renorm_mean_read_readvariableop>savev2_batch_normalization_8_renorm_stddev_read_readvariableop*savev2_dense_25_kernel_read_readvariableop(savev2_dense_25_bias_read_readvariableop6savev2_batch_normalization_9_gamma_read_readvariableop5savev2_batch_normalization_9_beta_read_readvariableop<savev2_batch_normalization_9_moving_mean_read_readvariableop@savev2_batch_normalization_9_moving_variance_read_readvariableop>savev2_batch_normalization_9_moving_stddev_read_readvariableop<savev2_batch_normalization_9_renorm_mean_read_readvariableop>savev2_batch_normalization_9_renorm_stddev_read_readvariableop*savev2_dense_26_kernel_read_readvariableop(savev2_dense_26_bias_read_readvariableop*savev2_dense_27_kernel_read_readvariableop(savev2_dense_27_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop=savev2_adam_batch_normalization_4_gamma_m_read_readvariableop<savev2_adam_batch_normalization_4_beta_m_read_readvariableop1savev2_adam_dense_21_kernel_m_read_readvariableop/savev2_adam_dense_21_bias_m_read_readvariableop=savev2_adam_batch_normalization_5_gamma_m_read_readvariableop<savev2_adam_batch_normalization_5_beta_m_read_readvariableop1savev2_adam_dense_22_kernel_m_read_readvariableop/savev2_adam_dense_22_bias_m_read_readvariableop=savev2_adam_batch_normalization_6_gamma_m_read_readvariableop<savev2_adam_batch_normalization_6_beta_m_read_readvariableop1savev2_adam_dense_23_kernel_m_read_readvariableop/savev2_adam_dense_23_bias_m_read_readvariableop=savev2_adam_batch_normalization_7_gamma_m_read_readvariableop<savev2_adam_batch_normalization_7_beta_m_read_readvariableop1savev2_adam_dense_24_kernel_m_read_readvariableop/savev2_adam_dense_24_bias_m_read_readvariableop=savev2_adam_batch_normalization_8_gamma_m_read_readvariableop<savev2_adam_batch_normalization_8_beta_m_read_readvariableop1savev2_adam_dense_25_kernel_m_read_readvariableop/savev2_adam_dense_25_bias_m_read_readvariableop=savev2_adam_batch_normalization_9_gamma_m_read_readvariableop<savev2_adam_batch_normalization_9_beta_m_read_readvariableop1savev2_adam_dense_26_kernel_m_read_readvariableop/savev2_adam_dense_26_bias_m_read_readvariableop1savev2_adam_dense_27_kernel_m_read_readvariableop/savev2_adam_dense_27_bias_m_read_readvariableop=savev2_adam_batch_normalization_4_gamma_v_read_readvariableop<savev2_adam_batch_normalization_4_beta_v_read_readvariableop1savev2_adam_dense_21_kernel_v_read_readvariableop/savev2_adam_dense_21_bias_v_read_readvariableop=savev2_adam_batch_normalization_5_gamma_v_read_readvariableop<savev2_adam_batch_normalization_5_beta_v_read_readvariableop1savev2_adam_dense_22_kernel_v_read_readvariableop/savev2_adam_dense_22_bias_v_read_readvariableop=savev2_adam_batch_normalization_6_gamma_v_read_readvariableop<savev2_adam_batch_normalization_6_beta_v_read_readvariableop1savev2_adam_dense_23_kernel_v_read_readvariableop/savev2_adam_dense_23_bias_v_read_readvariableop=savev2_adam_batch_normalization_7_gamma_v_read_readvariableop<savev2_adam_batch_normalization_7_beta_v_read_readvariableop1savev2_adam_dense_24_kernel_v_read_readvariableop/savev2_adam_dense_24_bias_v_read_readvariableop=savev2_adam_batch_normalization_8_gamma_v_read_readvariableop<savev2_adam_batch_normalization_8_beta_v_read_readvariableop1savev2_adam_dense_25_kernel_v_read_readvariableop/savev2_adam_dense_25_bias_v_read_readvariableop=savev2_adam_batch_normalization_9_gamma_v_read_readvariableop<savev2_adam_batch_normalization_9_beta_v_read_readvariableop1savev2_adam_dense_26_kernel_v_read_readvariableop/savev2_adam_dense_26_bias_v_read_readvariableop1savev2_adam_dense_27_kernel_v_read_readvariableop/savev2_adam_dense_27_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *
dtypesz
x2v	2
SaveV2Ί
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes‘
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identity_

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: 2

Identity_1c
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"!

identity_1Identity_1:output:0*Χ
_input_shapesΕ
Β: :	:	:	:	:	:	:	:		:::::::::
:::::::::
:::::::::
:::::::::	@:@:@:@:@:@:@:@:@:@ : : :: : : : : : : : : :	:	:		::::
::::
::::
::::	@:@:@:@:@ : : ::	:	:		::::
::::
::::
::::	@:@:@:@:@ : : :: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix: 

_output_shapes
:	: 

_output_shapes
:	: 

_output_shapes
:	: 

_output_shapes
:	: 

_output_shapes
:	: 

_output_shapes
:	: 

_output_shapes
:	:%!

_output_shapes
:		:!	

_output_shapes	
::!


_output_shapes	
::!

_output_shapes	
::!

_output_shapes	
::!

_output_shapes	
::!

_output_shapes	
::!

_output_shapes	
::!

_output_shapes	
::&"
 
_output_shapes
:
:!

_output_shapes	
::!

_output_shapes	
::!

_output_shapes	
::!

_output_shapes	
::!

_output_shapes	
::!

_output_shapes	
::!

_output_shapes	
::!

_output_shapes	
::&"
 
_output_shapes
:
:!

_output_shapes	
::!

_output_shapes	
::!

_output_shapes	
::!

_output_shapes	
::!

_output_shapes	
::! 

_output_shapes	
::!!

_output_shapes	
::!"

_output_shapes	
::&#"
 
_output_shapes
:
:!$

_output_shapes	
::!%

_output_shapes	
::!&

_output_shapes	
::!'

_output_shapes	
::!(

_output_shapes	
::!)

_output_shapes	
::!*

_output_shapes	
::!+

_output_shapes	
::%,!

_output_shapes
:	@: -

_output_shapes
:@: .

_output_shapes
:@: /

_output_shapes
:@: 0

_output_shapes
:@: 1

_output_shapes
:@: 2

_output_shapes
:@: 3

_output_shapes
:@: 4

_output_shapes
:@:$5 

_output_shapes

:@ : 6

_output_shapes
: :$7 

_output_shapes

: : 8

_output_shapes
::9

_output_shapes
: ::

_output_shapes
: :;

_output_shapes
: :<

_output_shapes
: :=

_output_shapes
: :>

_output_shapes
: :?

_output_shapes
: :@

_output_shapes
: :A

_output_shapes
: : B

_output_shapes
:	: C

_output_shapes
:	:%D!

_output_shapes
:		:!E

_output_shapes	
::!F

_output_shapes	
::!G

_output_shapes	
::&H"
 
_output_shapes
:
:!I

_output_shapes	
::!J

_output_shapes	
::!K

_output_shapes	
::&L"
 
_output_shapes
:
:!M

_output_shapes	
::!N

_output_shapes	
::!O

_output_shapes	
::&P"
 
_output_shapes
:
:!Q

_output_shapes	
::!R

_output_shapes	
::!S

_output_shapes	
::%T!

_output_shapes
:	@: U

_output_shapes
:@: V

_output_shapes
:@: W

_output_shapes
:@:$X 

_output_shapes

:@ : Y

_output_shapes
: :$Z 

_output_shapes

: : [

_output_shapes
:: \

_output_shapes
:	: ]

_output_shapes
:	:%^!

_output_shapes
:		:!_

_output_shapes	
::!`

_output_shapes	
::!a

_output_shapes	
::&b"
 
_output_shapes
:
:!c

_output_shapes	
::!d

_output_shapes	
::!e

_output_shapes	
::&f"
 
_output_shapes
:
:!g

_output_shapes	
::!h

_output_shapes	
::!i

_output_shapes	
::&j"
 
_output_shapes
:
:!k

_output_shapes	
::!l

_output_shapes	
::!m

_output_shapes	
::%n!

_output_shapes
:	@: o

_output_shapes
:@: p

_output_shapes
:@: q

_output_shapes
:@:$r 

_output_shapes

:@ : s

_output_shapes
: :$t 

_output_shapes

: : u

_output_shapes
::v

_output_shapes
: 
φ
c
E__inference_dropout_6_layer_call_and_return_conditional_losses_598778

inputs

identity_1[
IdentityIdentityinputs*
T0*(
_output_shapes
:?????????2

Identityj

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:?????????2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:?????????:P L
(
_output_shapes
:?????????
 
_user_specified_nameinputs

΄
Q__inference_batch_normalization_8_layer_call_and_return_conditional_losses_601573

inputs0
!batchnorm_readvariableop_resource:	4
%batchnorm_mul_readvariableop_resource:	2
#batchnorm_readvariableop_1_resource:	2
#batchnorm_readvariableop_2_resource:	
identity’batchnorm/ReadVariableOp’batchnorm/ReadVariableOp_1’batchnorm/ReadVariableOp_2’batchnorm/mul/ReadVariableOp
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batchnorm/add/y
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:2
batchnorm/Rsqrt
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype02
batchnorm/mul/ReadVariableOp
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
batchnorm/mulw
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:?????????2
batchnorm/mul_1
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOp_1
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:2
batchnorm/mul_2
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOp_2
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:2
batchnorm/sub
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:?????????2
batchnorm/add_1o
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:?????????2

IdentityΒ
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:?????????: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:?????????
 
_user_specified_nameinputs
Z
Ζ
Q__inference_batch_normalization_8_layer_call_and_return_conditional_losses_598281

inputs.
maximum_readvariableop_resource:	*
sub_readvariableop_resource:	*
mul_readvariableop_resource:	,
add_1_readvariableop_resource:	8
)assignmovingavg_2_readvariableop_resource:	8
)assignmovingavg_3_readvariableop_resource:	&
assignnewvalue_resource:	

identity_6’AssignMovingAvg’AssignMovingAvg/ReadVariableOp’AssignMovingAvg_1’ AssignMovingAvg_1/ReadVariableOp’AssignMovingAvg_2’ AssignMovingAvg_2/ReadVariableOp’AssignMovingAvg_3’ AssignMovingAvg_3/ReadVariableOp’AssignNewValue’Maximum/ReadVariableOp’ReadVariableOp’add_1/ReadVariableOp’mul/ReadVariableOp’mul_1/ReadVariableOp’mul_2/ReadVariableOp’sub/ReadVariableOp
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2 
moments/mean/reduction_indices
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	*
	keep_dims(2
moments/mean}
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes
:	2
moments/StopGradient₯
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*(
_output_shapes
:?????????2
moments/SquaredDifference
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2$
"moments/variance/reduction_indices³
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	*
	keep_dims(2
moments/variance
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 2
moments/Squeeze
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 2
moments/Squeeze_1S
add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
add/ye
addAddV2moments/Squeeze_1:output:0add/y:output:0*
T0*
_output_shapes	
:2
addC
SqrtSqrtadd:z:0*
T0*
_output_shapes	
:2
SqrtY
Sqrt_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *o:2

Sqrt_1/xL
Sqrt_1SqrtSqrt_1/x:output:0*
T0*
_output_shapes
: 2
Sqrt_1
Maximum/ReadVariableOpReadVariableOpmaximum_readvariableop_resource*
_output_shapes	
:*
dtype02
Maximum/ReadVariableOpo
MaximumMaximumMaximum/ReadVariableOp:value:0
Sqrt_1:y:0*
T0*
_output_shapes	
:2	
MaximumZ
truedivRealDivSqrt:y:0Maximum:z:0*
T0*
_output_shapes	
:2	
truediv
sub/ReadVariableOpReadVariableOpsub_readvariableop_resource*
_output_shapes	
:*
dtype02
sub/ReadVariableOpm
subSubmoments/Squeeze:output:0sub/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
sub]
	truediv_1RealDivsub:z:0Maximum:z:0*
T0*
_output_shapes	
:2
	truediv_1v
IdentityIdentitymoments/Squeeze:output:0^truediv
^truediv_1*
T0*
_output_shapes	
:2

Identityj

Identity_1IdentitySqrt:y:0^truediv
^truediv_1*
T0*
_output_shapes	
:2

Identity_1]

Identity_2IdentityIdentity:output:0*
T0*
_output_shapes	
:2

Identity_2s
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
Χ#<2
AssignMovingAvg/decay
AssignMovingAvg/ReadVariableOpReadVariableOpsub_readvariableop_resource*
_output_shapes	
:*
dtype02 
AssignMovingAvg/ReadVariableOp
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0Identity_2:output:0*
T0*
_output_shapes	
:2
AssignMovingAvg/sub
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:2
AssignMovingAvg/mulΘ
AssignMovingAvgAssignSubVariableOpsub_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp^sub/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_

Identity_3IdentityIdentity_1:output:0*
T0*
_output_shapes	
:2

Identity_3w
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
Χ#<2
AssignMovingAvg_1/decay‘
 AssignMovingAvg_1/ReadVariableOpReadVariableOpmaximum_readvariableop_resource*
_output_shapes	
:*
dtype02"
 AssignMovingAvg_1/ReadVariableOp
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0Identity_3:output:0*
T0*
_output_shapes	
:2
AssignMovingAvg_1/sub
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:2
AssignMovingAvg_1/mulΨ
AssignMovingAvg_1AssignSubVariableOpmaximum_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp^Maximum/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_1

Identity_4IdentityIdentity:output:0^AssignMovingAvg^AssignMovingAvg_1*
T0*
_output_shapes	
:2

Identity_4

Identity_5Identitymoments/Squeeze_1:output:0^AssignMovingAvg^AssignMovingAvg_1*
T0*
_output_shapes	
:2

Identity_5W
renorm_rStopGradienttruediv:z:0*
T0*
_output_shapes	
:2

renorm_rY
renorm_dStopGradienttruediv_1:z:0*
T0*
_output_shapes	
:2

renorm_d
mul/ReadVariableOpReadVariableOpmul_readvariableop_resource*
_output_shapes	
:*
dtype02
mul/ReadVariableOpf
mulMulrenorm_r:output:0mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
mul
mul_1/ReadVariableOpReadVariableOpmul_readvariableop_resource*
_output_shapes	
:*
dtype02
mul_1/ReadVariableOpl
mul_1Mulrenorm_d:output:0mul_1/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
mul_1
add_1/ReadVariableOpReadVariableOpadd_1_readvariableop_resource*
_output_shapes	
:*
dtype02
add_1/ReadVariableOpf
add_1AddV2	mul_1:z:0add_1/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
add_1w
AssignMovingAvg_2/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
Χ#<2
AssignMovingAvg_2/decay«
 AssignMovingAvg_2/ReadVariableOpReadVariableOp)assignmovingavg_2_readvariableop_resource*
_output_shapes	
:*
dtype02"
 AssignMovingAvg_2/ReadVariableOp
AssignMovingAvg_2/subSub(AssignMovingAvg_2/ReadVariableOp:value:0Identity_4:output:0*
T0*
_output_shapes	
:2
AssignMovingAvg_2/sub
AssignMovingAvg_2/mulMulAssignMovingAvg_2/sub:z:0 AssignMovingAvg_2/decay:output:0*
T0*
_output_shapes	
:2
AssignMovingAvg_2/mulΙ
AssignMovingAvg_2AssignSubVariableOp)assignmovingavg_2_readvariableop_resourceAssignMovingAvg_2/mul:z:0!^AssignMovingAvg_2/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_2W
add_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2	
add_2/yd
add_2AddV2Identity_5:output:0add_2/y:output:0*
T0*
_output_shapes	
:2
add_2I
Sqrt_2Sqrt	add_2:z:0*
T0*
_output_shapes	
:2
Sqrt_2w
AssignMovingAvg_3/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
Χ#<2
AssignMovingAvg_3/decay«
 AssignMovingAvg_3/ReadVariableOpReadVariableOp)assignmovingavg_3_readvariableop_resource*
_output_shapes	
:*
dtype02"
 AssignMovingAvg_3/ReadVariableOp
AssignMovingAvg_3/subSub(AssignMovingAvg_3/ReadVariableOp:value:0
Sqrt_2:y:0*
T0*
_output_shapes	
:2
AssignMovingAvg_3/sub
AssignMovingAvg_3/mulMulAssignMovingAvg_3/sub:z:0 AssignMovingAvg_3/decay:output:0*
T0*
_output_shapes	
:2
AssignMovingAvg_3/mulΙ
AssignMovingAvg_3AssignSubVariableOp)assignmovingavg_3_readvariableop_resourceAssignMovingAvg_3/mul:z:0!^AssignMovingAvg_3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_3
ReadVariableOpReadVariableOp)assignmovingavg_3_readvariableop_resource^AssignMovingAvg_3*
_output_shapes	
:*
dtype02
ReadVariableOp§
mul_2/ReadVariableOpReadVariableOp)assignmovingavg_3_readvariableop_resource^AssignMovingAvg_3*
_output_shapes	
:*
dtype02
mul_2/ReadVariableOpq
mul_2MulReadVariableOp:value:0mul_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
mul_2W
sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2	
sub_1/yX
sub_1Sub	mul_2:z:0sub_1/y:output:0*
T0*
_output_shapes	
:2
sub_1E
ReluRelu	sub_1:z:0*
T0*
_output_shapes	
:2
Relu
AssignNewValueAssignVariableOpassignnewvalue_resourceRelu:activations:0*
_output_shapes
 *
dtype02
AssignNewValueg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batchnorm/add/y
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:2
batchnorm/Rsqrti
batchnorm/mulMulbatchnorm/Rsqrt:y:0mul:z:0*
T0*
_output_shapes	
:2
batchnorm/mulw
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:?????????2
batchnorm/mul_1|
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:2
batchnorm/mul_2k
batchnorm/subSub	add_1:z:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:2
batchnorm/sub
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:?????????2
batchnorm/add_1s

Identity_6Identitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:?????????2

Identity_6Π
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^AssignMovingAvg_2!^AssignMovingAvg_2/ReadVariableOp^AssignMovingAvg_3!^AssignMovingAvg_3/ReadVariableOp^AssignNewValue^Maximum/ReadVariableOp^ReadVariableOp^add_1/ReadVariableOp^mul/ReadVariableOp^mul_1/ReadVariableOp^mul_2/ReadVariableOp^sub/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"!

identity_6Identity_6:output:0*(
_construction_contextkEagerRuntime*5
_input_shapes$
":?????????: : : : : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp2&
AssignMovingAvg_2AssignMovingAvg_22D
 AssignMovingAvg_2/ReadVariableOp AssignMovingAvg_2/ReadVariableOp2&
AssignMovingAvg_3AssignMovingAvg_32D
 AssignMovingAvg_3/ReadVariableOp AssignMovingAvg_3/ReadVariableOp2 
AssignNewValueAssignNewValue20
Maximum/ReadVariableOpMaximum/ReadVariableOp2 
ReadVariableOpReadVariableOp2,
add_1/ReadVariableOpadd_1/ReadVariableOp2(
mul/ReadVariableOpmul/ReadVariableOp2,
mul_1/ReadVariableOpmul_1/ReadVariableOp2,
mul_2/ReadVariableOpmul_2/ReadVariableOp2(
sub/ReadVariableOpsub/ReadVariableOp:P L
(
_output_shapes
:?????????
 
_user_specified_nameinputs
ά
Ρ
6__inference_batch_normalization_4_layer_call_fn_600959

inputs
unknown:	
	unknown_0:	
	unknown_1:	
	unknown_2:	
identity’StatefulPartitionedCall 
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????	*&
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8 *Z
fURS
Q__inference_batch_normalization_4_layer_call_and_return_conditional_losses_5971382
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????	2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????	: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????	
 
_user_specified_nameinputs
΄
d
E__inference_dropout_6_layer_call_and_return_conditional_losses_601367

inputs
identityc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nΫΆ?2
dropout/Constt
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:?????????2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape΅
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:?????????*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2
dropout/GreaterEqual/yΏ
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:?????????2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:?????????2
dropout/Cast{
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:?????????2
dropout/Mul_1f
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:?????????:P L
(
_output_shapes
:?????????
 
_user_specified_nameinputs

υ
D__inference_dense_27_layer_call_and_return_conditional_losses_601916

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource:
identity’BiasAdd/ReadVariableOp’MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAdda
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:?????????2	
Sigmoidf
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
Z
Ζ
Q__inference_batch_normalization_7_layer_call_and_return_conditional_losses_601474

inputs.
maximum_readvariableop_resource:	*
sub_readvariableop_resource:	*
mul_readvariableop_resource:	,
add_1_readvariableop_resource:	8
)assignmovingavg_2_readvariableop_resource:	8
)assignmovingavg_3_readvariableop_resource:	&
assignnewvalue_resource:	

identity_6’AssignMovingAvg’AssignMovingAvg/ReadVariableOp’AssignMovingAvg_1’ AssignMovingAvg_1/ReadVariableOp’AssignMovingAvg_2’ AssignMovingAvg_2/ReadVariableOp’AssignMovingAvg_3’ AssignMovingAvg_3/ReadVariableOp’AssignNewValue’Maximum/ReadVariableOp’ReadVariableOp’add_1/ReadVariableOp’mul/ReadVariableOp’mul_1/ReadVariableOp’mul_2/ReadVariableOp’sub/ReadVariableOp
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2 
moments/mean/reduction_indices
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	*
	keep_dims(2
moments/mean}
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes
:	2
moments/StopGradient₯
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*(
_output_shapes
:?????????2
moments/SquaredDifference
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2$
"moments/variance/reduction_indices³
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	*
	keep_dims(2
moments/variance
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 2
moments/Squeeze
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 2
moments/Squeeze_1S
add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
add/ye
addAddV2moments/Squeeze_1:output:0add/y:output:0*
T0*
_output_shapes	
:2
addC
SqrtSqrtadd:z:0*
T0*
_output_shapes	
:2
SqrtY
Sqrt_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *o:2

Sqrt_1/xL
Sqrt_1SqrtSqrt_1/x:output:0*
T0*
_output_shapes
: 2
Sqrt_1
Maximum/ReadVariableOpReadVariableOpmaximum_readvariableop_resource*
_output_shapes	
:*
dtype02
Maximum/ReadVariableOpo
MaximumMaximumMaximum/ReadVariableOp:value:0
Sqrt_1:y:0*
T0*
_output_shapes	
:2	
MaximumZ
truedivRealDivSqrt:y:0Maximum:z:0*
T0*
_output_shapes	
:2	
truediv
sub/ReadVariableOpReadVariableOpsub_readvariableop_resource*
_output_shapes	
:*
dtype02
sub/ReadVariableOpm
subSubmoments/Squeeze:output:0sub/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
sub]
	truediv_1RealDivsub:z:0Maximum:z:0*
T0*
_output_shapes	
:2
	truediv_1v
IdentityIdentitymoments/Squeeze:output:0^truediv
^truediv_1*
T0*
_output_shapes	
:2

Identityj

Identity_1IdentitySqrt:y:0^truediv
^truediv_1*
T0*
_output_shapes	
:2

Identity_1]

Identity_2IdentityIdentity:output:0*
T0*
_output_shapes	
:2

Identity_2s
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
Χ#<2
AssignMovingAvg/decay
AssignMovingAvg/ReadVariableOpReadVariableOpsub_readvariableop_resource*
_output_shapes	
:*
dtype02 
AssignMovingAvg/ReadVariableOp
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0Identity_2:output:0*
T0*
_output_shapes	
:2
AssignMovingAvg/sub
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:2
AssignMovingAvg/mulΘ
AssignMovingAvgAssignSubVariableOpsub_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp^sub/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_

Identity_3IdentityIdentity_1:output:0*
T0*
_output_shapes	
:2

Identity_3w
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
Χ#<2
AssignMovingAvg_1/decay‘
 AssignMovingAvg_1/ReadVariableOpReadVariableOpmaximum_readvariableop_resource*
_output_shapes	
:*
dtype02"
 AssignMovingAvg_1/ReadVariableOp
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0Identity_3:output:0*
T0*
_output_shapes	
:2
AssignMovingAvg_1/sub
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:2
AssignMovingAvg_1/mulΨ
AssignMovingAvg_1AssignSubVariableOpmaximum_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp^Maximum/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_1

Identity_4IdentityIdentity:output:0^AssignMovingAvg^AssignMovingAvg_1*
T0*
_output_shapes	
:2

Identity_4

Identity_5Identitymoments/Squeeze_1:output:0^AssignMovingAvg^AssignMovingAvg_1*
T0*
_output_shapes	
:2

Identity_5W
renorm_rStopGradienttruediv:z:0*
T0*
_output_shapes	
:2

renorm_rY
renorm_dStopGradienttruediv_1:z:0*
T0*
_output_shapes	
:2

renorm_d
mul/ReadVariableOpReadVariableOpmul_readvariableop_resource*
_output_shapes	
:*
dtype02
mul/ReadVariableOpf
mulMulrenorm_r:output:0mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
mul
mul_1/ReadVariableOpReadVariableOpmul_readvariableop_resource*
_output_shapes	
:*
dtype02
mul_1/ReadVariableOpl
mul_1Mulrenorm_d:output:0mul_1/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
mul_1
add_1/ReadVariableOpReadVariableOpadd_1_readvariableop_resource*
_output_shapes	
:*
dtype02
add_1/ReadVariableOpf
add_1AddV2	mul_1:z:0add_1/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
add_1w
AssignMovingAvg_2/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
Χ#<2
AssignMovingAvg_2/decay«
 AssignMovingAvg_2/ReadVariableOpReadVariableOp)assignmovingavg_2_readvariableop_resource*
_output_shapes	
:*
dtype02"
 AssignMovingAvg_2/ReadVariableOp
AssignMovingAvg_2/subSub(AssignMovingAvg_2/ReadVariableOp:value:0Identity_4:output:0*
T0*
_output_shapes	
:2
AssignMovingAvg_2/sub
AssignMovingAvg_2/mulMulAssignMovingAvg_2/sub:z:0 AssignMovingAvg_2/decay:output:0*
T0*
_output_shapes	
:2
AssignMovingAvg_2/mulΙ
AssignMovingAvg_2AssignSubVariableOp)assignmovingavg_2_readvariableop_resourceAssignMovingAvg_2/mul:z:0!^AssignMovingAvg_2/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_2W
add_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2	
add_2/yd
add_2AddV2Identity_5:output:0add_2/y:output:0*
T0*
_output_shapes	
:2
add_2I
Sqrt_2Sqrt	add_2:z:0*
T0*
_output_shapes	
:2
Sqrt_2w
AssignMovingAvg_3/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
Χ#<2
AssignMovingAvg_3/decay«
 AssignMovingAvg_3/ReadVariableOpReadVariableOp)assignmovingavg_3_readvariableop_resource*
_output_shapes	
:*
dtype02"
 AssignMovingAvg_3/ReadVariableOp
AssignMovingAvg_3/subSub(AssignMovingAvg_3/ReadVariableOp:value:0
Sqrt_2:y:0*
T0*
_output_shapes	
:2
AssignMovingAvg_3/sub
AssignMovingAvg_3/mulMulAssignMovingAvg_3/sub:z:0 AssignMovingAvg_3/decay:output:0*
T0*
_output_shapes	
:2
AssignMovingAvg_3/mulΙ
AssignMovingAvg_3AssignSubVariableOp)assignmovingavg_3_readvariableop_resourceAssignMovingAvg_3/mul:z:0!^AssignMovingAvg_3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_3
ReadVariableOpReadVariableOp)assignmovingavg_3_readvariableop_resource^AssignMovingAvg_3*
_output_shapes	
:*
dtype02
ReadVariableOp§
mul_2/ReadVariableOpReadVariableOp)assignmovingavg_3_readvariableop_resource^AssignMovingAvg_3*
_output_shapes	
:*
dtype02
mul_2/ReadVariableOpq
mul_2MulReadVariableOp:value:0mul_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
mul_2W
sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2	
sub_1/yX
sub_1Sub	mul_2:z:0sub_1/y:output:0*
T0*
_output_shapes	
:2
sub_1E
ReluRelu	sub_1:z:0*
T0*
_output_shapes	
:2
Relu
AssignNewValueAssignVariableOpassignnewvalue_resourceRelu:activations:0*
_output_shapes
 *
dtype02
AssignNewValueg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batchnorm/add/y
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:2
batchnorm/Rsqrti
batchnorm/mulMulbatchnorm/Rsqrt:y:0mul:z:0*
T0*
_output_shapes	
:2
batchnorm/mulw
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:?????????2
batchnorm/mul_1|
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:2
batchnorm/mul_2k
batchnorm/subSub	add_1:z:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:2
batchnorm/sub
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:?????????2
batchnorm/add_1s

Identity_6Identitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:?????????2

Identity_6Π
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^AssignMovingAvg_2!^AssignMovingAvg_2/ReadVariableOp^AssignMovingAvg_3!^AssignMovingAvg_3/ReadVariableOp^AssignNewValue^Maximum/ReadVariableOp^ReadVariableOp^add_1/ReadVariableOp^mul/ReadVariableOp^mul_1/ReadVariableOp^mul_2/ReadVariableOp^sub/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"!

identity_6Identity_6:output:0*(
_construction_contextkEagerRuntime*5
_input_shapes$
":?????????: : : : : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp2&
AssignMovingAvg_2AssignMovingAvg_22D
 AssignMovingAvg_2/ReadVariableOp AssignMovingAvg_2/ReadVariableOp2&
AssignMovingAvg_3AssignMovingAvg_32D
 AssignMovingAvg_3/ReadVariableOp AssignMovingAvg_3/ReadVariableOp2 
AssignNewValueAssignNewValue20
Maximum/ReadVariableOpMaximum/ReadVariableOp2 
ReadVariableOpReadVariableOp2,
add_1/ReadVariableOpadd_1/ReadVariableOp2(
mul/ReadVariableOpmul/ReadVariableOp2,
mul_1/ReadVariableOpmul_1/ReadVariableOp2,
mul_2/ReadVariableOpmul_2/ReadVariableOp2(
sub/ReadVariableOpsub/ReadVariableOp:P L
(
_output_shapes
:?????????
 
_user_specified_nameinputs
φ
c
E__inference_dropout_7_layer_call_and_return_conditional_losses_598811

inputs

identity_1[
IdentityIdentityinputs*
T0*(
_output_shapes
:?????????2

Identityj

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:?????????2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:?????????:P L
(
_output_shapes
:?????????
 
_user_specified_nameinputs
Z
Ζ
Q__inference_batch_normalization_5_layer_call_and_return_conditional_losses_601122

inputs.
maximum_readvariableop_resource:	*
sub_readvariableop_resource:	*
mul_readvariableop_resource:	,
add_1_readvariableop_resource:	8
)assignmovingavg_2_readvariableop_resource:	8
)assignmovingavg_3_readvariableop_resource:	&
assignnewvalue_resource:	

identity_6’AssignMovingAvg’AssignMovingAvg/ReadVariableOp’AssignMovingAvg_1’ AssignMovingAvg_1/ReadVariableOp’AssignMovingAvg_2’ AssignMovingAvg_2/ReadVariableOp’AssignMovingAvg_3’ AssignMovingAvg_3/ReadVariableOp’AssignNewValue’Maximum/ReadVariableOp’ReadVariableOp’add_1/ReadVariableOp’mul/ReadVariableOp’mul_1/ReadVariableOp’mul_2/ReadVariableOp’sub/ReadVariableOp
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2 
moments/mean/reduction_indices
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	*
	keep_dims(2
moments/mean}
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes
:	2
moments/StopGradient₯
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*(
_output_shapes
:?????????2
moments/SquaredDifference
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2$
"moments/variance/reduction_indices³
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	*
	keep_dims(2
moments/variance
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 2
moments/Squeeze
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 2
moments/Squeeze_1S
add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
add/ye
addAddV2moments/Squeeze_1:output:0add/y:output:0*
T0*
_output_shapes	
:2
addC
SqrtSqrtadd:z:0*
T0*
_output_shapes	
:2
SqrtY
Sqrt_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *o:2

Sqrt_1/xL
Sqrt_1SqrtSqrt_1/x:output:0*
T0*
_output_shapes
: 2
Sqrt_1
Maximum/ReadVariableOpReadVariableOpmaximum_readvariableop_resource*
_output_shapes	
:*
dtype02
Maximum/ReadVariableOpo
MaximumMaximumMaximum/ReadVariableOp:value:0
Sqrt_1:y:0*
T0*
_output_shapes	
:2	
MaximumZ
truedivRealDivSqrt:y:0Maximum:z:0*
T0*
_output_shapes	
:2	
truediv
sub/ReadVariableOpReadVariableOpsub_readvariableop_resource*
_output_shapes	
:*
dtype02
sub/ReadVariableOpm
subSubmoments/Squeeze:output:0sub/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
sub]
	truediv_1RealDivsub:z:0Maximum:z:0*
T0*
_output_shapes	
:2
	truediv_1v
IdentityIdentitymoments/Squeeze:output:0^truediv
^truediv_1*
T0*
_output_shapes	
:2

Identityj

Identity_1IdentitySqrt:y:0^truediv
^truediv_1*
T0*
_output_shapes	
:2

Identity_1]

Identity_2IdentityIdentity:output:0*
T0*
_output_shapes	
:2

Identity_2s
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
Χ#<2
AssignMovingAvg/decay
AssignMovingAvg/ReadVariableOpReadVariableOpsub_readvariableop_resource*
_output_shapes	
:*
dtype02 
AssignMovingAvg/ReadVariableOp
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0Identity_2:output:0*
T0*
_output_shapes	
:2
AssignMovingAvg/sub
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:2
AssignMovingAvg/mulΘ
AssignMovingAvgAssignSubVariableOpsub_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp^sub/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_

Identity_3IdentityIdentity_1:output:0*
T0*
_output_shapes	
:2

Identity_3w
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
Χ#<2
AssignMovingAvg_1/decay‘
 AssignMovingAvg_1/ReadVariableOpReadVariableOpmaximum_readvariableop_resource*
_output_shapes	
:*
dtype02"
 AssignMovingAvg_1/ReadVariableOp
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0Identity_3:output:0*
T0*
_output_shapes	
:2
AssignMovingAvg_1/sub
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:2
AssignMovingAvg_1/mulΨ
AssignMovingAvg_1AssignSubVariableOpmaximum_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp^Maximum/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_1

Identity_4IdentityIdentity:output:0^AssignMovingAvg^AssignMovingAvg_1*
T0*
_output_shapes	
:2

Identity_4

Identity_5Identitymoments/Squeeze_1:output:0^AssignMovingAvg^AssignMovingAvg_1*
T0*
_output_shapes	
:2

Identity_5W
renorm_rStopGradienttruediv:z:0*
T0*
_output_shapes	
:2

renorm_rY
renorm_dStopGradienttruediv_1:z:0*
T0*
_output_shapes	
:2

renorm_d
mul/ReadVariableOpReadVariableOpmul_readvariableop_resource*
_output_shapes	
:*
dtype02
mul/ReadVariableOpf
mulMulrenorm_r:output:0mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
mul
mul_1/ReadVariableOpReadVariableOpmul_readvariableop_resource*
_output_shapes	
:*
dtype02
mul_1/ReadVariableOpl
mul_1Mulrenorm_d:output:0mul_1/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
mul_1
add_1/ReadVariableOpReadVariableOpadd_1_readvariableop_resource*
_output_shapes	
:*
dtype02
add_1/ReadVariableOpf
add_1AddV2	mul_1:z:0add_1/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
add_1w
AssignMovingAvg_2/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
Χ#<2
AssignMovingAvg_2/decay«
 AssignMovingAvg_2/ReadVariableOpReadVariableOp)assignmovingavg_2_readvariableop_resource*
_output_shapes	
:*
dtype02"
 AssignMovingAvg_2/ReadVariableOp
AssignMovingAvg_2/subSub(AssignMovingAvg_2/ReadVariableOp:value:0Identity_4:output:0*
T0*
_output_shapes	
:2
AssignMovingAvg_2/sub
AssignMovingAvg_2/mulMulAssignMovingAvg_2/sub:z:0 AssignMovingAvg_2/decay:output:0*
T0*
_output_shapes	
:2
AssignMovingAvg_2/mulΙ
AssignMovingAvg_2AssignSubVariableOp)assignmovingavg_2_readvariableop_resourceAssignMovingAvg_2/mul:z:0!^AssignMovingAvg_2/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_2W
add_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2	
add_2/yd
add_2AddV2Identity_5:output:0add_2/y:output:0*
T0*
_output_shapes	
:2
add_2I
Sqrt_2Sqrt	add_2:z:0*
T0*
_output_shapes	
:2
Sqrt_2w
AssignMovingAvg_3/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
Χ#<2
AssignMovingAvg_3/decay«
 AssignMovingAvg_3/ReadVariableOpReadVariableOp)assignmovingavg_3_readvariableop_resource*
_output_shapes	
:*
dtype02"
 AssignMovingAvg_3/ReadVariableOp
AssignMovingAvg_3/subSub(AssignMovingAvg_3/ReadVariableOp:value:0
Sqrt_2:y:0*
T0*
_output_shapes	
:2
AssignMovingAvg_3/sub
AssignMovingAvg_3/mulMulAssignMovingAvg_3/sub:z:0 AssignMovingAvg_3/decay:output:0*
T0*
_output_shapes	
:2
AssignMovingAvg_3/mulΙ
AssignMovingAvg_3AssignSubVariableOp)assignmovingavg_3_readvariableop_resourceAssignMovingAvg_3/mul:z:0!^AssignMovingAvg_3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_3
ReadVariableOpReadVariableOp)assignmovingavg_3_readvariableop_resource^AssignMovingAvg_3*
_output_shapes	
:*
dtype02
ReadVariableOp§
mul_2/ReadVariableOpReadVariableOp)assignmovingavg_3_readvariableop_resource^AssignMovingAvg_3*
_output_shapes	
:*
dtype02
mul_2/ReadVariableOpq
mul_2MulReadVariableOp:value:0mul_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
mul_2W
sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2	
sub_1/yX
sub_1Sub	mul_2:z:0sub_1/y:output:0*
T0*
_output_shapes	
:2
sub_1E
ReluRelu	sub_1:z:0*
T0*
_output_shapes	
:2
Relu
AssignNewValueAssignVariableOpassignnewvalue_resourceRelu:activations:0*
_output_shapes
 *
dtype02
AssignNewValueg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batchnorm/add/y
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:2
batchnorm/Rsqrti
batchnorm/mulMulbatchnorm/Rsqrt:y:0mul:z:0*
T0*
_output_shapes	
:2
batchnorm/mulw
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:?????????2
batchnorm/mul_1|
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:2
batchnorm/mul_2k
batchnorm/subSub	add_1:z:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:2
batchnorm/sub
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:?????????2
batchnorm/add_1s

Identity_6Identitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:?????????2

Identity_6Π
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^AssignMovingAvg_2!^AssignMovingAvg_2/ReadVariableOp^AssignMovingAvg_3!^AssignMovingAvg_3/ReadVariableOp^AssignNewValue^Maximum/ReadVariableOp^ReadVariableOp^add_1/ReadVariableOp^mul/ReadVariableOp^mul_1/ReadVariableOp^mul_2/ReadVariableOp^sub/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"!

identity_6Identity_6:output:0*(
_construction_contextkEagerRuntime*5
_input_shapes$
":?????????: : : : : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp2&
AssignMovingAvg_2AssignMovingAvg_22D
 AssignMovingAvg_2/ReadVariableOp AssignMovingAvg_2/ReadVariableOp2&
AssignMovingAvg_3AssignMovingAvg_32D
 AssignMovingAvg_3/ReadVariableOp AssignMovingAvg_3/ReadVariableOp2 
AssignNewValueAssignNewValue20
Maximum/ReadVariableOpMaximum/ReadVariableOp2 
ReadVariableOpReadVariableOp2,
add_1/ReadVariableOpadd_1/ReadVariableOp2(
mul/ReadVariableOpmul/ReadVariableOp2,
mul_1/ReadVariableOpmul_1/ReadVariableOp2,
mul_2/ReadVariableOpmul_2/ReadVariableOp2(
sub/ReadVariableOpsub/ReadVariableOp:P L
(
_output_shapes
:?????????
 
_user_specified_nameinputs
έY
Ώ
Q__inference_batch_normalization_4_layer_call_and_return_conditional_losses_600946

inputs-
maximum_readvariableop_resource:	)
sub_readvariableop_resource:	)
mul_readvariableop_resource:	+
add_1_readvariableop_resource:	7
)assignmovingavg_2_readvariableop_resource:	7
)assignmovingavg_3_readvariableop_resource:	%
assignnewvalue_resource:	

identity_6’AssignMovingAvg’AssignMovingAvg/ReadVariableOp’AssignMovingAvg_1’ AssignMovingAvg_1/ReadVariableOp’AssignMovingAvg_2’ AssignMovingAvg_2/ReadVariableOp’AssignMovingAvg_3’ AssignMovingAvg_3/ReadVariableOp’AssignNewValue’Maximum/ReadVariableOp’ReadVariableOp’add_1/ReadVariableOp’mul/ReadVariableOp’mul_1/ReadVariableOp’mul_2/ReadVariableOp’sub/ReadVariableOp
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2 
moments/mean/reduction_indices
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:	*
	keep_dims(2
moments/mean|
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes

:	2
moments/StopGradient€
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*'
_output_shapes
:?????????	2
moments/SquaredDifference
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2$
"moments/variance/reduction_indices²
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:	*
	keep_dims(2
moments/variance
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:	*
squeeze_dims
 2
moments/Squeeze
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:	*
squeeze_dims
 2
moments/Squeeze_1S
add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
add/yd
addAddV2moments/Squeeze_1:output:0add/y:output:0*
T0*
_output_shapes
:	2
addB
SqrtSqrtadd:z:0*
T0*
_output_shapes
:	2
SqrtY
Sqrt_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *o:2

Sqrt_1/xL
Sqrt_1SqrtSqrt_1/x:output:0*
T0*
_output_shapes
: 2
Sqrt_1
Maximum/ReadVariableOpReadVariableOpmaximum_readvariableop_resource*
_output_shapes
:	*
dtype02
Maximum/ReadVariableOpn
MaximumMaximumMaximum/ReadVariableOp:value:0
Sqrt_1:y:0*
T0*
_output_shapes
:	2	
MaximumY
truedivRealDivSqrt:y:0Maximum:z:0*
T0*
_output_shapes
:	2	
truediv
sub/ReadVariableOpReadVariableOpsub_readvariableop_resource*
_output_shapes
:	*
dtype02
sub/ReadVariableOpl
subSubmoments/Squeeze:output:0sub/ReadVariableOp:value:0*
T0*
_output_shapes
:	2
sub\
	truediv_1RealDivsub:z:0Maximum:z:0*
T0*
_output_shapes
:	2
	truediv_1u
IdentityIdentitymoments/Squeeze:output:0^truediv
^truediv_1*
T0*
_output_shapes
:	2

Identityi

Identity_1IdentitySqrt:y:0^truediv
^truediv_1*
T0*
_output_shapes
:	2

Identity_1\

Identity_2IdentityIdentity:output:0*
T0*
_output_shapes
:	2

Identity_2s
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
Χ#<2
AssignMovingAvg/decay
AssignMovingAvg/ReadVariableOpReadVariableOpsub_readvariableop_resource*
_output_shapes
:	*
dtype02 
AssignMovingAvg/ReadVariableOp
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0Identity_2:output:0*
T0*
_output_shapes
:	2
AssignMovingAvg/sub
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:	2
AssignMovingAvg/mulΘ
AssignMovingAvgAssignSubVariableOpsub_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp^sub/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg^

Identity_3IdentityIdentity_1:output:0*
T0*
_output_shapes
:	2

Identity_3w
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
Χ#<2
AssignMovingAvg_1/decay 
 AssignMovingAvg_1/ReadVariableOpReadVariableOpmaximum_readvariableop_resource*
_output_shapes
:	*
dtype02"
 AssignMovingAvg_1/ReadVariableOp
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0Identity_3:output:0*
T0*
_output_shapes
:	2
AssignMovingAvg_1/sub
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:	2
AssignMovingAvg_1/mulΨ
AssignMovingAvg_1AssignSubVariableOpmaximum_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp^Maximum/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_1

Identity_4IdentityIdentity:output:0^AssignMovingAvg^AssignMovingAvg_1*
T0*
_output_shapes
:	2

Identity_4

Identity_5Identitymoments/Squeeze_1:output:0^AssignMovingAvg^AssignMovingAvg_1*
T0*
_output_shapes
:	2

Identity_5V
renorm_rStopGradienttruediv:z:0*
T0*
_output_shapes
:	2

renorm_rX
renorm_dStopGradienttruediv_1:z:0*
T0*
_output_shapes
:	2

renorm_d
mul/ReadVariableOpReadVariableOpmul_readvariableop_resource*
_output_shapes
:	*
dtype02
mul/ReadVariableOpe
mulMulrenorm_r:output:0mul/ReadVariableOp:value:0*
T0*
_output_shapes
:	2
mul
mul_1/ReadVariableOpReadVariableOpmul_readvariableop_resource*
_output_shapes
:	*
dtype02
mul_1/ReadVariableOpk
mul_1Mulrenorm_d:output:0mul_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	2
mul_1
add_1/ReadVariableOpReadVariableOpadd_1_readvariableop_resource*
_output_shapes
:	*
dtype02
add_1/ReadVariableOpe
add_1AddV2	mul_1:z:0add_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	2
add_1w
AssignMovingAvg_2/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
Χ#<2
AssignMovingAvg_2/decayͺ
 AssignMovingAvg_2/ReadVariableOpReadVariableOp)assignmovingavg_2_readvariableop_resource*
_output_shapes
:	*
dtype02"
 AssignMovingAvg_2/ReadVariableOp
AssignMovingAvg_2/subSub(AssignMovingAvg_2/ReadVariableOp:value:0Identity_4:output:0*
T0*
_output_shapes
:	2
AssignMovingAvg_2/sub
AssignMovingAvg_2/mulMulAssignMovingAvg_2/sub:z:0 AssignMovingAvg_2/decay:output:0*
T0*
_output_shapes
:	2
AssignMovingAvg_2/mulΙ
AssignMovingAvg_2AssignSubVariableOp)assignmovingavg_2_readvariableop_resourceAssignMovingAvg_2/mul:z:0!^AssignMovingAvg_2/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_2W
add_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2	
add_2/yc
add_2AddV2Identity_5:output:0add_2/y:output:0*
T0*
_output_shapes
:	2
add_2H
Sqrt_2Sqrt	add_2:z:0*
T0*
_output_shapes
:	2
Sqrt_2w
AssignMovingAvg_3/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
Χ#<2
AssignMovingAvg_3/decayͺ
 AssignMovingAvg_3/ReadVariableOpReadVariableOp)assignmovingavg_3_readvariableop_resource*
_output_shapes
:	*
dtype02"
 AssignMovingAvg_3/ReadVariableOp
AssignMovingAvg_3/subSub(AssignMovingAvg_3/ReadVariableOp:value:0
Sqrt_2:y:0*
T0*
_output_shapes
:	2
AssignMovingAvg_3/sub
AssignMovingAvg_3/mulMulAssignMovingAvg_3/sub:z:0 AssignMovingAvg_3/decay:output:0*
T0*
_output_shapes
:	2
AssignMovingAvg_3/mulΙ
AssignMovingAvg_3AssignSubVariableOp)assignmovingavg_3_readvariableop_resourceAssignMovingAvg_3/mul:z:0!^AssignMovingAvg_3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_3
ReadVariableOpReadVariableOp)assignmovingavg_3_readvariableop_resource^AssignMovingAvg_3*
_output_shapes
:	*
dtype02
ReadVariableOp¦
mul_2/ReadVariableOpReadVariableOp)assignmovingavg_3_readvariableop_resource^AssignMovingAvg_3*
_output_shapes
:	*
dtype02
mul_2/ReadVariableOpp
mul_2MulReadVariableOp:value:0mul_2/ReadVariableOp:value:0*
T0*
_output_shapes
:	2
mul_2W
sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2	
sub_1/yW
sub_1Sub	mul_2:z:0sub_1/y:output:0*
T0*
_output_shapes
:	2
sub_1D
ReluRelu	sub_1:z:0*
T0*
_output_shapes
:	2
Relu
AssignNewValueAssignVariableOpassignnewvalue_resourceRelu:activations:0*
_output_shapes
 *
dtype02
AssignNewValueg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batchnorm/add/y
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:	2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:	2
batchnorm/Rsqrth
batchnorm/mulMulbatchnorm/Rsqrt:y:0mul:z:0*
T0*
_output_shapes
:	2
batchnorm/mulv
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:?????????	2
batchnorm/mul_1{
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:	2
batchnorm/mul_2j
batchnorm/subSub	add_1:z:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:	2
batchnorm/sub
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:?????????	2
batchnorm/add_1r

Identity_6Identitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:?????????	2

Identity_6Π
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^AssignMovingAvg_2!^AssignMovingAvg_2/ReadVariableOp^AssignMovingAvg_3!^AssignMovingAvg_3/ReadVariableOp^AssignNewValue^Maximum/ReadVariableOp^ReadVariableOp^add_1/ReadVariableOp^mul/ReadVariableOp^mul_1/ReadVariableOp^mul_2/ReadVariableOp^sub/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"!

identity_6Identity_6:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????	: : : : : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp2&
AssignMovingAvg_2AssignMovingAvg_22D
 AssignMovingAvg_2/ReadVariableOp AssignMovingAvg_2/ReadVariableOp2&
AssignMovingAvg_3AssignMovingAvg_32D
 AssignMovingAvg_3/ReadVariableOp AssignMovingAvg_3/ReadVariableOp2 
AssignNewValueAssignNewValue20
Maximum/ReadVariableOpMaximum/ReadVariableOp2 
ReadVariableOpReadVariableOp2,
add_1/ReadVariableOpadd_1/ReadVariableOp2(
mul/ReadVariableOpmul/ReadVariableOp2,
mul_1/ReadVariableOpmul_1/ReadVariableOp2,
mul_2/ReadVariableOpmul_2/ReadVariableOp2(
sub/ReadVariableOpsub/ReadVariableOp:O K
'
_output_shapes
:?????????	
 
_user_specified_nameinputs

ψ
D__inference_dense_24_layer_call_and_return_conditional_losses_601517

inputs2
matmul_readvariableop_resource:
.
biasadd_readvariableop_resource:	
identity’BiasAdd/ReadVariableOp’MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:?????????2
Relun
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:?????????2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:?????????
 
_user_specified_nameinputs
Z
Ζ
Q__inference_batch_normalization_5_layer_call_and_return_conditional_losses_597501

inputs.
maximum_readvariableop_resource:	*
sub_readvariableop_resource:	*
mul_readvariableop_resource:	,
add_1_readvariableop_resource:	8
)assignmovingavg_2_readvariableop_resource:	8
)assignmovingavg_3_readvariableop_resource:	&
assignnewvalue_resource:	

identity_6’AssignMovingAvg’AssignMovingAvg/ReadVariableOp’AssignMovingAvg_1’ AssignMovingAvg_1/ReadVariableOp’AssignMovingAvg_2’ AssignMovingAvg_2/ReadVariableOp’AssignMovingAvg_3’ AssignMovingAvg_3/ReadVariableOp’AssignNewValue’Maximum/ReadVariableOp’ReadVariableOp’add_1/ReadVariableOp’mul/ReadVariableOp’mul_1/ReadVariableOp’mul_2/ReadVariableOp’sub/ReadVariableOp
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2 
moments/mean/reduction_indices
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	*
	keep_dims(2
moments/mean}
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes
:	2
moments/StopGradient₯
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*(
_output_shapes
:?????????2
moments/SquaredDifference
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2$
"moments/variance/reduction_indices³
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	*
	keep_dims(2
moments/variance
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 2
moments/Squeeze
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 2
moments/Squeeze_1S
add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
add/ye
addAddV2moments/Squeeze_1:output:0add/y:output:0*
T0*
_output_shapes	
:2
addC
SqrtSqrtadd:z:0*
T0*
_output_shapes	
:2
SqrtY
Sqrt_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *o:2

Sqrt_1/xL
Sqrt_1SqrtSqrt_1/x:output:0*
T0*
_output_shapes
: 2
Sqrt_1
Maximum/ReadVariableOpReadVariableOpmaximum_readvariableop_resource*
_output_shapes	
:*
dtype02
Maximum/ReadVariableOpo
MaximumMaximumMaximum/ReadVariableOp:value:0
Sqrt_1:y:0*
T0*
_output_shapes	
:2	
MaximumZ
truedivRealDivSqrt:y:0Maximum:z:0*
T0*
_output_shapes	
:2	
truediv
sub/ReadVariableOpReadVariableOpsub_readvariableop_resource*
_output_shapes	
:*
dtype02
sub/ReadVariableOpm
subSubmoments/Squeeze:output:0sub/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
sub]
	truediv_1RealDivsub:z:0Maximum:z:0*
T0*
_output_shapes	
:2
	truediv_1v
IdentityIdentitymoments/Squeeze:output:0^truediv
^truediv_1*
T0*
_output_shapes	
:2

Identityj

Identity_1IdentitySqrt:y:0^truediv
^truediv_1*
T0*
_output_shapes	
:2

Identity_1]

Identity_2IdentityIdentity:output:0*
T0*
_output_shapes	
:2

Identity_2s
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
Χ#<2
AssignMovingAvg/decay
AssignMovingAvg/ReadVariableOpReadVariableOpsub_readvariableop_resource*
_output_shapes	
:*
dtype02 
AssignMovingAvg/ReadVariableOp
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0Identity_2:output:0*
T0*
_output_shapes	
:2
AssignMovingAvg/sub
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:2
AssignMovingAvg/mulΘ
AssignMovingAvgAssignSubVariableOpsub_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp^sub/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_

Identity_3IdentityIdentity_1:output:0*
T0*
_output_shapes	
:2

Identity_3w
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
Χ#<2
AssignMovingAvg_1/decay‘
 AssignMovingAvg_1/ReadVariableOpReadVariableOpmaximum_readvariableop_resource*
_output_shapes	
:*
dtype02"
 AssignMovingAvg_1/ReadVariableOp
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0Identity_3:output:0*
T0*
_output_shapes	
:2
AssignMovingAvg_1/sub
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:2
AssignMovingAvg_1/mulΨ
AssignMovingAvg_1AssignSubVariableOpmaximum_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp^Maximum/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_1

Identity_4IdentityIdentity:output:0^AssignMovingAvg^AssignMovingAvg_1*
T0*
_output_shapes	
:2

Identity_4

Identity_5Identitymoments/Squeeze_1:output:0^AssignMovingAvg^AssignMovingAvg_1*
T0*
_output_shapes	
:2

Identity_5W
renorm_rStopGradienttruediv:z:0*
T0*
_output_shapes	
:2

renorm_rY
renorm_dStopGradienttruediv_1:z:0*
T0*
_output_shapes	
:2

renorm_d
mul/ReadVariableOpReadVariableOpmul_readvariableop_resource*
_output_shapes	
:*
dtype02
mul/ReadVariableOpf
mulMulrenorm_r:output:0mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
mul
mul_1/ReadVariableOpReadVariableOpmul_readvariableop_resource*
_output_shapes	
:*
dtype02
mul_1/ReadVariableOpl
mul_1Mulrenorm_d:output:0mul_1/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
mul_1
add_1/ReadVariableOpReadVariableOpadd_1_readvariableop_resource*
_output_shapes	
:*
dtype02
add_1/ReadVariableOpf
add_1AddV2	mul_1:z:0add_1/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
add_1w
AssignMovingAvg_2/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
Χ#<2
AssignMovingAvg_2/decay«
 AssignMovingAvg_2/ReadVariableOpReadVariableOp)assignmovingavg_2_readvariableop_resource*
_output_shapes	
:*
dtype02"
 AssignMovingAvg_2/ReadVariableOp
AssignMovingAvg_2/subSub(AssignMovingAvg_2/ReadVariableOp:value:0Identity_4:output:0*
T0*
_output_shapes	
:2
AssignMovingAvg_2/sub
AssignMovingAvg_2/mulMulAssignMovingAvg_2/sub:z:0 AssignMovingAvg_2/decay:output:0*
T0*
_output_shapes	
:2
AssignMovingAvg_2/mulΙ
AssignMovingAvg_2AssignSubVariableOp)assignmovingavg_2_readvariableop_resourceAssignMovingAvg_2/mul:z:0!^AssignMovingAvg_2/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_2W
add_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2	
add_2/yd
add_2AddV2Identity_5:output:0add_2/y:output:0*
T0*
_output_shapes	
:2
add_2I
Sqrt_2Sqrt	add_2:z:0*
T0*
_output_shapes	
:2
Sqrt_2w
AssignMovingAvg_3/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
Χ#<2
AssignMovingAvg_3/decay«
 AssignMovingAvg_3/ReadVariableOpReadVariableOp)assignmovingavg_3_readvariableop_resource*
_output_shapes	
:*
dtype02"
 AssignMovingAvg_3/ReadVariableOp
AssignMovingAvg_3/subSub(AssignMovingAvg_3/ReadVariableOp:value:0
Sqrt_2:y:0*
T0*
_output_shapes	
:2
AssignMovingAvg_3/sub
AssignMovingAvg_3/mulMulAssignMovingAvg_3/sub:z:0 AssignMovingAvg_3/decay:output:0*
T0*
_output_shapes	
:2
AssignMovingAvg_3/mulΙ
AssignMovingAvg_3AssignSubVariableOp)assignmovingavg_3_readvariableop_resourceAssignMovingAvg_3/mul:z:0!^AssignMovingAvg_3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_3
ReadVariableOpReadVariableOp)assignmovingavg_3_readvariableop_resource^AssignMovingAvg_3*
_output_shapes	
:*
dtype02
ReadVariableOp§
mul_2/ReadVariableOpReadVariableOp)assignmovingavg_3_readvariableop_resource^AssignMovingAvg_3*
_output_shapes	
:*
dtype02
mul_2/ReadVariableOpq
mul_2MulReadVariableOp:value:0mul_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
mul_2W
sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2	
sub_1/yX
sub_1Sub	mul_2:z:0sub_1/y:output:0*
T0*
_output_shapes	
:2
sub_1E
ReluRelu	sub_1:z:0*
T0*
_output_shapes	
:2
Relu
AssignNewValueAssignVariableOpassignnewvalue_resourceRelu:activations:0*
_output_shapes
 *
dtype02
AssignNewValueg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batchnorm/add/y
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:2
batchnorm/Rsqrti
batchnorm/mulMulbatchnorm/Rsqrt:y:0mul:z:0*
T0*
_output_shapes	
:2
batchnorm/mulw
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:?????????2
batchnorm/mul_1|
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:2
batchnorm/mul_2k
batchnorm/subSub	add_1:z:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:2
batchnorm/sub
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:?????????2
batchnorm/add_1s

Identity_6Identitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:?????????2

Identity_6Π
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^AssignMovingAvg_2!^AssignMovingAvg_2/ReadVariableOp^AssignMovingAvg_3!^AssignMovingAvg_3/ReadVariableOp^AssignNewValue^Maximum/ReadVariableOp^ReadVariableOp^add_1/ReadVariableOp^mul/ReadVariableOp^mul_1/ReadVariableOp^mul_2/ReadVariableOp^sub/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"!

identity_6Identity_6:output:0*(
_construction_contextkEagerRuntime*5
_input_shapes$
":?????????: : : : : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp2&
AssignMovingAvg_2AssignMovingAvg_22D
 AssignMovingAvg_2/ReadVariableOp AssignMovingAvg_2/ReadVariableOp2&
AssignMovingAvg_3AssignMovingAvg_32D
 AssignMovingAvg_3/ReadVariableOp AssignMovingAvg_3/ReadVariableOp2 
AssignNewValueAssignNewValue20
Maximum/ReadVariableOpMaximum/ReadVariableOp2 
ReadVariableOpReadVariableOp2,
add_1/ReadVariableOpadd_1/ReadVariableOp2(
mul/ReadVariableOpmul/ReadVariableOp2,
mul_1/ReadVariableOpmul_1/ReadVariableOp2,
mul_2/ReadVariableOpmul_2/ReadVariableOp2(
sub/ReadVariableOpsub/ReadVariableOp:P L
(
_output_shapes
:?????????
 
_user_specified_nameinputs
Ωύ
©N
"__inference__traced_restore_602660
file_prefix:
,assignvariableop_batch_normalization_4_gamma:	;
-assignvariableop_1_batch_normalization_4_beta:	B
4assignvariableop_2_batch_normalization_4_moving_mean:	F
8assignvariableop_3_batch_normalization_4_moving_variance:	D
6assignvariableop_4_batch_normalization_4_moving_stddev:	B
4assignvariableop_5_batch_normalization_4_renorm_mean:	D
6assignvariableop_6_batch_normalization_4_renorm_stddev:	5
"assignvariableop_7_dense_21_kernel:		/
 assignvariableop_8_dense_21_bias:	=
.assignvariableop_9_batch_normalization_5_gamma:	=
.assignvariableop_10_batch_normalization_5_beta:	D
5assignvariableop_11_batch_normalization_5_moving_mean:	H
9assignvariableop_12_batch_normalization_5_moving_variance:	F
7assignvariableop_13_batch_normalization_5_moving_stddev:	D
5assignvariableop_14_batch_normalization_5_renorm_mean:	F
7assignvariableop_15_batch_normalization_5_renorm_stddev:	7
#assignvariableop_16_dense_22_kernel:
0
!assignvariableop_17_dense_22_bias:	>
/assignvariableop_18_batch_normalization_6_gamma:	=
.assignvariableop_19_batch_normalization_6_beta:	D
5assignvariableop_20_batch_normalization_6_moving_mean:	H
9assignvariableop_21_batch_normalization_6_moving_variance:	F
7assignvariableop_22_batch_normalization_6_moving_stddev:	D
5assignvariableop_23_batch_normalization_6_renorm_mean:	F
7assignvariableop_24_batch_normalization_6_renorm_stddev:	7
#assignvariableop_25_dense_23_kernel:
0
!assignvariableop_26_dense_23_bias:	>
/assignvariableop_27_batch_normalization_7_gamma:	=
.assignvariableop_28_batch_normalization_7_beta:	D
5assignvariableop_29_batch_normalization_7_moving_mean:	H
9assignvariableop_30_batch_normalization_7_moving_variance:	F
7assignvariableop_31_batch_normalization_7_moving_stddev:	D
5assignvariableop_32_batch_normalization_7_renorm_mean:	F
7assignvariableop_33_batch_normalization_7_renorm_stddev:	7
#assignvariableop_34_dense_24_kernel:
0
!assignvariableop_35_dense_24_bias:	>
/assignvariableop_36_batch_normalization_8_gamma:	=
.assignvariableop_37_batch_normalization_8_beta:	D
5assignvariableop_38_batch_normalization_8_moving_mean:	H
9assignvariableop_39_batch_normalization_8_moving_variance:	F
7assignvariableop_40_batch_normalization_8_moving_stddev:	D
5assignvariableop_41_batch_normalization_8_renorm_mean:	F
7assignvariableop_42_batch_normalization_8_renorm_stddev:	6
#assignvariableop_43_dense_25_kernel:	@/
!assignvariableop_44_dense_25_bias:@=
/assignvariableop_45_batch_normalization_9_gamma:@<
.assignvariableop_46_batch_normalization_9_beta:@C
5assignvariableop_47_batch_normalization_9_moving_mean:@G
9assignvariableop_48_batch_normalization_9_moving_variance:@E
7assignvariableop_49_batch_normalization_9_moving_stddev:@C
5assignvariableop_50_batch_normalization_9_renorm_mean:@E
7assignvariableop_51_batch_normalization_9_renorm_stddev:@5
#assignvariableop_52_dense_26_kernel:@ /
!assignvariableop_53_dense_26_bias: 5
#assignvariableop_54_dense_27_kernel: /
!assignvariableop_55_dense_27_bias:'
assignvariableop_56_adam_iter:	 )
assignvariableop_57_adam_beta_1: )
assignvariableop_58_adam_beta_2: (
assignvariableop_59_adam_decay: 0
&assignvariableop_60_adam_learning_rate: #
assignvariableop_61_total: #
assignvariableop_62_count: %
assignvariableop_63_total_1: %
assignvariableop_64_count_1: D
6assignvariableop_65_adam_batch_normalization_4_gamma_m:	C
5assignvariableop_66_adam_batch_normalization_4_beta_m:	=
*assignvariableop_67_adam_dense_21_kernel_m:		7
(assignvariableop_68_adam_dense_21_bias_m:	E
6assignvariableop_69_adam_batch_normalization_5_gamma_m:	D
5assignvariableop_70_adam_batch_normalization_5_beta_m:	>
*assignvariableop_71_adam_dense_22_kernel_m:
7
(assignvariableop_72_adam_dense_22_bias_m:	E
6assignvariableop_73_adam_batch_normalization_6_gamma_m:	D
5assignvariableop_74_adam_batch_normalization_6_beta_m:	>
*assignvariableop_75_adam_dense_23_kernel_m:
7
(assignvariableop_76_adam_dense_23_bias_m:	E
6assignvariableop_77_adam_batch_normalization_7_gamma_m:	D
5assignvariableop_78_adam_batch_normalization_7_beta_m:	>
*assignvariableop_79_adam_dense_24_kernel_m:
7
(assignvariableop_80_adam_dense_24_bias_m:	E
6assignvariableop_81_adam_batch_normalization_8_gamma_m:	D
5assignvariableop_82_adam_batch_normalization_8_beta_m:	=
*assignvariableop_83_adam_dense_25_kernel_m:	@6
(assignvariableop_84_adam_dense_25_bias_m:@D
6assignvariableop_85_adam_batch_normalization_9_gamma_m:@C
5assignvariableop_86_adam_batch_normalization_9_beta_m:@<
*assignvariableop_87_adam_dense_26_kernel_m:@ 6
(assignvariableop_88_adam_dense_26_bias_m: <
*assignvariableop_89_adam_dense_27_kernel_m: 6
(assignvariableop_90_adam_dense_27_bias_m:D
6assignvariableop_91_adam_batch_normalization_4_gamma_v:	C
5assignvariableop_92_adam_batch_normalization_4_beta_v:	=
*assignvariableop_93_adam_dense_21_kernel_v:		7
(assignvariableop_94_adam_dense_21_bias_v:	E
6assignvariableop_95_adam_batch_normalization_5_gamma_v:	D
5assignvariableop_96_adam_batch_normalization_5_beta_v:	>
*assignvariableop_97_adam_dense_22_kernel_v:
7
(assignvariableop_98_adam_dense_22_bias_v:	E
6assignvariableop_99_adam_batch_normalization_6_gamma_v:	E
6assignvariableop_100_adam_batch_normalization_6_beta_v:	?
+assignvariableop_101_adam_dense_23_kernel_v:
8
)assignvariableop_102_adam_dense_23_bias_v:	F
7assignvariableop_103_adam_batch_normalization_7_gamma_v:	E
6assignvariableop_104_adam_batch_normalization_7_beta_v:	?
+assignvariableop_105_adam_dense_24_kernel_v:
8
)assignvariableop_106_adam_dense_24_bias_v:	F
7assignvariableop_107_adam_batch_normalization_8_gamma_v:	E
6assignvariableop_108_adam_batch_normalization_8_beta_v:	>
+assignvariableop_109_adam_dense_25_kernel_v:	@7
)assignvariableop_110_adam_dense_25_bias_v:@E
7assignvariableop_111_adam_batch_normalization_9_gamma_v:@D
6assignvariableop_112_adam_batch_normalization_9_beta_v:@=
+assignvariableop_113_adam_dense_26_kernel_v:@ 7
)assignvariableop_114_adam_dense_26_bias_v: =
+assignvariableop_115_adam_dense_27_kernel_v: 7
)assignvariableop_116_adam_dense_27_bias_v:
identity_118’AssignVariableOp’AssignVariableOp_1’AssignVariableOp_10’AssignVariableOp_100’AssignVariableOp_101’AssignVariableOp_102’AssignVariableOp_103’AssignVariableOp_104’AssignVariableOp_105’AssignVariableOp_106’AssignVariableOp_107’AssignVariableOp_108’AssignVariableOp_109’AssignVariableOp_11’AssignVariableOp_110’AssignVariableOp_111’AssignVariableOp_112’AssignVariableOp_113’AssignVariableOp_114’AssignVariableOp_115’AssignVariableOp_116’AssignVariableOp_12’AssignVariableOp_13’AssignVariableOp_14’AssignVariableOp_15’AssignVariableOp_16’AssignVariableOp_17’AssignVariableOp_18’AssignVariableOp_19’AssignVariableOp_2’AssignVariableOp_20’AssignVariableOp_21’AssignVariableOp_22’AssignVariableOp_23’AssignVariableOp_24’AssignVariableOp_25’AssignVariableOp_26’AssignVariableOp_27’AssignVariableOp_28’AssignVariableOp_29’AssignVariableOp_3’AssignVariableOp_30’AssignVariableOp_31’AssignVariableOp_32’AssignVariableOp_33’AssignVariableOp_34’AssignVariableOp_35’AssignVariableOp_36’AssignVariableOp_37’AssignVariableOp_38’AssignVariableOp_39’AssignVariableOp_4’AssignVariableOp_40’AssignVariableOp_41’AssignVariableOp_42’AssignVariableOp_43’AssignVariableOp_44’AssignVariableOp_45’AssignVariableOp_46’AssignVariableOp_47’AssignVariableOp_48’AssignVariableOp_49’AssignVariableOp_5’AssignVariableOp_50’AssignVariableOp_51’AssignVariableOp_52’AssignVariableOp_53’AssignVariableOp_54’AssignVariableOp_55’AssignVariableOp_56’AssignVariableOp_57’AssignVariableOp_58’AssignVariableOp_59’AssignVariableOp_6’AssignVariableOp_60’AssignVariableOp_61’AssignVariableOp_62’AssignVariableOp_63’AssignVariableOp_64’AssignVariableOp_65’AssignVariableOp_66’AssignVariableOp_67’AssignVariableOp_68’AssignVariableOp_69’AssignVariableOp_7’AssignVariableOp_70’AssignVariableOp_71’AssignVariableOp_72’AssignVariableOp_73’AssignVariableOp_74’AssignVariableOp_75’AssignVariableOp_76’AssignVariableOp_77’AssignVariableOp_78’AssignVariableOp_79’AssignVariableOp_8’AssignVariableOp_80’AssignVariableOp_81’AssignVariableOp_82’AssignVariableOp_83’AssignVariableOp_84’AssignVariableOp_85’AssignVariableOp_86’AssignVariableOp_87’AssignVariableOp_88’AssignVariableOp_89’AssignVariableOp_9’AssignVariableOp_90’AssignVariableOp_91’AssignVariableOp_92’AssignVariableOp_93’AssignVariableOp_94’AssignVariableOp_95’AssignVariableOp_96’AssignVariableOp_97’AssignVariableOp_98’AssignVariableOp_99±@
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:v*
dtype0*½?
value³?B°?vB5layer_with_weights-0/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-0/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-0/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB=layer_with_weights-0/moving_stddev/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-0/renorm_mean/.ATTRIBUTES/VARIABLE_VALUEB=layer_with_weights-0/renorm_stddev/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-2/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-2/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-2/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB=layer_with_weights-2/moving_stddev/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-2/renorm_mean/.ATTRIBUTES/VARIABLE_VALUEB=layer_with_weights-2/renorm_stddev/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-4/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-4/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-4/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB=layer_with_weights-4/moving_stddev/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-4/renorm_mean/.ATTRIBUTES/VARIABLE_VALUEB=layer_with_weights-4/renorm_stddev/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-6/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-6/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-6/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB=layer_with_weights-6/moving_stddev/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-6/renorm_mean/.ATTRIBUTES/VARIABLE_VALUEB=layer_with_weights-6/renorm_stddev/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-8/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-8/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-8/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB=layer_with_weights-8/moving_stddev/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-8/renorm_mean/.ATTRIBUTES/VARIABLE_VALUEB=layer_with_weights-8/renorm_stddev/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-10/gamma/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-10/beta/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-10/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-10/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB>layer_with_weights-10/moving_stddev/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-10/renorm_mean/.ATTRIBUTES/VARIABLE_VALUEB>layer_with_weights-10/renorm_stddev/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-11/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-11/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-12/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-12/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-0/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-2/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-4/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-6/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-8/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-10/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-10/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-11/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-11/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-12/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-0/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-2/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-4/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-6/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-8/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-10/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-10/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-11/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-11/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-12/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_namesύ
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:v*
dtype0*
valueχBτvB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slicesύ
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*ξ
_output_shapesΫ
Ψ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*
dtypesz
x2v	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity«
AssignVariableOpAssignVariableOp,assignvariableop_batch_normalization_4_gammaIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1²
AssignVariableOp_1AssignVariableOp-assignvariableop_1_batch_normalization_4_betaIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2Ή
AssignVariableOp_2AssignVariableOp4assignvariableop_2_batch_normalization_4_moving_meanIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3½
AssignVariableOp_3AssignVariableOp8assignvariableop_3_batch_normalization_4_moving_varianceIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4»
AssignVariableOp_4AssignVariableOp6assignvariableop_4_batch_normalization_4_moving_stddevIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5Ή
AssignVariableOp_5AssignVariableOp4assignvariableop_5_batch_normalization_4_renorm_meanIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6»
AssignVariableOp_6AssignVariableOp6assignvariableop_6_batch_normalization_4_renorm_stddevIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7§
AssignVariableOp_7AssignVariableOp"assignvariableop_7_dense_21_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8₯
AssignVariableOp_8AssignVariableOp assignvariableop_8_dense_21_biasIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9³
AssignVariableOp_9AssignVariableOp.assignvariableop_9_batch_normalization_5_gammaIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10Ά
AssignVariableOp_10AssignVariableOp.assignvariableop_10_batch_normalization_5_betaIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11½
AssignVariableOp_11AssignVariableOp5assignvariableop_11_batch_normalization_5_moving_meanIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12Α
AssignVariableOp_12AssignVariableOp9assignvariableop_12_batch_normalization_5_moving_varianceIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13Ώ
AssignVariableOp_13AssignVariableOp7assignvariableop_13_batch_normalization_5_moving_stddevIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14½
AssignVariableOp_14AssignVariableOp5assignvariableop_14_batch_normalization_5_renorm_meanIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15Ώ
AssignVariableOp_15AssignVariableOp7assignvariableop_15_batch_normalization_5_renorm_stddevIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16«
AssignVariableOp_16AssignVariableOp#assignvariableop_16_dense_22_kernelIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17©
AssignVariableOp_17AssignVariableOp!assignvariableop_17_dense_22_biasIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18·
AssignVariableOp_18AssignVariableOp/assignvariableop_18_batch_normalization_6_gammaIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19Ά
AssignVariableOp_19AssignVariableOp.assignvariableop_19_batch_normalization_6_betaIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20½
AssignVariableOp_20AssignVariableOp5assignvariableop_20_batch_normalization_6_moving_meanIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21Α
AssignVariableOp_21AssignVariableOp9assignvariableop_21_batch_normalization_6_moving_varianceIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22Ώ
AssignVariableOp_22AssignVariableOp7assignvariableop_22_batch_normalization_6_moving_stddevIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23½
AssignVariableOp_23AssignVariableOp5assignvariableop_23_batch_normalization_6_renorm_meanIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24Ώ
AssignVariableOp_24AssignVariableOp7assignvariableop_24_batch_normalization_6_renorm_stddevIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25«
AssignVariableOp_25AssignVariableOp#assignvariableop_25_dense_23_kernelIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26©
AssignVariableOp_26AssignVariableOp!assignvariableop_26_dense_23_biasIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27·
AssignVariableOp_27AssignVariableOp/assignvariableop_27_batch_normalization_7_gammaIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28Ά
AssignVariableOp_28AssignVariableOp.assignvariableop_28_batch_normalization_7_betaIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29½
AssignVariableOp_29AssignVariableOp5assignvariableop_29_batch_normalization_7_moving_meanIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30Α
AssignVariableOp_30AssignVariableOp9assignvariableop_30_batch_normalization_7_moving_varianceIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31Ώ
AssignVariableOp_31AssignVariableOp7assignvariableop_31_batch_normalization_7_moving_stddevIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32½
AssignVariableOp_32AssignVariableOp5assignvariableop_32_batch_normalization_7_renorm_meanIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33Ώ
AssignVariableOp_33AssignVariableOp7assignvariableop_33_batch_normalization_7_renorm_stddevIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34«
AssignVariableOp_34AssignVariableOp#assignvariableop_34_dense_24_kernelIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35©
AssignVariableOp_35AssignVariableOp!assignvariableop_35_dense_24_biasIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36·
AssignVariableOp_36AssignVariableOp/assignvariableop_36_batch_normalization_8_gammaIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37Ά
AssignVariableOp_37AssignVariableOp.assignvariableop_37_batch_normalization_8_betaIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38½
AssignVariableOp_38AssignVariableOp5assignvariableop_38_batch_normalization_8_moving_meanIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39Α
AssignVariableOp_39AssignVariableOp9assignvariableop_39_batch_normalization_8_moving_varianceIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39n
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:2
Identity_40Ώ
AssignVariableOp_40AssignVariableOp7assignvariableop_40_batch_normalization_8_moving_stddevIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_40n
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:2
Identity_41½
AssignVariableOp_41AssignVariableOp5assignvariableop_41_batch_normalization_8_renorm_meanIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_41n
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:2
Identity_42Ώ
AssignVariableOp_42AssignVariableOp7assignvariableop_42_batch_normalization_8_renorm_stddevIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_42n
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:2
Identity_43«
AssignVariableOp_43AssignVariableOp#assignvariableop_43_dense_25_kernelIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_43n
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:2
Identity_44©
AssignVariableOp_44AssignVariableOp!assignvariableop_44_dense_25_biasIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_44n
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:2
Identity_45·
AssignVariableOp_45AssignVariableOp/assignvariableop_45_batch_normalization_9_gammaIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_45n
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:2
Identity_46Ά
AssignVariableOp_46AssignVariableOp.assignvariableop_46_batch_normalization_9_betaIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_46n
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:2
Identity_47½
AssignVariableOp_47AssignVariableOp5assignvariableop_47_batch_normalization_9_moving_meanIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_47n
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:2
Identity_48Α
AssignVariableOp_48AssignVariableOp9assignvariableop_48_batch_normalization_9_moving_varianceIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_48n
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:2
Identity_49Ώ
AssignVariableOp_49AssignVariableOp7assignvariableop_49_batch_normalization_9_moving_stddevIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_49n
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:2
Identity_50½
AssignVariableOp_50AssignVariableOp5assignvariableop_50_batch_normalization_9_renorm_meanIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_50n
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:2
Identity_51Ώ
AssignVariableOp_51AssignVariableOp7assignvariableop_51_batch_normalization_9_renorm_stddevIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_51n
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:2
Identity_52«
AssignVariableOp_52AssignVariableOp#assignvariableop_52_dense_26_kernelIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_52n
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:2
Identity_53©
AssignVariableOp_53AssignVariableOp!assignvariableop_53_dense_26_biasIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_53n
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:2
Identity_54«
AssignVariableOp_54AssignVariableOp#assignvariableop_54_dense_27_kernelIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_54n
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:2
Identity_55©
AssignVariableOp_55AssignVariableOp!assignvariableop_55_dense_27_biasIdentity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_55n
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_56₯
AssignVariableOp_56AssignVariableOpassignvariableop_56_adam_iterIdentity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_56n
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:2
Identity_57§
AssignVariableOp_57AssignVariableOpassignvariableop_57_adam_beta_1Identity_57:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_57n
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:2
Identity_58§
AssignVariableOp_58AssignVariableOpassignvariableop_58_adam_beta_2Identity_58:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_58n
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:2
Identity_59¦
AssignVariableOp_59AssignVariableOpassignvariableop_59_adam_decayIdentity_59:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_59n
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:2
Identity_60?
AssignVariableOp_60AssignVariableOp&assignvariableop_60_adam_learning_rateIdentity_60:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_60n
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:2
Identity_61‘
AssignVariableOp_61AssignVariableOpassignvariableop_61_totalIdentity_61:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_61n
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
:2
Identity_62‘
AssignVariableOp_62AssignVariableOpassignvariableop_62_countIdentity_62:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_62n
Identity_63IdentityRestoreV2:tensors:63"/device:CPU:0*
T0*
_output_shapes
:2
Identity_63£
AssignVariableOp_63AssignVariableOpassignvariableop_63_total_1Identity_63:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_63n
Identity_64IdentityRestoreV2:tensors:64"/device:CPU:0*
T0*
_output_shapes
:2
Identity_64£
AssignVariableOp_64AssignVariableOpassignvariableop_64_count_1Identity_64:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_64n
Identity_65IdentityRestoreV2:tensors:65"/device:CPU:0*
T0*
_output_shapes
:2
Identity_65Ύ
AssignVariableOp_65AssignVariableOp6assignvariableop_65_adam_batch_normalization_4_gamma_mIdentity_65:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_65n
Identity_66IdentityRestoreV2:tensors:66"/device:CPU:0*
T0*
_output_shapes
:2
Identity_66½
AssignVariableOp_66AssignVariableOp5assignvariableop_66_adam_batch_normalization_4_beta_mIdentity_66:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_66n
Identity_67IdentityRestoreV2:tensors:67"/device:CPU:0*
T0*
_output_shapes
:2
Identity_67²
AssignVariableOp_67AssignVariableOp*assignvariableop_67_adam_dense_21_kernel_mIdentity_67:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_67n
Identity_68IdentityRestoreV2:tensors:68"/device:CPU:0*
T0*
_output_shapes
:2
Identity_68°
AssignVariableOp_68AssignVariableOp(assignvariableop_68_adam_dense_21_bias_mIdentity_68:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_68n
Identity_69IdentityRestoreV2:tensors:69"/device:CPU:0*
T0*
_output_shapes
:2
Identity_69Ύ
AssignVariableOp_69AssignVariableOp6assignvariableop_69_adam_batch_normalization_5_gamma_mIdentity_69:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_69n
Identity_70IdentityRestoreV2:tensors:70"/device:CPU:0*
T0*
_output_shapes
:2
Identity_70½
AssignVariableOp_70AssignVariableOp5assignvariableop_70_adam_batch_normalization_5_beta_mIdentity_70:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_70n
Identity_71IdentityRestoreV2:tensors:71"/device:CPU:0*
T0*
_output_shapes
:2
Identity_71²
AssignVariableOp_71AssignVariableOp*assignvariableop_71_adam_dense_22_kernel_mIdentity_71:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_71n
Identity_72IdentityRestoreV2:tensors:72"/device:CPU:0*
T0*
_output_shapes
:2
Identity_72°
AssignVariableOp_72AssignVariableOp(assignvariableop_72_adam_dense_22_bias_mIdentity_72:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_72n
Identity_73IdentityRestoreV2:tensors:73"/device:CPU:0*
T0*
_output_shapes
:2
Identity_73Ύ
AssignVariableOp_73AssignVariableOp6assignvariableop_73_adam_batch_normalization_6_gamma_mIdentity_73:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_73n
Identity_74IdentityRestoreV2:tensors:74"/device:CPU:0*
T0*
_output_shapes
:2
Identity_74½
AssignVariableOp_74AssignVariableOp5assignvariableop_74_adam_batch_normalization_6_beta_mIdentity_74:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_74n
Identity_75IdentityRestoreV2:tensors:75"/device:CPU:0*
T0*
_output_shapes
:2
Identity_75²
AssignVariableOp_75AssignVariableOp*assignvariableop_75_adam_dense_23_kernel_mIdentity_75:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_75n
Identity_76IdentityRestoreV2:tensors:76"/device:CPU:0*
T0*
_output_shapes
:2
Identity_76°
AssignVariableOp_76AssignVariableOp(assignvariableop_76_adam_dense_23_bias_mIdentity_76:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_76n
Identity_77IdentityRestoreV2:tensors:77"/device:CPU:0*
T0*
_output_shapes
:2
Identity_77Ύ
AssignVariableOp_77AssignVariableOp6assignvariableop_77_adam_batch_normalization_7_gamma_mIdentity_77:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_77n
Identity_78IdentityRestoreV2:tensors:78"/device:CPU:0*
T0*
_output_shapes
:2
Identity_78½
AssignVariableOp_78AssignVariableOp5assignvariableop_78_adam_batch_normalization_7_beta_mIdentity_78:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_78n
Identity_79IdentityRestoreV2:tensors:79"/device:CPU:0*
T0*
_output_shapes
:2
Identity_79²
AssignVariableOp_79AssignVariableOp*assignvariableop_79_adam_dense_24_kernel_mIdentity_79:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_79n
Identity_80IdentityRestoreV2:tensors:80"/device:CPU:0*
T0*
_output_shapes
:2
Identity_80°
AssignVariableOp_80AssignVariableOp(assignvariableop_80_adam_dense_24_bias_mIdentity_80:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_80n
Identity_81IdentityRestoreV2:tensors:81"/device:CPU:0*
T0*
_output_shapes
:2
Identity_81Ύ
AssignVariableOp_81AssignVariableOp6assignvariableop_81_adam_batch_normalization_8_gamma_mIdentity_81:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_81n
Identity_82IdentityRestoreV2:tensors:82"/device:CPU:0*
T0*
_output_shapes
:2
Identity_82½
AssignVariableOp_82AssignVariableOp5assignvariableop_82_adam_batch_normalization_8_beta_mIdentity_82:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_82n
Identity_83IdentityRestoreV2:tensors:83"/device:CPU:0*
T0*
_output_shapes
:2
Identity_83²
AssignVariableOp_83AssignVariableOp*assignvariableop_83_adam_dense_25_kernel_mIdentity_83:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_83n
Identity_84IdentityRestoreV2:tensors:84"/device:CPU:0*
T0*
_output_shapes
:2
Identity_84°
AssignVariableOp_84AssignVariableOp(assignvariableop_84_adam_dense_25_bias_mIdentity_84:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_84n
Identity_85IdentityRestoreV2:tensors:85"/device:CPU:0*
T0*
_output_shapes
:2
Identity_85Ύ
AssignVariableOp_85AssignVariableOp6assignvariableop_85_adam_batch_normalization_9_gamma_mIdentity_85:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_85n
Identity_86IdentityRestoreV2:tensors:86"/device:CPU:0*
T0*
_output_shapes
:2
Identity_86½
AssignVariableOp_86AssignVariableOp5assignvariableop_86_adam_batch_normalization_9_beta_mIdentity_86:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_86n
Identity_87IdentityRestoreV2:tensors:87"/device:CPU:0*
T0*
_output_shapes
:2
Identity_87²
AssignVariableOp_87AssignVariableOp*assignvariableop_87_adam_dense_26_kernel_mIdentity_87:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_87n
Identity_88IdentityRestoreV2:tensors:88"/device:CPU:0*
T0*
_output_shapes
:2
Identity_88°
AssignVariableOp_88AssignVariableOp(assignvariableop_88_adam_dense_26_bias_mIdentity_88:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_88n
Identity_89IdentityRestoreV2:tensors:89"/device:CPU:0*
T0*
_output_shapes
:2
Identity_89²
AssignVariableOp_89AssignVariableOp*assignvariableop_89_adam_dense_27_kernel_mIdentity_89:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_89n
Identity_90IdentityRestoreV2:tensors:90"/device:CPU:0*
T0*
_output_shapes
:2
Identity_90°
AssignVariableOp_90AssignVariableOp(assignvariableop_90_adam_dense_27_bias_mIdentity_90:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_90n
Identity_91IdentityRestoreV2:tensors:91"/device:CPU:0*
T0*
_output_shapes
:2
Identity_91Ύ
AssignVariableOp_91AssignVariableOp6assignvariableop_91_adam_batch_normalization_4_gamma_vIdentity_91:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_91n
Identity_92IdentityRestoreV2:tensors:92"/device:CPU:0*
T0*
_output_shapes
:2
Identity_92½
AssignVariableOp_92AssignVariableOp5assignvariableop_92_adam_batch_normalization_4_beta_vIdentity_92:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_92n
Identity_93IdentityRestoreV2:tensors:93"/device:CPU:0*
T0*
_output_shapes
:2
Identity_93²
AssignVariableOp_93AssignVariableOp*assignvariableop_93_adam_dense_21_kernel_vIdentity_93:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_93n
Identity_94IdentityRestoreV2:tensors:94"/device:CPU:0*
T0*
_output_shapes
:2
Identity_94°
AssignVariableOp_94AssignVariableOp(assignvariableop_94_adam_dense_21_bias_vIdentity_94:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_94n
Identity_95IdentityRestoreV2:tensors:95"/device:CPU:0*
T0*
_output_shapes
:2
Identity_95Ύ
AssignVariableOp_95AssignVariableOp6assignvariableop_95_adam_batch_normalization_5_gamma_vIdentity_95:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_95n
Identity_96IdentityRestoreV2:tensors:96"/device:CPU:0*
T0*
_output_shapes
:2
Identity_96½
AssignVariableOp_96AssignVariableOp5assignvariableop_96_adam_batch_normalization_5_beta_vIdentity_96:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_96n
Identity_97IdentityRestoreV2:tensors:97"/device:CPU:0*
T0*
_output_shapes
:2
Identity_97²
AssignVariableOp_97AssignVariableOp*assignvariableop_97_adam_dense_22_kernel_vIdentity_97:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_97n
Identity_98IdentityRestoreV2:tensors:98"/device:CPU:0*
T0*
_output_shapes
:2
Identity_98°
AssignVariableOp_98AssignVariableOp(assignvariableop_98_adam_dense_22_bias_vIdentity_98:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_98n
Identity_99IdentityRestoreV2:tensors:99"/device:CPU:0*
T0*
_output_shapes
:2
Identity_99Ύ
AssignVariableOp_99AssignVariableOp6assignvariableop_99_adam_batch_normalization_6_gamma_vIdentity_99:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_99q
Identity_100IdentityRestoreV2:tensors:100"/device:CPU:0*
T0*
_output_shapes
:2
Identity_100Α
AssignVariableOp_100AssignVariableOp6assignvariableop_100_adam_batch_normalization_6_beta_vIdentity_100:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_100q
Identity_101IdentityRestoreV2:tensors:101"/device:CPU:0*
T0*
_output_shapes
:2
Identity_101Ά
AssignVariableOp_101AssignVariableOp+assignvariableop_101_adam_dense_23_kernel_vIdentity_101:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_101q
Identity_102IdentityRestoreV2:tensors:102"/device:CPU:0*
T0*
_output_shapes
:2
Identity_102΄
AssignVariableOp_102AssignVariableOp)assignvariableop_102_adam_dense_23_bias_vIdentity_102:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_102q
Identity_103IdentityRestoreV2:tensors:103"/device:CPU:0*
T0*
_output_shapes
:2
Identity_103Β
AssignVariableOp_103AssignVariableOp7assignvariableop_103_adam_batch_normalization_7_gamma_vIdentity_103:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_103q
Identity_104IdentityRestoreV2:tensors:104"/device:CPU:0*
T0*
_output_shapes
:2
Identity_104Α
AssignVariableOp_104AssignVariableOp6assignvariableop_104_adam_batch_normalization_7_beta_vIdentity_104:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_104q
Identity_105IdentityRestoreV2:tensors:105"/device:CPU:0*
T0*
_output_shapes
:2
Identity_105Ά
AssignVariableOp_105AssignVariableOp+assignvariableop_105_adam_dense_24_kernel_vIdentity_105:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_105q
Identity_106IdentityRestoreV2:tensors:106"/device:CPU:0*
T0*
_output_shapes
:2
Identity_106΄
AssignVariableOp_106AssignVariableOp)assignvariableop_106_adam_dense_24_bias_vIdentity_106:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_106q
Identity_107IdentityRestoreV2:tensors:107"/device:CPU:0*
T0*
_output_shapes
:2
Identity_107Β
AssignVariableOp_107AssignVariableOp7assignvariableop_107_adam_batch_normalization_8_gamma_vIdentity_107:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_107q
Identity_108IdentityRestoreV2:tensors:108"/device:CPU:0*
T0*
_output_shapes
:2
Identity_108Α
AssignVariableOp_108AssignVariableOp6assignvariableop_108_adam_batch_normalization_8_beta_vIdentity_108:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_108q
Identity_109IdentityRestoreV2:tensors:109"/device:CPU:0*
T0*
_output_shapes
:2
Identity_109Ά
AssignVariableOp_109AssignVariableOp+assignvariableop_109_adam_dense_25_kernel_vIdentity_109:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_109q
Identity_110IdentityRestoreV2:tensors:110"/device:CPU:0*
T0*
_output_shapes
:2
Identity_110΄
AssignVariableOp_110AssignVariableOp)assignvariableop_110_adam_dense_25_bias_vIdentity_110:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_110q
Identity_111IdentityRestoreV2:tensors:111"/device:CPU:0*
T0*
_output_shapes
:2
Identity_111Β
AssignVariableOp_111AssignVariableOp7assignvariableop_111_adam_batch_normalization_9_gamma_vIdentity_111:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_111q
Identity_112IdentityRestoreV2:tensors:112"/device:CPU:0*
T0*
_output_shapes
:2
Identity_112Α
AssignVariableOp_112AssignVariableOp6assignvariableop_112_adam_batch_normalization_9_beta_vIdentity_112:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_112q
Identity_113IdentityRestoreV2:tensors:113"/device:CPU:0*
T0*
_output_shapes
:2
Identity_113Ά
AssignVariableOp_113AssignVariableOp+assignvariableop_113_adam_dense_26_kernel_vIdentity_113:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_113q
Identity_114IdentityRestoreV2:tensors:114"/device:CPU:0*
T0*
_output_shapes
:2
Identity_114΄
AssignVariableOp_114AssignVariableOp)assignvariableop_114_adam_dense_26_bias_vIdentity_114:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_114q
Identity_115IdentityRestoreV2:tensors:115"/device:CPU:0*
T0*
_output_shapes
:2
Identity_115Ά
AssignVariableOp_115AssignVariableOp+assignvariableop_115_adam_dense_27_kernel_vIdentity_115:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_115q
Identity_116IdentityRestoreV2:tensors:116"/device:CPU:0*
T0*
_output_shapes
:2
Identity_116΄
AssignVariableOp_116AssignVariableOp)assignvariableop_116_adam_dense_27_bias_vIdentity_116:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1169
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?
Identity_117Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_100^AssignVariableOp_101^AssignVariableOp_102^AssignVariableOp_103^AssignVariableOp_104^AssignVariableOp_105^AssignVariableOp_106^AssignVariableOp_107^AssignVariableOp_108^AssignVariableOp_109^AssignVariableOp_11^AssignVariableOp_110^AssignVariableOp_111^AssignVariableOp_112^AssignVariableOp_113^AssignVariableOp_114^AssignVariableOp_115^AssignVariableOp_116^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_82^AssignVariableOp_83^AssignVariableOp_84^AssignVariableOp_85^AssignVariableOp_86^AssignVariableOp_87^AssignVariableOp_88^AssignVariableOp_89^AssignVariableOp_9^AssignVariableOp_90^AssignVariableOp_91^AssignVariableOp_92^AssignVariableOp_93^AssignVariableOp_94^AssignVariableOp_95^AssignVariableOp_96^AssignVariableOp_97^AssignVariableOp_98^AssignVariableOp_99^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_117i
Identity_118IdentityIdentity_117:output:0^NoOp_1*
T0*
_output_shapes
: 2
Identity_118ε
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_100^AssignVariableOp_101^AssignVariableOp_102^AssignVariableOp_103^AssignVariableOp_104^AssignVariableOp_105^AssignVariableOp_106^AssignVariableOp_107^AssignVariableOp_108^AssignVariableOp_109^AssignVariableOp_11^AssignVariableOp_110^AssignVariableOp_111^AssignVariableOp_112^AssignVariableOp_113^AssignVariableOp_114^AssignVariableOp_115^AssignVariableOp_116^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_82^AssignVariableOp_83^AssignVariableOp_84^AssignVariableOp_85^AssignVariableOp_86^AssignVariableOp_87^AssignVariableOp_88^AssignVariableOp_89^AssignVariableOp_9^AssignVariableOp_90^AssignVariableOp_91^AssignVariableOp_92^AssignVariableOp_93^AssignVariableOp_94^AssignVariableOp_95^AssignVariableOp_96^AssignVariableOp_97^AssignVariableOp_98^AssignVariableOp_99*"
_acd_function_control_output(*
_output_shapes
 2
NoOp_1"%
identity_118Identity_118:output:0*
_input_shapesο
μ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102,
AssignVariableOp_100AssignVariableOp_1002,
AssignVariableOp_101AssignVariableOp_1012,
AssignVariableOp_102AssignVariableOp_1022,
AssignVariableOp_103AssignVariableOp_1032,
AssignVariableOp_104AssignVariableOp_1042,
AssignVariableOp_105AssignVariableOp_1052,
AssignVariableOp_106AssignVariableOp_1062,
AssignVariableOp_107AssignVariableOp_1072,
AssignVariableOp_108AssignVariableOp_1082,
AssignVariableOp_109AssignVariableOp_1092*
AssignVariableOp_11AssignVariableOp_112,
AssignVariableOp_110AssignVariableOp_1102,
AssignVariableOp_111AssignVariableOp_1112,
AssignVariableOp_112AssignVariableOp_1122,
AssignVariableOp_113AssignVariableOp_1132,
AssignVariableOp_114AssignVariableOp_1142,
AssignVariableOp_115AssignVariableOp_1152,
AssignVariableOp_116AssignVariableOp_1162*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482*
AssignVariableOp_49AssignVariableOp_492(
AssignVariableOp_5AssignVariableOp_52*
AssignVariableOp_50AssignVariableOp_502*
AssignVariableOp_51AssignVariableOp_512*
AssignVariableOp_52AssignVariableOp_522*
AssignVariableOp_53AssignVariableOp_532*
AssignVariableOp_54AssignVariableOp_542*
AssignVariableOp_55AssignVariableOp_552*
AssignVariableOp_56AssignVariableOp_562*
AssignVariableOp_57AssignVariableOp_572*
AssignVariableOp_58AssignVariableOp_582*
AssignVariableOp_59AssignVariableOp_592(
AssignVariableOp_6AssignVariableOp_62*
AssignVariableOp_60AssignVariableOp_602*
AssignVariableOp_61AssignVariableOp_612*
AssignVariableOp_62AssignVariableOp_622*
AssignVariableOp_63AssignVariableOp_632*
AssignVariableOp_64AssignVariableOp_642*
AssignVariableOp_65AssignVariableOp_652*
AssignVariableOp_66AssignVariableOp_662*
AssignVariableOp_67AssignVariableOp_672*
AssignVariableOp_68AssignVariableOp_682*
AssignVariableOp_69AssignVariableOp_692(
AssignVariableOp_7AssignVariableOp_72*
AssignVariableOp_70AssignVariableOp_702*
AssignVariableOp_71AssignVariableOp_712*
AssignVariableOp_72AssignVariableOp_722*
AssignVariableOp_73AssignVariableOp_732*
AssignVariableOp_74AssignVariableOp_742*
AssignVariableOp_75AssignVariableOp_752*
AssignVariableOp_76AssignVariableOp_762*
AssignVariableOp_77AssignVariableOp_772*
AssignVariableOp_78AssignVariableOp_782*
AssignVariableOp_79AssignVariableOp_792(
AssignVariableOp_8AssignVariableOp_82*
AssignVariableOp_80AssignVariableOp_802*
AssignVariableOp_81AssignVariableOp_812*
AssignVariableOp_82AssignVariableOp_822*
AssignVariableOp_83AssignVariableOp_832*
AssignVariableOp_84AssignVariableOp_842*
AssignVariableOp_85AssignVariableOp_852*
AssignVariableOp_86AssignVariableOp_862*
AssignVariableOp_87AssignVariableOp_872*
AssignVariableOp_88AssignVariableOp_882*
AssignVariableOp_89AssignVariableOp_892(
AssignVariableOp_9AssignVariableOp_92*
AssignVariableOp_90AssignVariableOp_902*
AssignVariableOp_91AssignVariableOp_912*
AssignVariableOp_92AssignVariableOp_922*
AssignVariableOp_93AssignVariableOp_932*
AssignVariableOp_94AssignVariableOp_942*
AssignVariableOp_95AssignVariableOp_952*
AssignVariableOp_96AssignVariableOp_962*
AssignVariableOp_97AssignVariableOp_972*
AssignVariableOp_98AssignVariableOp_982*
AssignVariableOp_99AssignVariableOp_99:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix

΄
Q__inference_batch_normalization_5_layer_call_and_return_conditional_losses_601045

inputs0
!batchnorm_readvariableop_resource:	4
%batchnorm_mul_readvariableop_resource:	2
#batchnorm_readvariableop_1_resource:	2
#batchnorm_readvariableop_2_resource:	
identity’batchnorm/ReadVariableOp’batchnorm/ReadVariableOp_1’batchnorm/ReadVariableOp_2’batchnorm/mul/ReadVariableOp
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batchnorm/add/y
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:2
batchnorm/Rsqrt
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype02
batchnorm/mul/ReadVariableOp
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
batchnorm/mulw
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:?????????2
batchnorm/mul_1
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOp_1
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:2
batchnorm/mul_2
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOp_2
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:2
batchnorm/sub
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:?????????2
batchnorm/add_1o
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:?????????2

IdentityΒ
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:?????????: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:?????????
 
_user_specified_nameinputs
΄
d
E__inference_dropout_4_layer_call_and_return_conditional_losses_599171

inputs
identityc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nΫΆ?2
dropout/Constt
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:?????????2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape΅
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:?????????*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2
dropout/GreaterEqual/yΏ
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:?????????2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:?????????2
dropout/Cast{
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:?????????2
dropout/Mul_1f
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:?????????:P L
(
_output_shapes
:?????????
 
_user_specified_nameinputs
υ
°
Q__inference_batch_normalization_9_layer_call_and_return_conditional_losses_601749

inputs/
!batchnorm_readvariableop_resource:@3
%batchnorm_mul_readvariableop_resource:@1
#batchnorm_readvariableop_1_resource:@1
#batchnorm_readvariableop_2_resource:@
identity’batchnorm/ReadVariableOp’batchnorm/ReadVariableOp_1’batchnorm/ReadVariableOp_2’batchnorm/mul/ReadVariableOp
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batchnorm/add/y
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:@2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:@2
batchnorm/Rsqrt
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype02
batchnorm/mul/ReadVariableOp
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:@2
batchnorm/mulv
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:?????????@2
batchnorm/mul_1
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:@*
dtype02
batchnorm/ReadVariableOp_1
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:@2
batchnorm/mul_2
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:@*
dtype02
batchnorm/ReadVariableOp_2
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:@2
batchnorm/sub
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:?????????@2
batchnorm/add_1n
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:?????????@2

IdentityΒ
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
χ°
Σ)
!__inference__wrapped_model_597114
input_3R
Dsequential_8_batch_normalization_4_batchnorm_readvariableop_resource:	V
Hsequential_8_batch_normalization_4_batchnorm_mul_readvariableop_resource:	T
Fsequential_8_batch_normalization_4_batchnorm_readvariableop_1_resource:	T
Fsequential_8_batch_normalization_4_batchnorm_readvariableop_2_resource:	G
4sequential_8_dense_21_matmul_readvariableop_resource:		D
5sequential_8_dense_21_biasadd_readvariableop_resource:	S
Dsequential_8_batch_normalization_5_batchnorm_readvariableop_resource:	W
Hsequential_8_batch_normalization_5_batchnorm_mul_readvariableop_resource:	U
Fsequential_8_batch_normalization_5_batchnorm_readvariableop_1_resource:	U
Fsequential_8_batch_normalization_5_batchnorm_readvariableop_2_resource:	H
4sequential_8_dense_22_matmul_readvariableop_resource:
D
5sequential_8_dense_22_biasadd_readvariableop_resource:	S
Dsequential_8_batch_normalization_6_batchnorm_readvariableop_resource:	W
Hsequential_8_batch_normalization_6_batchnorm_mul_readvariableop_resource:	U
Fsequential_8_batch_normalization_6_batchnorm_readvariableop_1_resource:	U
Fsequential_8_batch_normalization_6_batchnorm_readvariableop_2_resource:	H
4sequential_8_dense_23_matmul_readvariableop_resource:
D
5sequential_8_dense_23_biasadd_readvariableop_resource:	S
Dsequential_8_batch_normalization_7_batchnorm_readvariableop_resource:	W
Hsequential_8_batch_normalization_7_batchnorm_mul_readvariableop_resource:	U
Fsequential_8_batch_normalization_7_batchnorm_readvariableop_1_resource:	U
Fsequential_8_batch_normalization_7_batchnorm_readvariableop_2_resource:	H
4sequential_8_dense_24_matmul_readvariableop_resource:
D
5sequential_8_dense_24_biasadd_readvariableop_resource:	S
Dsequential_8_batch_normalization_8_batchnorm_readvariableop_resource:	W
Hsequential_8_batch_normalization_8_batchnorm_mul_readvariableop_resource:	U
Fsequential_8_batch_normalization_8_batchnorm_readvariableop_1_resource:	U
Fsequential_8_batch_normalization_8_batchnorm_readvariableop_2_resource:	G
4sequential_8_dense_25_matmul_readvariableop_resource:	@C
5sequential_8_dense_25_biasadd_readvariableop_resource:@R
Dsequential_8_batch_normalization_9_batchnorm_readvariableop_resource:@V
Hsequential_8_batch_normalization_9_batchnorm_mul_readvariableop_resource:@T
Fsequential_8_batch_normalization_9_batchnorm_readvariableop_1_resource:@T
Fsequential_8_batch_normalization_9_batchnorm_readvariableop_2_resource:@F
4sequential_8_dense_26_matmul_readvariableop_resource:@ C
5sequential_8_dense_26_biasadd_readvariableop_resource: F
4sequential_8_dense_27_matmul_readvariableop_resource: C
5sequential_8_dense_27_biasadd_readvariableop_resource:
identity’;sequential_8/batch_normalization_4/batchnorm/ReadVariableOp’=sequential_8/batch_normalization_4/batchnorm/ReadVariableOp_1’=sequential_8/batch_normalization_4/batchnorm/ReadVariableOp_2’?sequential_8/batch_normalization_4/batchnorm/mul/ReadVariableOp’;sequential_8/batch_normalization_5/batchnorm/ReadVariableOp’=sequential_8/batch_normalization_5/batchnorm/ReadVariableOp_1’=sequential_8/batch_normalization_5/batchnorm/ReadVariableOp_2’?sequential_8/batch_normalization_5/batchnorm/mul/ReadVariableOp’;sequential_8/batch_normalization_6/batchnorm/ReadVariableOp’=sequential_8/batch_normalization_6/batchnorm/ReadVariableOp_1’=sequential_8/batch_normalization_6/batchnorm/ReadVariableOp_2’?sequential_8/batch_normalization_6/batchnorm/mul/ReadVariableOp’;sequential_8/batch_normalization_7/batchnorm/ReadVariableOp’=sequential_8/batch_normalization_7/batchnorm/ReadVariableOp_1’=sequential_8/batch_normalization_7/batchnorm/ReadVariableOp_2’?sequential_8/batch_normalization_7/batchnorm/mul/ReadVariableOp’;sequential_8/batch_normalization_8/batchnorm/ReadVariableOp’=sequential_8/batch_normalization_8/batchnorm/ReadVariableOp_1’=sequential_8/batch_normalization_8/batchnorm/ReadVariableOp_2’?sequential_8/batch_normalization_8/batchnorm/mul/ReadVariableOp’;sequential_8/batch_normalization_9/batchnorm/ReadVariableOp’=sequential_8/batch_normalization_9/batchnorm/ReadVariableOp_1’=sequential_8/batch_normalization_9/batchnorm/ReadVariableOp_2’?sequential_8/batch_normalization_9/batchnorm/mul/ReadVariableOp’,sequential_8/dense_21/BiasAdd/ReadVariableOp’+sequential_8/dense_21/MatMul/ReadVariableOp’,sequential_8/dense_22/BiasAdd/ReadVariableOp’+sequential_8/dense_22/MatMul/ReadVariableOp’,sequential_8/dense_23/BiasAdd/ReadVariableOp’+sequential_8/dense_23/MatMul/ReadVariableOp’,sequential_8/dense_24/BiasAdd/ReadVariableOp’+sequential_8/dense_24/MatMul/ReadVariableOp’,sequential_8/dense_25/BiasAdd/ReadVariableOp’+sequential_8/dense_25/MatMul/ReadVariableOp’,sequential_8/dense_26/BiasAdd/ReadVariableOp’+sequential_8/dense_26/MatMul/ReadVariableOp’,sequential_8/dense_27/BiasAdd/ReadVariableOp’+sequential_8/dense_27/MatMul/ReadVariableOpϋ
;sequential_8/batch_normalization_4/batchnorm/ReadVariableOpReadVariableOpDsequential_8_batch_normalization_4_batchnorm_readvariableop_resource*
_output_shapes
:	*
dtype02=
;sequential_8/batch_normalization_4/batchnorm/ReadVariableOp­
2sequential_8/batch_normalization_4/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:24
2sequential_8/batch_normalization_4/batchnorm/add/y
0sequential_8/batch_normalization_4/batchnorm/addAddV2Csequential_8/batch_normalization_4/batchnorm/ReadVariableOp:value:0;sequential_8/batch_normalization_4/batchnorm/add/y:output:0*
T0*
_output_shapes
:	22
0sequential_8/batch_normalization_4/batchnorm/addΜ
2sequential_8/batch_normalization_4/batchnorm/RsqrtRsqrt4sequential_8/batch_normalization_4/batchnorm/add:z:0*
T0*
_output_shapes
:	24
2sequential_8/batch_normalization_4/batchnorm/Rsqrt
?sequential_8/batch_normalization_4/batchnorm/mul/ReadVariableOpReadVariableOpHsequential_8_batch_normalization_4_batchnorm_mul_readvariableop_resource*
_output_shapes
:	*
dtype02A
?sequential_8/batch_normalization_4/batchnorm/mul/ReadVariableOp
0sequential_8/batch_normalization_4/batchnorm/mulMul6sequential_8/batch_normalization_4/batchnorm/Rsqrt:y:0Gsequential_8/batch_normalization_4/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:	22
0sequential_8/batch_normalization_4/batchnorm/mulΰ
2sequential_8/batch_normalization_4/batchnorm/mul_1Mulinput_34sequential_8/batch_normalization_4/batchnorm/mul:z:0*
T0*'
_output_shapes
:?????????	24
2sequential_8/batch_normalization_4/batchnorm/mul_1
=sequential_8/batch_normalization_4/batchnorm/ReadVariableOp_1ReadVariableOpFsequential_8_batch_normalization_4_batchnorm_readvariableop_1_resource*
_output_shapes
:	*
dtype02?
=sequential_8/batch_normalization_4/batchnorm/ReadVariableOp_1
2sequential_8/batch_normalization_4/batchnorm/mul_2MulEsequential_8/batch_normalization_4/batchnorm/ReadVariableOp_1:value:04sequential_8/batch_normalization_4/batchnorm/mul:z:0*
T0*
_output_shapes
:	24
2sequential_8/batch_normalization_4/batchnorm/mul_2
=sequential_8/batch_normalization_4/batchnorm/ReadVariableOp_2ReadVariableOpFsequential_8_batch_normalization_4_batchnorm_readvariableop_2_resource*
_output_shapes
:	*
dtype02?
=sequential_8/batch_normalization_4/batchnorm/ReadVariableOp_2
0sequential_8/batch_normalization_4/batchnorm/subSubEsequential_8/batch_normalization_4/batchnorm/ReadVariableOp_2:value:06sequential_8/batch_normalization_4/batchnorm/mul_2:z:0*
T0*
_output_shapes
:	22
0sequential_8/batch_normalization_4/batchnorm/sub
2sequential_8/batch_normalization_4/batchnorm/add_1AddV26sequential_8/batch_normalization_4/batchnorm/mul_1:z:04sequential_8/batch_normalization_4/batchnorm/sub:z:0*
T0*'
_output_shapes
:?????????	24
2sequential_8/batch_normalization_4/batchnorm/add_1Π
+sequential_8/dense_21/MatMul/ReadVariableOpReadVariableOp4sequential_8_dense_21_matmul_readvariableop_resource*
_output_shapes
:		*
dtype02-
+sequential_8/dense_21/MatMul/ReadVariableOpζ
sequential_8/dense_21/MatMulMatMul6sequential_8/batch_normalization_4/batchnorm/add_1:z:03sequential_8/dense_21/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????2
sequential_8/dense_21/MatMulΟ
,sequential_8/dense_21/BiasAdd/ReadVariableOpReadVariableOp5sequential_8_dense_21_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02.
,sequential_8/dense_21/BiasAdd/ReadVariableOpΪ
sequential_8/dense_21/BiasAddBiasAdd&sequential_8/dense_21/MatMul:product:04sequential_8/dense_21/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????2
sequential_8/dense_21/BiasAdd
sequential_8/dense_21/ReluRelu&sequential_8/dense_21/BiasAdd:output:0*
T0*(
_output_shapes
:?????????2
sequential_8/dense_21/Relu«
sequential_8/dropout_4/IdentityIdentity(sequential_8/dense_21/Relu:activations:0*
T0*(
_output_shapes
:?????????2!
sequential_8/dropout_4/Identityό
;sequential_8/batch_normalization_5/batchnorm/ReadVariableOpReadVariableOpDsequential_8_batch_normalization_5_batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype02=
;sequential_8/batch_normalization_5/batchnorm/ReadVariableOp­
2sequential_8/batch_normalization_5/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:24
2sequential_8/batch_normalization_5/batchnorm/add/y
0sequential_8/batch_normalization_5/batchnorm/addAddV2Csequential_8/batch_normalization_5/batchnorm/ReadVariableOp:value:0;sequential_8/batch_normalization_5/batchnorm/add/y:output:0*
T0*
_output_shapes	
:22
0sequential_8/batch_normalization_5/batchnorm/addΝ
2sequential_8/batch_normalization_5/batchnorm/RsqrtRsqrt4sequential_8/batch_normalization_5/batchnorm/add:z:0*
T0*
_output_shapes	
:24
2sequential_8/batch_normalization_5/batchnorm/Rsqrt
?sequential_8/batch_normalization_5/batchnorm/mul/ReadVariableOpReadVariableOpHsequential_8_batch_normalization_5_batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype02A
?sequential_8/batch_normalization_5/batchnorm/mul/ReadVariableOp
0sequential_8/batch_normalization_5/batchnorm/mulMul6sequential_8/batch_normalization_5/batchnorm/Rsqrt:y:0Gsequential_8/batch_normalization_5/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:22
0sequential_8/batch_normalization_5/batchnorm/mul
2sequential_8/batch_normalization_5/batchnorm/mul_1Mul(sequential_8/dropout_4/Identity:output:04sequential_8/batch_normalization_5/batchnorm/mul:z:0*
T0*(
_output_shapes
:?????????24
2sequential_8/batch_normalization_5/batchnorm/mul_1
=sequential_8/batch_normalization_5/batchnorm/ReadVariableOp_1ReadVariableOpFsequential_8_batch_normalization_5_batchnorm_readvariableop_1_resource*
_output_shapes	
:*
dtype02?
=sequential_8/batch_normalization_5/batchnorm/ReadVariableOp_1
2sequential_8/batch_normalization_5/batchnorm/mul_2MulEsequential_8/batch_normalization_5/batchnorm/ReadVariableOp_1:value:04sequential_8/batch_normalization_5/batchnorm/mul:z:0*
T0*
_output_shapes	
:24
2sequential_8/batch_normalization_5/batchnorm/mul_2
=sequential_8/batch_normalization_5/batchnorm/ReadVariableOp_2ReadVariableOpFsequential_8_batch_normalization_5_batchnorm_readvariableop_2_resource*
_output_shapes	
:*
dtype02?
=sequential_8/batch_normalization_5/batchnorm/ReadVariableOp_2
0sequential_8/batch_normalization_5/batchnorm/subSubEsequential_8/batch_normalization_5/batchnorm/ReadVariableOp_2:value:06sequential_8/batch_normalization_5/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:22
0sequential_8/batch_normalization_5/batchnorm/sub
2sequential_8/batch_normalization_5/batchnorm/add_1AddV26sequential_8/batch_normalization_5/batchnorm/mul_1:z:04sequential_8/batch_normalization_5/batchnorm/sub:z:0*
T0*(
_output_shapes
:?????????24
2sequential_8/batch_normalization_5/batchnorm/add_1Ρ
+sequential_8/dense_22/MatMul/ReadVariableOpReadVariableOp4sequential_8_dense_22_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype02-
+sequential_8/dense_22/MatMul/ReadVariableOpζ
sequential_8/dense_22/MatMulMatMul6sequential_8/batch_normalization_5/batchnorm/add_1:z:03sequential_8/dense_22/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????2
sequential_8/dense_22/MatMulΟ
,sequential_8/dense_22/BiasAdd/ReadVariableOpReadVariableOp5sequential_8_dense_22_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02.
,sequential_8/dense_22/BiasAdd/ReadVariableOpΪ
sequential_8/dense_22/BiasAddBiasAdd&sequential_8/dense_22/MatMul:product:04sequential_8/dense_22/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????2
sequential_8/dense_22/BiasAdd
sequential_8/dense_22/ReluRelu&sequential_8/dense_22/BiasAdd:output:0*
T0*(
_output_shapes
:?????????2
sequential_8/dense_22/Relu«
sequential_8/dropout_5/IdentityIdentity(sequential_8/dense_22/Relu:activations:0*
T0*(
_output_shapes
:?????????2!
sequential_8/dropout_5/Identityό
;sequential_8/batch_normalization_6/batchnorm/ReadVariableOpReadVariableOpDsequential_8_batch_normalization_6_batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype02=
;sequential_8/batch_normalization_6/batchnorm/ReadVariableOp­
2sequential_8/batch_normalization_6/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:24
2sequential_8/batch_normalization_6/batchnorm/add/y
0sequential_8/batch_normalization_6/batchnorm/addAddV2Csequential_8/batch_normalization_6/batchnorm/ReadVariableOp:value:0;sequential_8/batch_normalization_6/batchnorm/add/y:output:0*
T0*
_output_shapes	
:22
0sequential_8/batch_normalization_6/batchnorm/addΝ
2sequential_8/batch_normalization_6/batchnorm/RsqrtRsqrt4sequential_8/batch_normalization_6/batchnorm/add:z:0*
T0*
_output_shapes	
:24
2sequential_8/batch_normalization_6/batchnorm/Rsqrt
?sequential_8/batch_normalization_6/batchnorm/mul/ReadVariableOpReadVariableOpHsequential_8_batch_normalization_6_batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype02A
?sequential_8/batch_normalization_6/batchnorm/mul/ReadVariableOp
0sequential_8/batch_normalization_6/batchnorm/mulMul6sequential_8/batch_normalization_6/batchnorm/Rsqrt:y:0Gsequential_8/batch_normalization_6/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:22
0sequential_8/batch_normalization_6/batchnorm/mul
2sequential_8/batch_normalization_6/batchnorm/mul_1Mul(sequential_8/dropout_5/Identity:output:04sequential_8/batch_normalization_6/batchnorm/mul:z:0*
T0*(
_output_shapes
:?????????24
2sequential_8/batch_normalization_6/batchnorm/mul_1
=sequential_8/batch_normalization_6/batchnorm/ReadVariableOp_1ReadVariableOpFsequential_8_batch_normalization_6_batchnorm_readvariableop_1_resource*
_output_shapes	
:*
dtype02?
=sequential_8/batch_normalization_6/batchnorm/ReadVariableOp_1
2sequential_8/batch_normalization_6/batchnorm/mul_2MulEsequential_8/batch_normalization_6/batchnorm/ReadVariableOp_1:value:04sequential_8/batch_normalization_6/batchnorm/mul:z:0*
T0*
_output_shapes	
:24
2sequential_8/batch_normalization_6/batchnorm/mul_2
=sequential_8/batch_normalization_6/batchnorm/ReadVariableOp_2ReadVariableOpFsequential_8_batch_normalization_6_batchnorm_readvariableop_2_resource*
_output_shapes	
:*
dtype02?
=sequential_8/batch_normalization_6/batchnorm/ReadVariableOp_2
0sequential_8/batch_normalization_6/batchnorm/subSubEsequential_8/batch_normalization_6/batchnorm/ReadVariableOp_2:value:06sequential_8/batch_normalization_6/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:22
0sequential_8/batch_normalization_6/batchnorm/sub
2sequential_8/batch_normalization_6/batchnorm/add_1AddV26sequential_8/batch_normalization_6/batchnorm/mul_1:z:04sequential_8/batch_normalization_6/batchnorm/sub:z:0*
T0*(
_output_shapes
:?????????24
2sequential_8/batch_normalization_6/batchnorm/add_1Ρ
+sequential_8/dense_23/MatMul/ReadVariableOpReadVariableOp4sequential_8_dense_23_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype02-
+sequential_8/dense_23/MatMul/ReadVariableOpζ
sequential_8/dense_23/MatMulMatMul6sequential_8/batch_normalization_6/batchnorm/add_1:z:03sequential_8/dense_23/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????2
sequential_8/dense_23/MatMulΟ
,sequential_8/dense_23/BiasAdd/ReadVariableOpReadVariableOp5sequential_8_dense_23_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02.
,sequential_8/dense_23/BiasAdd/ReadVariableOpΪ
sequential_8/dense_23/BiasAddBiasAdd&sequential_8/dense_23/MatMul:product:04sequential_8/dense_23/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????2
sequential_8/dense_23/BiasAdd
sequential_8/dense_23/ReluRelu&sequential_8/dense_23/BiasAdd:output:0*
T0*(
_output_shapes
:?????????2
sequential_8/dense_23/Relu«
sequential_8/dropout_6/IdentityIdentity(sequential_8/dense_23/Relu:activations:0*
T0*(
_output_shapes
:?????????2!
sequential_8/dropout_6/Identityό
;sequential_8/batch_normalization_7/batchnorm/ReadVariableOpReadVariableOpDsequential_8_batch_normalization_7_batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype02=
;sequential_8/batch_normalization_7/batchnorm/ReadVariableOp­
2sequential_8/batch_normalization_7/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:24
2sequential_8/batch_normalization_7/batchnorm/add/y
0sequential_8/batch_normalization_7/batchnorm/addAddV2Csequential_8/batch_normalization_7/batchnorm/ReadVariableOp:value:0;sequential_8/batch_normalization_7/batchnorm/add/y:output:0*
T0*
_output_shapes	
:22
0sequential_8/batch_normalization_7/batchnorm/addΝ
2sequential_8/batch_normalization_7/batchnorm/RsqrtRsqrt4sequential_8/batch_normalization_7/batchnorm/add:z:0*
T0*
_output_shapes	
:24
2sequential_8/batch_normalization_7/batchnorm/Rsqrt
?sequential_8/batch_normalization_7/batchnorm/mul/ReadVariableOpReadVariableOpHsequential_8_batch_normalization_7_batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype02A
?sequential_8/batch_normalization_7/batchnorm/mul/ReadVariableOp
0sequential_8/batch_normalization_7/batchnorm/mulMul6sequential_8/batch_normalization_7/batchnorm/Rsqrt:y:0Gsequential_8/batch_normalization_7/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:22
0sequential_8/batch_normalization_7/batchnorm/mul
2sequential_8/batch_normalization_7/batchnorm/mul_1Mul(sequential_8/dropout_6/Identity:output:04sequential_8/batch_normalization_7/batchnorm/mul:z:0*
T0*(
_output_shapes
:?????????24
2sequential_8/batch_normalization_7/batchnorm/mul_1
=sequential_8/batch_normalization_7/batchnorm/ReadVariableOp_1ReadVariableOpFsequential_8_batch_normalization_7_batchnorm_readvariableop_1_resource*
_output_shapes	
:*
dtype02?
=sequential_8/batch_normalization_7/batchnorm/ReadVariableOp_1
2sequential_8/batch_normalization_7/batchnorm/mul_2MulEsequential_8/batch_normalization_7/batchnorm/ReadVariableOp_1:value:04sequential_8/batch_normalization_7/batchnorm/mul:z:0*
T0*
_output_shapes	
:24
2sequential_8/batch_normalization_7/batchnorm/mul_2
=sequential_8/batch_normalization_7/batchnorm/ReadVariableOp_2ReadVariableOpFsequential_8_batch_normalization_7_batchnorm_readvariableop_2_resource*
_output_shapes	
:*
dtype02?
=sequential_8/batch_normalization_7/batchnorm/ReadVariableOp_2
0sequential_8/batch_normalization_7/batchnorm/subSubEsequential_8/batch_normalization_7/batchnorm/ReadVariableOp_2:value:06sequential_8/batch_normalization_7/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:22
0sequential_8/batch_normalization_7/batchnorm/sub
2sequential_8/batch_normalization_7/batchnorm/add_1AddV26sequential_8/batch_normalization_7/batchnorm/mul_1:z:04sequential_8/batch_normalization_7/batchnorm/sub:z:0*
T0*(
_output_shapes
:?????????24
2sequential_8/batch_normalization_7/batchnorm/add_1Ρ
+sequential_8/dense_24/MatMul/ReadVariableOpReadVariableOp4sequential_8_dense_24_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype02-
+sequential_8/dense_24/MatMul/ReadVariableOpζ
sequential_8/dense_24/MatMulMatMul6sequential_8/batch_normalization_7/batchnorm/add_1:z:03sequential_8/dense_24/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????2
sequential_8/dense_24/MatMulΟ
,sequential_8/dense_24/BiasAdd/ReadVariableOpReadVariableOp5sequential_8_dense_24_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02.
,sequential_8/dense_24/BiasAdd/ReadVariableOpΪ
sequential_8/dense_24/BiasAddBiasAdd&sequential_8/dense_24/MatMul:product:04sequential_8/dense_24/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????2
sequential_8/dense_24/BiasAdd
sequential_8/dense_24/ReluRelu&sequential_8/dense_24/BiasAdd:output:0*
T0*(
_output_shapes
:?????????2
sequential_8/dense_24/Relu«
sequential_8/dropout_7/IdentityIdentity(sequential_8/dense_24/Relu:activations:0*
T0*(
_output_shapes
:?????????2!
sequential_8/dropout_7/Identityό
;sequential_8/batch_normalization_8/batchnorm/ReadVariableOpReadVariableOpDsequential_8_batch_normalization_8_batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype02=
;sequential_8/batch_normalization_8/batchnorm/ReadVariableOp­
2sequential_8/batch_normalization_8/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:24
2sequential_8/batch_normalization_8/batchnorm/add/y
0sequential_8/batch_normalization_8/batchnorm/addAddV2Csequential_8/batch_normalization_8/batchnorm/ReadVariableOp:value:0;sequential_8/batch_normalization_8/batchnorm/add/y:output:0*
T0*
_output_shapes	
:22
0sequential_8/batch_normalization_8/batchnorm/addΝ
2sequential_8/batch_normalization_8/batchnorm/RsqrtRsqrt4sequential_8/batch_normalization_8/batchnorm/add:z:0*
T0*
_output_shapes	
:24
2sequential_8/batch_normalization_8/batchnorm/Rsqrt
?sequential_8/batch_normalization_8/batchnorm/mul/ReadVariableOpReadVariableOpHsequential_8_batch_normalization_8_batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype02A
?sequential_8/batch_normalization_8/batchnorm/mul/ReadVariableOp
0sequential_8/batch_normalization_8/batchnorm/mulMul6sequential_8/batch_normalization_8/batchnorm/Rsqrt:y:0Gsequential_8/batch_normalization_8/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:22
0sequential_8/batch_normalization_8/batchnorm/mul
2sequential_8/batch_normalization_8/batchnorm/mul_1Mul(sequential_8/dropout_7/Identity:output:04sequential_8/batch_normalization_8/batchnorm/mul:z:0*
T0*(
_output_shapes
:?????????24
2sequential_8/batch_normalization_8/batchnorm/mul_1
=sequential_8/batch_normalization_8/batchnorm/ReadVariableOp_1ReadVariableOpFsequential_8_batch_normalization_8_batchnorm_readvariableop_1_resource*
_output_shapes	
:*
dtype02?
=sequential_8/batch_normalization_8/batchnorm/ReadVariableOp_1
2sequential_8/batch_normalization_8/batchnorm/mul_2MulEsequential_8/batch_normalization_8/batchnorm/ReadVariableOp_1:value:04sequential_8/batch_normalization_8/batchnorm/mul:z:0*
T0*
_output_shapes	
:24
2sequential_8/batch_normalization_8/batchnorm/mul_2
=sequential_8/batch_normalization_8/batchnorm/ReadVariableOp_2ReadVariableOpFsequential_8_batch_normalization_8_batchnorm_readvariableop_2_resource*
_output_shapes	
:*
dtype02?
=sequential_8/batch_normalization_8/batchnorm/ReadVariableOp_2
0sequential_8/batch_normalization_8/batchnorm/subSubEsequential_8/batch_normalization_8/batchnorm/ReadVariableOp_2:value:06sequential_8/batch_normalization_8/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:22
0sequential_8/batch_normalization_8/batchnorm/sub
2sequential_8/batch_normalization_8/batchnorm/add_1AddV26sequential_8/batch_normalization_8/batchnorm/mul_1:z:04sequential_8/batch_normalization_8/batchnorm/sub:z:0*
T0*(
_output_shapes
:?????????24
2sequential_8/batch_normalization_8/batchnorm/add_1Π
+sequential_8/dense_25/MatMul/ReadVariableOpReadVariableOp4sequential_8_dense_25_matmul_readvariableop_resource*
_output_shapes
:	@*
dtype02-
+sequential_8/dense_25/MatMul/ReadVariableOpε
sequential_8/dense_25/MatMulMatMul6sequential_8/batch_normalization_8/batchnorm/add_1:z:03sequential_8/dense_25/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
sequential_8/dense_25/MatMulΞ
,sequential_8/dense_25/BiasAdd/ReadVariableOpReadVariableOp5sequential_8_dense_25_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02.
,sequential_8/dense_25/BiasAdd/ReadVariableOpΩ
sequential_8/dense_25/BiasAddBiasAdd&sequential_8/dense_25/MatMul:product:04sequential_8/dense_25/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
sequential_8/dense_25/BiasAdd
sequential_8/dense_25/ReluRelu&sequential_8/dense_25/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
sequential_8/dense_25/Reluͺ
sequential_8/dropout_8/IdentityIdentity(sequential_8/dense_25/Relu:activations:0*
T0*'
_output_shapes
:?????????@2!
sequential_8/dropout_8/Identityϋ
;sequential_8/batch_normalization_9/batchnorm/ReadVariableOpReadVariableOpDsequential_8_batch_normalization_9_batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype02=
;sequential_8/batch_normalization_9/batchnorm/ReadVariableOp­
2sequential_8/batch_normalization_9/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:24
2sequential_8/batch_normalization_9/batchnorm/add/y
0sequential_8/batch_normalization_9/batchnorm/addAddV2Csequential_8/batch_normalization_9/batchnorm/ReadVariableOp:value:0;sequential_8/batch_normalization_9/batchnorm/add/y:output:0*
T0*
_output_shapes
:@22
0sequential_8/batch_normalization_9/batchnorm/addΜ
2sequential_8/batch_normalization_9/batchnorm/RsqrtRsqrt4sequential_8/batch_normalization_9/batchnorm/add:z:0*
T0*
_output_shapes
:@24
2sequential_8/batch_normalization_9/batchnorm/Rsqrt
?sequential_8/batch_normalization_9/batchnorm/mul/ReadVariableOpReadVariableOpHsequential_8_batch_normalization_9_batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype02A
?sequential_8/batch_normalization_9/batchnorm/mul/ReadVariableOp
0sequential_8/batch_normalization_9/batchnorm/mulMul6sequential_8/batch_normalization_9/batchnorm/Rsqrt:y:0Gsequential_8/batch_normalization_9/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:@22
0sequential_8/batch_normalization_9/batchnorm/mul
2sequential_8/batch_normalization_9/batchnorm/mul_1Mul(sequential_8/dropout_8/Identity:output:04sequential_8/batch_normalization_9/batchnorm/mul:z:0*
T0*'
_output_shapes
:?????????@24
2sequential_8/batch_normalization_9/batchnorm/mul_1
=sequential_8/batch_normalization_9/batchnorm/ReadVariableOp_1ReadVariableOpFsequential_8_batch_normalization_9_batchnorm_readvariableop_1_resource*
_output_shapes
:@*
dtype02?
=sequential_8/batch_normalization_9/batchnorm/ReadVariableOp_1
2sequential_8/batch_normalization_9/batchnorm/mul_2MulEsequential_8/batch_normalization_9/batchnorm/ReadVariableOp_1:value:04sequential_8/batch_normalization_9/batchnorm/mul:z:0*
T0*
_output_shapes
:@24
2sequential_8/batch_normalization_9/batchnorm/mul_2
=sequential_8/batch_normalization_9/batchnorm/ReadVariableOp_2ReadVariableOpFsequential_8_batch_normalization_9_batchnorm_readvariableop_2_resource*
_output_shapes
:@*
dtype02?
=sequential_8/batch_normalization_9/batchnorm/ReadVariableOp_2
0sequential_8/batch_normalization_9/batchnorm/subSubEsequential_8/batch_normalization_9/batchnorm/ReadVariableOp_2:value:06sequential_8/batch_normalization_9/batchnorm/mul_2:z:0*
T0*
_output_shapes
:@22
0sequential_8/batch_normalization_9/batchnorm/sub
2sequential_8/batch_normalization_9/batchnorm/add_1AddV26sequential_8/batch_normalization_9/batchnorm/mul_1:z:04sequential_8/batch_normalization_9/batchnorm/sub:z:0*
T0*'
_output_shapes
:?????????@24
2sequential_8/batch_normalization_9/batchnorm/add_1Ο
+sequential_8/dense_26/MatMul/ReadVariableOpReadVariableOp4sequential_8_dense_26_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype02-
+sequential_8/dense_26/MatMul/ReadVariableOpε
sequential_8/dense_26/MatMulMatMul6sequential_8/batch_normalization_9/batchnorm/add_1:z:03sequential_8/dense_26/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
sequential_8/dense_26/MatMulΞ
,sequential_8/dense_26/BiasAdd/ReadVariableOpReadVariableOp5sequential_8_dense_26_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02.
,sequential_8/dense_26/BiasAdd/ReadVariableOpΩ
sequential_8/dense_26/BiasAddBiasAdd&sequential_8/dense_26/MatMul:product:04sequential_8/dense_26/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
sequential_8/dense_26/BiasAdd
sequential_8/dense_26/ReluRelu&sequential_8/dense_26/BiasAdd:output:0*
T0*'
_output_shapes
:????????? 2
sequential_8/dense_26/Reluͺ
sequential_8/dropout_9/IdentityIdentity(sequential_8/dense_26/Relu:activations:0*
T0*'
_output_shapes
:????????? 2!
sequential_8/dropout_9/IdentityΟ
+sequential_8/dense_27/MatMul/ReadVariableOpReadVariableOp4sequential_8_dense_27_matmul_readvariableop_resource*
_output_shapes

: *
dtype02-
+sequential_8/dense_27/MatMul/ReadVariableOpΧ
sequential_8/dense_27/MatMulMatMul(sequential_8/dropout_9/Identity:output:03sequential_8/dense_27/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
sequential_8/dense_27/MatMulΞ
,sequential_8/dense_27/BiasAdd/ReadVariableOpReadVariableOp5sequential_8_dense_27_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02.
,sequential_8/dense_27/BiasAdd/ReadVariableOpΩ
sequential_8/dense_27/BiasAddBiasAdd&sequential_8/dense_27/MatMul:product:04sequential_8/dense_27/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
sequential_8/dense_27/BiasAdd£
sequential_8/dense_27/SigmoidSigmoid&sequential_8/dense_27/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
sequential_8/dense_27/Sigmoid|
IdentityIdentity!sequential_8/dense_27/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:?????????2

IdentityΩ
NoOpNoOp<^sequential_8/batch_normalization_4/batchnorm/ReadVariableOp>^sequential_8/batch_normalization_4/batchnorm/ReadVariableOp_1>^sequential_8/batch_normalization_4/batchnorm/ReadVariableOp_2@^sequential_8/batch_normalization_4/batchnorm/mul/ReadVariableOp<^sequential_8/batch_normalization_5/batchnorm/ReadVariableOp>^sequential_8/batch_normalization_5/batchnorm/ReadVariableOp_1>^sequential_8/batch_normalization_5/batchnorm/ReadVariableOp_2@^sequential_8/batch_normalization_5/batchnorm/mul/ReadVariableOp<^sequential_8/batch_normalization_6/batchnorm/ReadVariableOp>^sequential_8/batch_normalization_6/batchnorm/ReadVariableOp_1>^sequential_8/batch_normalization_6/batchnorm/ReadVariableOp_2@^sequential_8/batch_normalization_6/batchnorm/mul/ReadVariableOp<^sequential_8/batch_normalization_7/batchnorm/ReadVariableOp>^sequential_8/batch_normalization_7/batchnorm/ReadVariableOp_1>^sequential_8/batch_normalization_7/batchnorm/ReadVariableOp_2@^sequential_8/batch_normalization_7/batchnorm/mul/ReadVariableOp<^sequential_8/batch_normalization_8/batchnorm/ReadVariableOp>^sequential_8/batch_normalization_8/batchnorm/ReadVariableOp_1>^sequential_8/batch_normalization_8/batchnorm/ReadVariableOp_2@^sequential_8/batch_normalization_8/batchnorm/mul/ReadVariableOp<^sequential_8/batch_normalization_9/batchnorm/ReadVariableOp>^sequential_8/batch_normalization_9/batchnorm/ReadVariableOp_1>^sequential_8/batch_normalization_9/batchnorm/ReadVariableOp_2@^sequential_8/batch_normalization_9/batchnorm/mul/ReadVariableOp-^sequential_8/dense_21/BiasAdd/ReadVariableOp,^sequential_8/dense_21/MatMul/ReadVariableOp-^sequential_8/dense_22/BiasAdd/ReadVariableOp,^sequential_8/dense_22/MatMul/ReadVariableOp-^sequential_8/dense_23/BiasAdd/ReadVariableOp,^sequential_8/dense_23/MatMul/ReadVariableOp-^sequential_8/dense_24/BiasAdd/ReadVariableOp,^sequential_8/dense_24/MatMul/ReadVariableOp-^sequential_8/dense_25/BiasAdd/ReadVariableOp,^sequential_8/dense_25/MatMul/ReadVariableOp-^sequential_8/dense_26/BiasAdd/ReadVariableOp,^sequential_8/dense_26/MatMul/ReadVariableOp-^sequential_8/dense_27/BiasAdd/ReadVariableOp,^sequential_8/dense_27/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*r
_input_shapesa
_:?????????	: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2z
;sequential_8/batch_normalization_4/batchnorm/ReadVariableOp;sequential_8/batch_normalization_4/batchnorm/ReadVariableOp2~
=sequential_8/batch_normalization_4/batchnorm/ReadVariableOp_1=sequential_8/batch_normalization_4/batchnorm/ReadVariableOp_12~
=sequential_8/batch_normalization_4/batchnorm/ReadVariableOp_2=sequential_8/batch_normalization_4/batchnorm/ReadVariableOp_22
?sequential_8/batch_normalization_4/batchnorm/mul/ReadVariableOp?sequential_8/batch_normalization_4/batchnorm/mul/ReadVariableOp2z
;sequential_8/batch_normalization_5/batchnorm/ReadVariableOp;sequential_8/batch_normalization_5/batchnorm/ReadVariableOp2~
=sequential_8/batch_normalization_5/batchnorm/ReadVariableOp_1=sequential_8/batch_normalization_5/batchnorm/ReadVariableOp_12~
=sequential_8/batch_normalization_5/batchnorm/ReadVariableOp_2=sequential_8/batch_normalization_5/batchnorm/ReadVariableOp_22
?sequential_8/batch_normalization_5/batchnorm/mul/ReadVariableOp?sequential_8/batch_normalization_5/batchnorm/mul/ReadVariableOp2z
;sequential_8/batch_normalization_6/batchnorm/ReadVariableOp;sequential_8/batch_normalization_6/batchnorm/ReadVariableOp2~
=sequential_8/batch_normalization_6/batchnorm/ReadVariableOp_1=sequential_8/batch_normalization_6/batchnorm/ReadVariableOp_12~
=sequential_8/batch_normalization_6/batchnorm/ReadVariableOp_2=sequential_8/batch_normalization_6/batchnorm/ReadVariableOp_22
?sequential_8/batch_normalization_6/batchnorm/mul/ReadVariableOp?sequential_8/batch_normalization_6/batchnorm/mul/ReadVariableOp2z
;sequential_8/batch_normalization_7/batchnorm/ReadVariableOp;sequential_8/batch_normalization_7/batchnorm/ReadVariableOp2~
=sequential_8/batch_normalization_7/batchnorm/ReadVariableOp_1=sequential_8/batch_normalization_7/batchnorm/ReadVariableOp_12~
=sequential_8/batch_normalization_7/batchnorm/ReadVariableOp_2=sequential_8/batch_normalization_7/batchnorm/ReadVariableOp_22
?sequential_8/batch_normalization_7/batchnorm/mul/ReadVariableOp?sequential_8/batch_normalization_7/batchnorm/mul/ReadVariableOp2z
;sequential_8/batch_normalization_8/batchnorm/ReadVariableOp;sequential_8/batch_normalization_8/batchnorm/ReadVariableOp2~
=sequential_8/batch_normalization_8/batchnorm/ReadVariableOp_1=sequential_8/batch_normalization_8/batchnorm/ReadVariableOp_12~
=sequential_8/batch_normalization_8/batchnorm/ReadVariableOp_2=sequential_8/batch_normalization_8/batchnorm/ReadVariableOp_22
?sequential_8/batch_normalization_8/batchnorm/mul/ReadVariableOp?sequential_8/batch_normalization_8/batchnorm/mul/ReadVariableOp2z
;sequential_8/batch_normalization_9/batchnorm/ReadVariableOp;sequential_8/batch_normalization_9/batchnorm/ReadVariableOp2~
=sequential_8/batch_normalization_9/batchnorm/ReadVariableOp_1=sequential_8/batch_normalization_9/batchnorm/ReadVariableOp_12~
=sequential_8/batch_normalization_9/batchnorm/ReadVariableOp_2=sequential_8/batch_normalization_9/batchnorm/ReadVariableOp_22
?sequential_8/batch_normalization_9/batchnorm/mul/ReadVariableOp?sequential_8/batch_normalization_9/batchnorm/mul/ReadVariableOp2\
,sequential_8/dense_21/BiasAdd/ReadVariableOp,sequential_8/dense_21/BiasAdd/ReadVariableOp2Z
+sequential_8/dense_21/MatMul/ReadVariableOp+sequential_8/dense_21/MatMul/ReadVariableOp2\
,sequential_8/dense_22/BiasAdd/ReadVariableOp,sequential_8/dense_22/BiasAdd/ReadVariableOp2Z
+sequential_8/dense_22/MatMul/ReadVariableOp+sequential_8/dense_22/MatMul/ReadVariableOp2\
,sequential_8/dense_23/BiasAdd/ReadVariableOp,sequential_8/dense_23/BiasAdd/ReadVariableOp2Z
+sequential_8/dense_23/MatMul/ReadVariableOp+sequential_8/dense_23/MatMul/ReadVariableOp2\
,sequential_8/dense_24/BiasAdd/ReadVariableOp,sequential_8/dense_24/BiasAdd/ReadVariableOp2Z
+sequential_8/dense_24/MatMul/ReadVariableOp+sequential_8/dense_24/MatMul/ReadVariableOp2\
,sequential_8/dense_25/BiasAdd/ReadVariableOp,sequential_8/dense_25/BiasAdd/ReadVariableOp2Z
+sequential_8/dense_25/MatMul/ReadVariableOp+sequential_8/dense_25/MatMul/ReadVariableOp2\
,sequential_8/dense_26/BiasAdd/ReadVariableOp,sequential_8/dense_26/BiasAdd/ReadVariableOp2Z
+sequential_8/dense_26/MatMul/ReadVariableOp+sequential_8/dense_26/MatMul/ReadVariableOp2\
,sequential_8/dense_27/BiasAdd/ReadVariableOp,sequential_8/dense_27/BiasAdd/ReadVariableOp2Z
+sequential_8/dense_27/MatMul/ReadVariableOp+sequential_8/dense_27/MatMul/ReadVariableOp:P L
'
_output_shapes
:?????????	
!
_user_specified_name	input_3
Η
F
*__inference_dropout_6_layer_call_fn_601372

inputs
identityΙ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8 *N
fIRG
E__inference_dropout_6_layer_call_and_return_conditional_losses_5987782
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:?????????:P L
(
_output_shapes
:?????????
 
_user_specified_nameinputs
₯
c
*__inference_dropout_8_layer_call_fn_601729

inputs
identity’StatefulPartitionedCallΰ
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8 *N
fIRG
E__inference_dropout_8_layer_call_and_return_conditional_losses_5990392
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????@2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????@22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
Γ
F
*__inference_dropout_8_layer_call_fn_601724

inputs
identityΘ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8 *N
fIRG
E__inference_dropout_8_layer_call_and_return_conditional_losses_5988442
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????@:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
Ϊ	
£
6__inference_batch_normalization_6_layer_call_fn_601330

inputs
unknown:	
	unknown_0:	
	unknown_1:	
	unknown_2:	
	unknown_3:	
	unknown_4:	
	unknown_5:	
identity’StatefulPartitionedCallΓ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
Tin

2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8 *Z
fURS
Q__inference_batch_normalization_6_layer_call_and_return_conditional_losses_5977612
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*5
_input_shapes$
":?????????: : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:?????????
 
_user_specified_nameinputs
π
Ξ
-__inference_sequential_8_layer_call_fn_599634
input_3
unknown:	
	unknown_0:	
	unknown_1:	
	unknown_2:	
	unknown_3:	
	unknown_4:	
	unknown_5:	
	unknown_6:		
	unknown_7:	
	unknown_8:	
	unknown_9:	

unknown_10:	

unknown_11:	

unknown_12:	

unknown_13:	

unknown_14:	

unknown_15:


unknown_16:	

unknown_17:	

unknown_18:	

unknown_19:	

unknown_20:	

unknown_21:	

unknown_22:	

unknown_23:	

unknown_24:


unknown_25:	

unknown_26:	

unknown_27:	

unknown_28:	

unknown_29:	

unknown_30:	

unknown_31:	

unknown_32:	

unknown_33:


unknown_34:	

unknown_35:	

unknown_36:	

unknown_37:	

unknown_38:	

unknown_39:	

unknown_40:	

unknown_41:	

unknown_42:	@

unknown_43:@

unknown_44:@

unknown_45:@

unknown_46:@

unknown_47:@

unknown_48:@

unknown_49:@

unknown_50:@

unknown_51:@ 

unknown_52: 

unknown_53: 

unknown_54:
identity’StatefulPartitionedCallΛ
StatefulPartitionedCallStatefulPartitionedCallinput_3unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42
unknown_43
unknown_44
unknown_45
unknown_46
unknown_47
unknown_48
unknown_49
unknown_50
unknown_51
unknown_52
unknown_53
unknown_54*D
Tin=
;29*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*<
_read_only_resource_inputs
	#$'(,-015678*2
config_proto" 

CPU

GPU2*0,1J 8 *Q
fLRJ
H__inference_sequential_8_layer_call_and_return_conditional_losses_5994022
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
:?????????	: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:?????????	
!
_user_specified_name	input_3

΄
Q__inference_batch_normalization_5_layer_call_and_return_conditional_losses_597398

inputs0
!batchnorm_readvariableop_resource:	4
%batchnorm_mul_readvariableop_resource:	2
#batchnorm_readvariableop_1_resource:	2
#batchnorm_readvariableop_2_resource:	
identity’batchnorm/ReadVariableOp’batchnorm/ReadVariableOp_1’batchnorm/ReadVariableOp_2’batchnorm/mul/ReadVariableOp
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batchnorm/add/y
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:2
batchnorm/Rsqrt
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype02
batchnorm/mul/ReadVariableOp
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
batchnorm/mulw
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:?????????2
batchnorm/mul_1
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOp_1
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:2
batchnorm/mul_2
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOp_2
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:2
batchnorm/sub
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:?????????2
batchnorm/add_1o
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:?????????2

IdentityΒ
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:?????????: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:?????????
 
_user_specified_nameinputs

φ
D__inference_dense_25_layer_call_and_return_conditional_losses_601693

inputs1
matmul_readvariableop_resource:	@-
biasadd_readvariableop_resource:@
identity’BiasAdd/ReadVariableOp’MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
Relum
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:?????????@2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:?????????
 
_user_specified_nameinputs
ύ

)__inference_dense_22_layer_call_fn_601174

inputs
unknown:

	unknown_0:	
identity’StatefulPartitionedCallϊ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8 *M
fHRF
D__inference_dense_22_layer_call_and_return_conditional_losses_5987342
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:?????????
 
_user_specified_nameinputs

υ
D__inference_dense_26_layer_call_and_return_conditional_losses_601869

inputs0
matmul_readvariableop_resource:@ -
biasadd_readvariableop_resource: 
identity’BiasAdd/ReadVariableOp’MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@ *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:????????? 2
Relum
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
υφ
"
H__inference_sequential_8_layer_call_and_return_conditional_losses_600112

inputsE
7batch_normalization_4_batchnorm_readvariableop_resource:	I
;batch_normalization_4_batchnorm_mul_readvariableop_resource:	G
9batch_normalization_4_batchnorm_readvariableop_1_resource:	G
9batch_normalization_4_batchnorm_readvariableop_2_resource:	:
'dense_21_matmul_readvariableop_resource:		7
(dense_21_biasadd_readvariableop_resource:	F
7batch_normalization_5_batchnorm_readvariableop_resource:	J
;batch_normalization_5_batchnorm_mul_readvariableop_resource:	H
9batch_normalization_5_batchnorm_readvariableop_1_resource:	H
9batch_normalization_5_batchnorm_readvariableop_2_resource:	;
'dense_22_matmul_readvariableop_resource:
7
(dense_22_biasadd_readvariableop_resource:	F
7batch_normalization_6_batchnorm_readvariableop_resource:	J
;batch_normalization_6_batchnorm_mul_readvariableop_resource:	H
9batch_normalization_6_batchnorm_readvariableop_1_resource:	H
9batch_normalization_6_batchnorm_readvariableop_2_resource:	;
'dense_23_matmul_readvariableop_resource:
7
(dense_23_biasadd_readvariableop_resource:	F
7batch_normalization_7_batchnorm_readvariableop_resource:	J
;batch_normalization_7_batchnorm_mul_readvariableop_resource:	H
9batch_normalization_7_batchnorm_readvariableop_1_resource:	H
9batch_normalization_7_batchnorm_readvariableop_2_resource:	;
'dense_24_matmul_readvariableop_resource:
7
(dense_24_biasadd_readvariableop_resource:	F
7batch_normalization_8_batchnorm_readvariableop_resource:	J
;batch_normalization_8_batchnorm_mul_readvariableop_resource:	H
9batch_normalization_8_batchnorm_readvariableop_1_resource:	H
9batch_normalization_8_batchnorm_readvariableop_2_resource:	:
'dense_25_matmul_readvariableop_resource:	@6
(dense_25_biasadd_readvariableop_resource:@E
7batch_normalization_9_batchnorm_readvariableop_resource:@I
;batch_normalization_9_batchnorm_mul_readvariableop_resource:@G
9batch_normalization_9_batchnorm_readvariableop_1_resource:@G
9batch_normalization_9_batchnorm_readvariableop_2_resource:@9
'dense_26_matmul_readvariableop_resource:@ 6
(dense_26_biasadd_readvariableop_resource: 9
'dense_27_matmul_readvariableop_resource: 6
(dense_27_biasadd_readvariableop_resource:
identity’.batch_normalization_4/batchnorm/ReadVariableOp’0batch_normalization_4/batchnorm/ReadVariableOp_1’0batch_normalization_4/batchnorm/ReadVariableOp_2’2batch_normalization_4/batchnorm/mul/ReadVariableOp’.batch_normalization_5/batchnorm/ReadVariableOp’0batch_normalization_5/batchnorm/ReadVariableOp_1’0batch_normalization_5/batchnorm/ReadVariableOp_2’2batch_normalization_5/batchnorm/mul/ReadVariableOp’.batch_normalization_6/batchnorm/ReadVariableOp’0batch_normalization_6/batchnorm/ReadVariableOp_1’0batch_normalization_6/batchnorm/ReadVariableOp_2’2batch_normalization_6/batchnorm/mul/ReadVariableOp’.batch_normalization_7/batchnorm/ReadVariableOp’0batch_normalization_7/batchnorm/ReadVariableOp_1’0batch_normalization_7/batchnorm/ReadVariableOp_2’2batch_normalization_7/batchnorm/mul/ReadVariableOp’.batch_normalization_8/batchnorm/ReadVariableOp’0batch_normalization_8/batchnorm/ReadVariableOp_1’0batch_normalization_8/batchnorm/ReadVariableOp_2’2batch_normalization_8/batchnorm/mul/ReadVariableOp’.batch_normalization_9/batchnorm/ReadVariableOp’0batch_normalization_9/batchnorm/ReadVariableOp_1’0batch_normalization_9/batchnorm/ReadVariableOp_2’2batch_normalization_9/batchnorm/mul/ReadVariableOp’dense_21/BiasAdd/ReadVariableOp’dense_21/MatMul/ReadVariableOp’dense_22/BiasAdd/ReadVariableOp’dense_22/MatMul/ReadVariableOp’dense_23/BiasAdd/ReadVariableOp’dense_23/MatMul/ReadVariableOp’dense_24/BiasAdd/ReadVariableOp’dense_24/MatMul/ReadVariableOp’dense_25/BiasAdd/ReadVariableOp’dense_25/MatMul/ReadVariableOp’dense_26/BiasAdd/ReadVariableOp’dense_26/MatMul/ReadVariableOp’dense_27/BiasAdd/ReadVariableOp’dense_27/MatMul/ReadVariableOpΤ
.batch_normalization_4/batchnorm/ReadVariableOpReadVariableOp7batch_normalization_4_batchnorm_readvariableop_resource*
_output_shapes
:	*
dtype020
.batch_normalization_4/batchnorm/ReadVariableOp
%batch_normalization_4/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2'
%batch_normalization_4/batchnorm/add/yΰ
#batch_normalization_4/batchnorm/addAddV26batch_normalization_4/batchnorm/ReadVariableOp:value:0.batch_normalization_4/batchnorm/add/y:output:0*
T0*
_output_shapes
:	2%
#batch_normalization_4/batchnorm/add₯
%batch_normalization_4/batchnorm/RsqrtRsqrt'batch_normalization_4/batchnorm/add:z:0*
T0*
_output_shapes
:	2'
%batch_normalization_4/batchnorm/Rsqrtΰ
2batch_normalization_4/batchnorm/mul/ReadVariableOpReadVariableOp;batch_normalization_4_batchnorm_mul_readvariableop_resource*
_output_shapes
:	*
dtype024
2batch_normalization_4/batchnorm/mul/ReadVariableOpέ
#batch_normalization_4/batchnorm/mulMul)batch_normalization_4/batchnorm/Rsqrt:y:0:batch_normalization_4/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:	2%
#batch_normalization_4/batchnorm/mulΈ
%batch_normalization_4/batchnorm/mul_1Mulinputs'batch_normalization_4/batchnorm/mul:z:0*
T0*'
_output_shapes
:?????????	2'
%batch_normalization_4/batchnorm/mul_1Ϊ
0batch_normalization_4/batchnorm/ReadVariableOp_1ReadVariableOp9batch_normalization_4_batchnorm_readvariableop_1_resource*
_output_shapes
:	*
dtype022
0batch_normalization_4/batchnorm/ReadVariableOp_1έ
%batch_normalization_4/batchnorm/mul_2Mul8batch_normalization_4/batchnorm/ReadVariableOp_1:value:0'batch_normalization_4/batchnorm/mul:z:0*
T0*
_output_shapes
:	2'
%batch_normalization_4/batchnorm/mul_2Ϊ
0batch_normalization_4/batchnorm/ReadVariableOp_2ReadVariableOp9batch_normalization_4_batchnorm_readvariableop_2_resource*
_output_shapes
:	*
dtype022
0batch_normalization_4/batchnorm/ReadVariableOp_2Ϋ
#batch_normalization_4/batchnorm/subSub8batch_normalization_4/batchnorm/ReadVariableOp_2:value:0)batch_normalization_4/batchnorm/mul_2:z:0*
T0*
_output_shapes
:	2%
#batch_normalization_4/batchnorm/subέ
%batch_normalization_4/batchnorm/add_1AddV2)batch_normalization_4/batchnorm/mul_1:z:0'batch_normalization_4/batchnorm/sub:z:0*
T0*'
_output_shapes
:?????????	2'
%batch_normalization_4/batchnorm/add_1©
dense_21/MatMul/ReadVariableOpReadVariableOp'dense_21_matmul_readvariableop_resource*
_output_shapes
:		*
dtype02 
dense_21/MatMul/ReadVariableOp²
dense_21/MatMulMatMul)batch_normalization_4/batchnorm/add_1:z:0&dense_21/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????2
dense_21/MatMul¨
dense_21/BiasAdd/ReadVariableOpReadVariableOp(dense_21_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02!
dense_21/BiasAdd/ReadVariableOp¦
dense_21/BiasAddBiasAdddense_21/MatMul:product:0'dense_21/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????2
dense_21/BiasAddt
dense_21/ReluReludense_21/BiasAdd:output:0*
T0*(
_output_shapes
:?????????2
dense_21/Relu
dropout_4/IdentityIdentitydense_21/Relu:activations:0*
T0*(
_output_shapes
:?????????2
dropout_4/IdentityΥ
.batch_normalization_5/batchnorm/ReadVariableOpReadVariableOp7batch_normalization_5_batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype020
.batch_normalization_5/batchnorm/ReadVariableOp
%batch_normalization_5/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2'
%batch_normalization_5/batchnorm/add/yα
#batch_normalization_5/batchnorm/addAddV26batch_normalization_5/batchnorm/ReadVariableOp:value:0.batch_normalization_5/batchnorm/add/y:output:0*
T0*
_output_shapes	
:2%
#batch_normalization_5/batchnorm/add¦
%batch_normalization_5/batchnorm/RsqrtRsqrt'batch_normalization_5/batchnorm/add:z:0*
T0*
_output_shapes	
:2'
%batch_normalization_5/batchnorm/Rsqrtα
2batch_normalization_5/batchnorm/mul/ReadVariableOpReadVariableOp;batch_normalization_5_batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype024
2batch_normalization_5/batchnorm/mul/ReadVariableOpή
#batch_normalization_5/batchnorm/mulMul)batch_normalization_5/batchnorm/Rsqrt:y:0:batch_normalization_5/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:2%
#batch_normalization_5/batchnorm/mulΞ
%batch_normalization_5/batchnorm/mul_1Muldropout_4/Identity:output:0'batch_normalization_5/batchnorm/mul:z:0*
T0*(
_output_shapes
:?????????2'
%batch_normalization_5/batchnorm/mul_1Ϋ
0batch_normalization_5/batchnorm/ReadVariableOp_1ReadVariableOp9batch_normalization_5_batchnorm_readvariableop_1_resource*
_output_shapes	
:*
dtype022
0batch_normalization_5/batchnorm/ReadVariableOp_1ή
%batch_normalization_5/batchnorm/mul_2Mul8batch_normalization_5/batchnorm/ReadVariableOp_1:value:0'batch_normalization_5/batchnorm/mul:z:0*
T0*
_output_shapes	
:2'
%batch_normalization_5/batchnorm/mul_2Ϋ
0batch_normalization_5/batchnorm/ReadVariableOp_2ReadVariableOp9batch_normalization_5_batchnorm_readvariableop_2_resource*
_output_shapes	
:*
dtype022
0batch_normalization_5/batchnorm/ReadVariableOp_2ά
#batch_normalization_5/batchnorm/subSub8batch_normalization_5/batchnorm/ReadVariableOp_2:value:0)batch_normalization_5/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:2%
#batch_normalization_5/batchnorm/subή
%batch_normalization_5/batchnorm/add_1AddV2)batch_normalization_5/batchnorm/mul_1:z:0'batch_normalization_5/batchnorm/sub:z:0*
T0*(
_output_shapes
:?????????2'
%batch_normalization_5/batchnorm/add_1ͺ
dense_22/MatMul/ReadVariableOpReadVariableOp'dense_22_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype02 
dense_22/MatMul/ReadVariableOp²
dense_22/MatMulMatMul)batch_normalization_5/batchnorm/add_1:z:0&dense_22/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????2
dense_22/MatMul¨
dense_22/BiasAdd/ReadVariableOpReadVariableOp(dense_22_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02!
dense_22/BiasAdd/ReadVariableOp¦
dense_22/BiasAddBiasAdddense_22/MatMul:product:0'dense_22/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????2
dense_22/BiasAddt
dense_22/ReluReludense_22/BiasAdd:output:0*
T0*(
_output_shapes
:?????????2
dense_22/Relu
dropout_5/IdentityIdentitydense_22/Relu:activations:0*
T0*(
_output_shapes
:?????????2
dropout_5/IdentityΥ
.batch_normalization_6/batchnorm/ReadVariableOpReadVariableOp7batch_normalization_6_batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype020
.batch_normalization_6/batchnorm/ReadVariableOp
%batch_normalization_6/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2'
%batch_normalization_6/batchnorm/add/yα
#batch_normalization_6/batchnorm/addAddV26batch_normalization_6/batchnorm/ReadVariableOp:value:0.batch_normalization_6/batchnorm/add/y:output:0*
T0*
_output_shapes	
:2%
#batch_normalization_6/batchnorm/add¦
%batch_normalization_6/batchnorm/RsqrtRsqrt'batch_normalization_6/batchnorm/add:z:0*
T0*
_output_shapes	
:2'
%batch_normalization_6/batchnorm/Rsqrtα
2batch_normalization_6/batchnorm/mul/ReadVariableOpReadVariableOp;batch_normalization_6_batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype024
2batch_normalization_6/batchnorm/mul/ReadVariableOpή
#batch_normalization_6/batchnorm/mulMul)batch_normalization_6/batchnorm/Rsqrt:y:0:batch_normalization_6/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:2%
#batch_normalization_6/batchnorm/mulΞ
%batch_normalization_6/batchnorm/mul_1Muldropout_5/Identity:output:0'batch_normalization_6/batchnorm/mul:z:0*
T0*(
_output_shapes
:?????????2'
%batch_normalization_6/batchnorm/mul_1Ϋ
0batch_normalization_6/batchnorm/ReadVariableOp_1ReadVariableOp9batch_normalization_6_batchnorm_readvariableop_1_resource*
_output_shapes	
:*
dtype022
0batch_normalization_6/batchnorm/ReadVariableOp_1ή
%batch_normalization_6/batchnorm/mul_2Mul8batch_normalization_6/batchnorm/ReadVariableOp_1:value:0'batch_normalization_6/batchnorm/mul:z:0*
T0*
_output_shapes	
:2'
%batch_normalization_6/batchnorm/mul_2Ϋ
0batch_normalization_6/batchnorm/ReadVariableOp_2ReadVariableOp9batch_normalization_6_batchnorm_readvariableop_2_resource*
_output_shapes	
:*
dtype022
0batch_normalization_6/batchnorm/ReadVariableOp_2ά
#batch_normalization_6/batchnorm/subSub8batch_normalization_6/batchnorm/ReadVariableOp_2:value:0)batch_normalization_6/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:2%
#batch_normalization_6/batchnorm/subή
%batch_normalization_6/batchnorm/add_1AddV2)batch_normalization_6/batchnorm/mul_1:z:0'batch_normalization_6/batchnorm/sub:z:0*
T0*(
_output_shapes
:?????????2'
%batch_normalization_6/batchnorm/add_1ͺ
dense_23/MatMul/ReadVariableOpReadVariableOp'dense_23_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype02 
dense_23/MatMul/ReadVariableOp²
dense_23/MatMulMatMul)batch_normalization_6/batchnorm/add_1:z:0&dense_23/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????2
dense_23/MatMul¨
dense_23/BiasAdd/ReadVariableOpReadVariableOp(dense_23_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02!
dense_23/BiasAdd/ReadVariableOp¦
dense_23/BiasAddBiasAdddense_23/MatMul:product:0'dense_23/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????2
dense_23/BiasAddt
dense_23/ReluReludense_23/BiasAdd:output:0*
T0*(
_output_shapes
:?????????2
dense_23/Relu
dropout_6/IdentityIdentitydense_23/Relu:activations:0*
T0*(
_output_shapes
:?????????2
dropout_6/IdentityΥ
.batch_normalization_7/batchnorm/ReadVariableOpReadVariableOp7batch_normalization_7_batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype020
.batch_normalization_7/batchnorm/ReadVariableOp
%batch_normalization_7/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2'
%batch_normalization_7/batchnorm/add/yα
#batch_normalization_7/batchnorm/addAddV26batch_normalization_7/batchnorm/ReadVariableOp:value:0.batch_normalization_7/batchnorm/add/y:output:0*
T0*
_output_shapes	
:2%
#batch_normalization_7/batchnorm/add¦
%batch_normalization_7/batchnorm/RsqrtRsqrt'batch_normalization_7/batchnorm/add:z:0*
T0*
_output_shapes	
:2'
%batch_normalization_7/batchnorm/Rsqrtα
2batch_normalization_7/batchnorm/mul/ReadVariableOpReadVariableOp;batch_normalization_7_batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype024
2batch_normalization_7/batchnorm/mul/ReadVariableOpή
#batch_normalization_7/batchnorm/mulMul)batch_normalization_7/batchnorm/Rsqrt:y:0:batch_normalization_7/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:2%
#batch_normalization_7/batchnorm/mulΞ
%batch_normalization_7/batchnorm/mul_1Muldropout_6/Identity:output:0'batch_normalization_7/batchnorm/mul:z:0*
T0*(
_output_shapes
:?????????2'
%batch_normalization_7/batchnorm/mul_1Ϋ
0batch_normalization_7/batchnorm/ReadVariableOp_1ReadVariableOp9batch_normalization_7_batchnorm_readvariableop_1_resource*
_output_shapes	
:*
dtype022
0batch_normalization_7/batchnorm/ReadVariableOp_1ή
%batch_normalization_7/batchnorm/mul_2Mul8batch_normalization_7/batchnorm/ReadVariableOp_1:value:0'batch_normalization_7/batchnorm/mul:z:0*
T0*
_output_shapes	
:2'
%batch_normalization_7/batchnorm/mul_2Ϋ
0batch_normalization_7/batchnorm/ReadVariableOp_2ReadVariableOp9batch_normalization_7_batchnorm_readvariableop_2_resource*
_output_shapes	
:*
dtype022
0batch_normalization_7/batchnorm/ReadVariableOp_2ά
#batch_normalization_7/batchnorm/subSub8batch_normalization_7/batchnorm/ReadVariableOp_2:value:0)batch_normalization_7/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:2%
#batch_normalization_7/batchnorm/subή
%batch_normalization_7/batchnorm/add_1AddV2)batch_normalization_7/batchnorm/mul_1:z:0'batch_normalization_7/batchnorm/sub:z:0*
T0*(
_output_shapes
:?????????2'
%batch_normalization_7/batchnorm/add_1ͺ
dense_24/MatMul/ReadVariableOpReadVariableOp'dense_24_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype02 
dense_24/MatMul/ReadVariableOp²
dense_24/MatMulMatMul)batch_normalization_7/batchnorm/add_1:z:0&dense_24/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????2
dense_24/MatMul¨
dense_24/BiasAdd/ReadVariableOpReadVariableOp(dense_24_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02!
dense_24/BiasAdd/ReadVariableOp¦
dense_24/BiasAddBiasAdddense_24/MatMul:product:0'dense_24/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????2
dense_24/BiasAddt
dense_24/ReluReludense_24/BiasAdd:output:0*
T0*(
_output_shapes
:?????????2
dense_24/Relu
dropout_7/IdentityIdentitydense_24/Relu:activations:0*
T0*(
_output_shapes
:?????????2
dropout_7/IdentityΥ
.batch_normalization_8/batchnorm/ReadVariableOpReadVariableOp7batch_normalization_8_batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype020
.batch_normalization_8/batchnorm/ReadVariableOp
%batch_normalization_8/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2'
%batch_normalization_8/batchnorm/add/yα
#batch_normalization_8/batchnorm/addAddV26batch_normalization_8/batchnorm/ReadVariableOp:value:0.batch_normalization_8/batchnorm/add/y:output:0*
T0*
_output_shapes	
:2%
#batch_normalization_8/batchnorm/add¦
%batch_normalization_8/batchnorm/RsqrtRsqrt'batch_normalization_8/batchnorm/add:z:0*
T0*
_output_shapes	
:2'
%batch_normalization_8/batchnorm/Rsqrtα
2batch_normalization_8/batchnorm/mul/ReadVariableOpReadVariableOp;batch_normalization_8_batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype024
2batch_normalization_8/batchnorm/mul/ReadVariableOpή
#batch_normalization_8/batchnorm/mulMul)batch_normalization_8/batchnorm/Rsqrt:y:0:batch_normalization_8/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:2%
#batch_normalization_8/batchnorm/mulΞ
%batch_normalization_8/batchnorm/mul_1Muldropout_7/Identity:output:0'batch_normalization_8/batchnorm/mul:z:0*
T0*(
_output_shapes
:?????????2'
%batch_normalization_8/batchnorm/mul_1Ϋ
0batch_normalization_8/batchnorm/ReadVariableOp_1ReadVariableOp9batch_normalization_8_batchnorm_readvariableop_1_resource*
_output_shapes	
:*
dtype022
0batch_normalization_8/batchnorm/ReadVariableOp_1ή
%batch_normalization_8/batchnorm/mul_2Mul8batch_normalization_8/batchnorm/ReadVariableOp_1:value:0'batch_normalization_8/batchnorm/mul:z:0*
T0*
_output_shapes	
:2'
%batch_normalization_8/batchnorm/mul_2Ϋ
0batch_normalization_8/batchnorm/ReadVariableOp_2ReadVariableOp9batch_normalization_8_batchnorm_readvariableop_2_resource*
_output_shapes	
:*
dtype022
0batch_normalization_8/batchnorm/ReadVariableOp_2ά
#batch_normalization_8/batchnorm/subSub8batch_normalization_8/batchnorm/ReadVariableOp_2:value:0)batch_normalization_8/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:2%
#batch_normalization_8/batchnorm/subή
%batch_normalization_8/batchnorm/add_1AddV2)batch_normalization_8/batchnorm/mul_1:z:0'batch_normalization_8/batchnorm/sub:z:0*
T0*(
_output_shapes
:?????????2'
%batch_normalization_8/batchnorm/add_1©
dense_25/MatMul/ReadVariableOpReadVariableOp'dense_25_matmul_readvariableop_resource*
_output_shapes
:	@*
dtype02 
dense_25/MatMul/ReadVariableOp±
dense_25/MatMulMatMul)batch_normalization_8/batchnorm/add_1:z:0&dense_25/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
dense_25/MatMul§
dense_25/BiasAdd/ReadVariableOpReadVariableOp(dense_25_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
dense_25/BiasAdd/ReadVariableOp₯
dense_25/BiasAddBiasAdddense_25/MatMul:product:0'dense_25/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
dense_25/BiasAdds
dense_25/ReluReludense_25/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
dense_25/Relu
dropout_8/IdentityIdentitydense_25/Relu:activations:0*
T0*'
_output_shapes
:?????????@2
dropout_8/IdentityΤ
.batch_normalization_9/batchnorm/ReadVariableOpReadVariableOp7batch_normalization_9_batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype020
.batch_normalization_9/batchnorm/ReadVariableOp
%batch_normalization_9/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2'
%batch_normalization_9/batchnorm/add/yΰ
#batch_normalization_9/batchnorm/addAddV26batch_normalization_9/batchnorm/ReadVariableOp:value:0.batch_normalization_9/batchnorm/add/y:output:0*
T0*
_output_shapes
:@2%
#batch_normalization_9/batchnorm/add₯
%batch_normalization_9/batchnorm/RsqrtRsqrt'batch_normalization_9/batchnorm/add:z:0*
T0*
_output_shapes
:@2'
%batch_normalization_9/batchnorm/Rsqrtΰ
2batch_normalization_9/batchnorm/mul/ReadVariableOpReadVariableOp;batch_normalization_9_batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype024
2batch_normalization_9/batchnorm/mul/ReadVariableOpέ
#batch_normalization_9/batchnorm/mulMul)batch_normalization_9/batchnorm/Rsqrt:y:0:batch_normalization_9/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:@2%
#batch_normalization_9/batchnorm/mulΝ
%batch_normalization_9/batchnorm/mul_1Muldropout_8/Identity:output:0'batch_normalization_9/batchnorm/mul:z:0*
T0*'
_output_shapes
:?????????@2'
%batch_normalization_9/batchnorm/mul_1Ϊ
0batch_normalization_9/batchnorm/ReadVariableOp_1ReadVariableOp9batch_normalization_9_batchnorm_readvariableop_1_resource*
_output_shapes
:@*
dtype022
0batch_normalization_9/batchnorm/ReadVariableOp_1έ
%batch_normalization_9/batchnorm/mul_2Mul8batch_normalization_9/batchnorm/ReadVariableOp_1:value:0'batch_normalization_9/batchnorm/mul:z:0*
T0*
_output_shapes
:@2'
%batch_normalization_9/batchnorm/mul_2Ϊ
0batch_normalization_9/batchnorm/ReadVariableOp_2ReadVariableOp9batch_normalization_9_batchnorm_readvariableop_2_resource*
_output_shapes
:@*
dtype022
0batch_normalization_9/batchnorm/ReadVariableOp_2Ϋ
#batch_normalization_9/batchnorm/subSub8batch_normalization_9/batchnorm/ReadVariableOp_2:value:0)batch_normalization_9/batchnorm/mul_2:z:0*
T0*
_output_shapes
:@2%
#batch_normalization_9/batchnorm/subέ
%batch_normalization_9/batchnorm/add_1AddV2)batch_normalization_9/batchnorm/mul_1:z:0'batch_normalization_9/batchnorm/sub:z:0*
T0*'
_output_shapes
:?????????@2'
%batch_normalization_9/batchnorm/add_1¨
dense_26/MatMul/ReadVariableOpReadVariableOp'dense_26_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype02 
dense_26/MatMul/ReadVariableOp±
dense_26/MatMulMatMul)batch_normalization_9/batchnorm/add_1:z:0&dense_26/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
dense_26/MatMul§
dense_26/BiasAdd/ReadVariableOpReadVariableOp(dense_26_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02!
dense_26/BiasAdd/ReadVariableOp₯
dense_26/BiasAddBiasAdddense_26/MatMul:product:0'dense_26/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
dense_26/BiasAdds
dense_26/ReluReludense_26/BiasAdd:output:0*
T0*'
_output_shapes
:????????? 2
dense_26/Relu
dropout_9/IdentityIdentitydense_26/Relu:activations:0*
T0*'
_output_shapes
:????????? 2
dropout_9/Identity¨
dense_27/MatMul/ReadVariableOpReadVariableOp'dense_27_matmul_readvariableop_resource*
_output_shapes

: *
dtype02 
dense_27/MatMul/ReadVariableOp£
dense_27/MatMulMatMuldropout_9/Identity:output:0&dense_27/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_27/MatMul§
dense_27/BiasAdd/ReadVariableOpReadVariableOp(dense_27_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_27/BiasAdd/ReadVariableOp₯
dense_27/BiasAddBiasAdddense_27/MatMul:product:0'dense_27/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_27/BiasAdd|
dense_27/SigmoidSigmoiddense_27/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_27/Sigmoido
IdentityIdentitydense_27/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityλ
NoOpNoOp/^batch_normalization_4/batchnorm/ReadVariableOp1^batch_normalization_4/batchnorm/ReadVariableOp_11^batch_normalization_4/batchnorm/ReadVariableOp_23^batch_normalization_4/batchnorm/mul/ReadVariableOp/^batch_normalization_5/batchnorm/ReadVariableOp1^batch_normalization_5/batchnorm/ReadVariableOp_11^batch_normalization_5/batchnorm/ReadVariableOp_23^batch_normalization_5/batchnorm/mul/ReadVariableOp/^batch_normalization_6/batchnorm/ReadVariableOp1^batch_normalization_6/batchnorm/ReadVariableOp_11^batch_normalization_6/batchnorm/ReadVariableOp_23^batch_normalization_6/batchnorm/mul/ReadVariableOp/^batch_normalization_7/batchnorm/ReadVariableOp1^batch_normalization_7/batchnorm/ReadVariableOp_11^batch_normalization_7/batchnorm/ReadVariableOp_23^batch_normalization_7/batchnorm/mul/ReadVariableOp/^batch_normalization_8/batchnorm/ReadVariableOp1^batch_normalization_8/batchnorm/ReadVariableOp_11^batch_normalization_8/batchnorm/ReadVariableOp_23^batch_normalization_8/batchnorm/mul/ReadVariableOp/^batch_normalization_9/batchnorm/ReadVariableOp1^batch_normalization_9/batchnorm/ReadVariableOp_11^batch_normalization_9/batchnorm/ReadVariableOp_23^batch_normalization_9/batchnorm/mul/ReadVariableOp ^dense_21/BiasAdd/ReadVariableOp^dense_21/MatMul/ReadVariableOp ^dense_22/BiasAdd/ReadVariableOp^dense_22/MatMul/ReadVariableOp ^dense_23/BiasAdd/ReadVariableOp^dense_23/MatMul/ReadVariableOp ^dense_24/BiasAdd/ReadVariableOp^dense_24/MatMul/ReadVariableOp ^dense_25/BiasAdd/ReadVariableOp^dense_25/MatMul/ReadVariableOp ^dense_26/BiasAdd/ReadVariableOp^dense_26/MatMul/ReadVariableOp ^dense_27/BiasAdd/ReadVariableOp^dense_27/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*r
_input_shapesa
_:?????????	: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2`
.batch_normalization_4/batchnorm/ReadVariableOp.batch_normalization_4/batchnorm/ReadVariableOp2d
0batch_normalization_4/batchnorm/ReadVariableOp_10batch_normalization_4/batchnorm/ReadVariableOp_12d
0batch_normalization_4/batchnorm/ReadVariableOp_20batch_normalization_4/batchnorm/ReadVariableOp_22h
2batch_normalization_4/batchnorm/mul/ReadVariableOp2batch_normalization_4/batchnorm/mul/ReadVariableOp2`
.batch_normalization_5/batchnorm/ReadVariableOp.batch_normalization_5/batchnorm/ReadVariableOp2d
0batch_normalization_5/batchnorm/ReadVariableOp_10batch_normalization_5/batchnorm/ReadVariableOp_12d
0batch_normalization_5/batchnorm/ReadVariableOp_20batch_normalization_5/batchnorm/ReadVariableOp_22h
2batch_normalization_5/batchnorm/mul/ReadVariableOp2batch_normalization_5/batchnorm/mul/ReadVariableOp2`
.batch_normalization_6/batchnorm/ReadVariableOp.batch_normalization_6/batchnorm/ReadVariableOp2d
0batch_normalization_6/batchnorm/ReadVariableOp_10batch_normalization_6/batchnorm/ReadVariableOp_12d
0batch_normalization_6/batchnorm/ReadVariableOp_20batch_normalization_6/batchnorm/ReadVariableOp_22h
2batch_normalization_6/batchnorm/mul/ReadVariableOp2batch_normalization_6/batchnorm/mul/ReadVariableOp2`
.batch_normalization_7/batchnorm/ReadVariableOp.batch_normalization_7/batchnorm/ReadVariableOp2d
0batch_normalization_7/batchnorm/ReadVariableOp_10batch_normalization_7/batchnorm/ReadVariableOp_12d
0batch_normalization_7/batchnorm/ReadVariableOp_20batch_normalization_7/batchnorm/ReadVariableOp_22h
2batch_normalization_7/batchnorm/mul/ReadVariableOp2batch_normalization_7/batchnorm/mul/ReadVariableOp2`
.batch_normalization_8/batchnorm/ReadVariableOp.batch_normalization_8/batchnorm/ReadVariableOp2d
0batch_normalization_8/batchnorm/ReadVariableOp_10batch_normalization_8/batchnorm/ReadVariableOp_12d
0batch_normalization_8/batchnorm/ReadVariableOp_20batch_normalization_8/batchnorm/ReadVariableOp_22h
2batch_normalization_8/batchnorm/mul/ReadVariableOp2batch_normalization_8/batchnorm/mul/ReadVariableOp2`
.batch_normalization_9/batchnorm/ReadVariableOp.batch_normalization_9/batchnorm/ReadVariableOp2d
0batch_normalization_9/batchnorm/ReadVariableOp_10batch_normalization_9/batchnorm/ReadVariableOp_12d
0batch_normalization_9/batchnorm/ReadVariableOp_20batch_normalization_9/batchnorm/ReadVariableOp_22h
2batch_normalization_9/batchnorm/mul/ReadVariableOp2batch_normalization_9/batchnorm/mul/ReadVariableOp2B
dense_21/BiasAdd/ReadVariableOpdense_21/BiasAdd/ReadVariableOp2@
dense_21/MatMul/ReadVariableOpdense_21/MatMul/ReadVariableOp2B
dense_22/BiasAdd/ReadVariableOpdense_22/BiasAdd/ReadVariableOp2@
dense_22/MatMul/ReadVariableOpdense_22/MatMul/ReadVariableOp2B
dense_23/BiasAdd/ReadVariableOpdense_23/BiasAdd/ReadVariableOp2@
dense_23/MatMul/ReadVariableOpdense_23/MatMul/ReadVariableOp2B
dense_24/BiasAdd/ReadVariableOpdense_24/BiasAdd/ReadVariableOp2@
dense_24/MatMul/ReadVariableOpdense_24/MatMul/ReadVariableOp2B
dense_25/BiasAdd/ReadVariableOpdense_25/BiasAdd/ReadVariableOp2@
dense_25/MatMul/ReadVariableOpdense_25/MatMul/ReadVariableOp2B
dense_26/BiasAdd/ReadVariableOpdense_26/BiasAdd/ReadVariableOp2@
dense_26/MatMul/ReadVariableOpdense_26/MatMul/ReadVariableOp2B
dense_27/BiasAdd/ReadVariableOpdense_27/BiasAdd/ReadVariableOp2@
dense_27/MatMul/ReadVariableOpdense_27/MatMul/ReadVariableOp:O K
'
_output_shapes
:?????????	
 
_user_specified_nameinputs
Η
F
*__inference_dropout_7_layer_call_fn_601548

inputs
identityΙ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8 *N
fIRG
E__inference_dropout_7_layer_call_and_return_conditional_losses_5988112
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:?????????:P L
(
_output_shapes
:?????????
 
_user_specified_nameinputs
έY
Ώ
Q__inference_batch_normalization_4_layer_call_and_return_conditional_losses_597241

inputs-
maximum_readvariableop_resource:	)
sub_readvariableop_resource:	)
mul_readvariableop_resource:	+
add_1_readvariableop_resource:	7
)assignmovingavg_2_readvariableop_resource:	7
)assignmovingavg_3_readvariableop_resource:	%
assignnewvalue_resource:	

identity_6’AssignMovingAvg’AssignMovingAvg/ReadVariableOp’AssignMovingAvg_1’ AssignMovingAvg_1/ReadVariableOp’AssignMovingAvg_2’ AssignMovingAvg_2/ReadVariableOp’AssignMovingAvg_3’ AssignMovingAvg_3/ReadVariableOp’AssignNewValue’Maximum/ReadVariableOp’ReadVariableOp’add_1/ReadVariableOp’mul/ReadVariableOp’mul_1/ReadVariableOp’mul_2/ReadVariableOp’sub/ReadVariableOp
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2 
moments/mean/reduction_indices
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:	*
	keep_dims(2
moments/mean|
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes

:	2
moments/StopGradient€
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*'
_output_shapes
:?????????	2
moments/SquaredDifference
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2$
"moments/variance/reduction_indices²
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:	*
	keep_dims(2
moments/variance
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:	*
squeeze_dims
 2
moments/Squeeze
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:	*
squeeze_dims
 2
moments/Squeeze_1S
add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
add/yd
addAddV2moments/Squeeze_1:output:0add/y:output:0*
T0*
_output_shapes
:	2
addB
SqrtSqrtadd:z:0*
T0*
_output_shapes
:	2
SqrtY
Sqrt_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *o:2

Sqrt_1/xL
Sqrt_1SqrtSqrt_1/x:output:0*
T0*
_output_shapes
: 2
Sqrt_1
Maximum/ReadVariableOpReadVariableOpmaximum_readvariableop_resource*
_output_shapes
:	*
dtype02
Maximum/ReadVariableOpn
MaximumMaximumMaximum/ReadVariableOp:value:0
Sqrt_1:y:0*
T0*
_output_shapes
:	2	
MaximumY
truedivRealDivSqrt:y:0Maximum:z:0*
T0*
_output_shapes
:	2	
truediv
sub/ReadVariableOpReadVariableOpsub_readvariableop_resource*
_output_shapes
:	*
dtype02
sub/ReadVariableOpl
subSubmoments/Squeeze:output:0sub/ReadVariableOp:value:0*
T0*
_output_shapes
:	2
sub\
	truediv_1RealDivsub:z:0Maximum:z:0*
T0*
_output_shapes
:	2
	truediv_1u
IdentityIdentitymoments/Squeeze:output:0^truediv
^truediv_1*
T0*
_output_shapes
:	2

Identityi

Identity_1IdentitySqrt:y:0^truediv
^truediv_1*
T0*
_output_shapes
:	2

Identity_1\

Identity_2IdentityIdentity:output:0*
T0*
_output_shapes
:	2

Identity_2s
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
Χ#<2
AssignMovingAvg/decay
AssignMovingAvg/ReadVariableOpReadVariableOpsub_readvariableop_resource*
_output_shapes
:	*
dtype02 
AssignMovingAvg/ReadVariableOp
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0Identity_2:output:0*
T0*
_output_shapes
:	2
AssignMovingAvg/sub
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:	2
AssignMovingAvg/mulΘ
AssignMovingAvgAssignSubVariableOpsub_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp^sub/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg^

Identity_3IdentityIdentity_1:output:0*
T0*
_output_shapes
:	2

Identity_3w
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
Χ#<2
AssignMovingAvg_1/decay 
 AssignMovingAvg_1/ReadVariableOpReadVariableOpmaximum_readvariableop_resource*
_output_shapes
:	*
dtype02"
 AssignMovingAvg_1/ReadVariableOp
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0Identity_3:output:0*
T0*
_output_shapes
:	2
AssignMovingAvg_1/sub
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:	2
AssignMovingAvg_1/mulΨ
AssignMovingAvg_1AssignSubVariableOpmaximum_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp^Maximum/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_1

Identity_4IdentityIdentity:output:0^AssignMovingAvg^AssignMovingAvg_1*
T0*
_output_shapes
:	2

Identity_4

Identity_5Identitymoments/Squeeze_1:output:0^AssignMovingAvg^AssignMovingAvg_1*
T0*
_output_shapes
:	2

Identity_5V
renorm_rStopGradienttruediv:z:0*
T0*
_output_shapes
:	2

renorm_rX
renorm_dStopGradienttruediv_1:z:0*
T0*
_output_shapes
:	2

renorm_d
mul/ReadVariableOpReadVariableOpmul_readvariableop_resource*
_output_shapes
:	*
dtype02
mul/ReadVariableOpe
mulMulrenorm_r:output:0mul/ReadVariableOp:value:0*
T0*
_output_shapes
:	2
mul
mul_1/ReadVariableOpReadVariableOpmul_readvariableop_resource*
_output_shapes
:	*
dtype02
mul_1/ReadVariableOpk
mul_1Mulrenorm_d:output:0mul_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	2
mul_1
add_1/ReadVariableOpReadVariableOpadd_1_readvariableop_resource*
_output_shapes
:	*
dtype02
add_1/ReadVariableOpe
add_1AddV2	mul_1:z:0add_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	2
add_1w
AssignMovingAvg_2/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
Χ#<2
AssignMovingAvg_2/decayͺ
 AssignMovingAvg_2/ReadVariableOpReadVariableOp)assignmovingavg_2_readvariableop_resource*
_output_shapes
:	*
dtype02"
 AssignMovingAvg_2/ReadVariableOp
AssignMovingAvg_2/subSub(AssignMovingAvg_2/ReadVariableOp:value:0Identity_4:output:0*
T0*
_output_shapes
:	2
AssignMovingAvg_2/sub
AssignMovingAvg_2/mulMulAssignMovingAvg_2/sub:z:0 AssignMovingAvg_2/decay:output:0*
T0*
_output_shapes
:	2
AssignMovingAvg_2/mulΙ
AssignMovingAvg_2AssignSubVariableOp)assignmovingavg_2_readvariableop_resourceAssignMovingAvg_2/mul:z:0!^AssignMovingAvg_2/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_2W
add_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2	
add_2/yc
add_2AddV2Identity_5:output:0add_2/y:output:0*
T0*
_output_shapes
:	2
add_2H
Sqrt_2Sqrt	add_2:z:0*
T0*
_output_shapes
:	2
Sqrt_2w
AssignMovingAvg_3/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
Χ#<2
AssignMovingAvg_3/decayͺ
 AssignMovingAvg_3/ReadVariableOpReadVariableOp)assignmovingavg_3_readvariableop_resource*
_output_shapes
:	*
dtype02"
 AssignMovingAvg_3/ReadVariableOp
AssignMovingAvg_3/subSub(AssignMovingAvg_3/ReadVariableOp:value:0
Sqrt_2:y:0*
T0*
_output_shapes
:	2
AssignMovingAvg_3/sub
AssignMovingAvg_3/mulMulAssignMovingAvg_3/sub:z:0 AssignMovingAvg_3/decay:output:0*
T0*
_output_shapes
:	2
AssignMovingAvg_3/mulΙ
AssignMovingAvg_3AssignSubVariableOp)assignmovingavg_3_readvariableop_resourceAssignMovingAvg_3/mul:z:0!^AssignMovingAvg_3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_3
ReadVariableOpReadVariableOp)assignmovingavg_3_readvariableop_resource^AssignMovingAvg_3*
_output_shapes
:	*
dtype02
ReadVariableOp¦
mul_2/ReadVariableOpReadVariableOp)assignmovingavg_3_readvariableop_resource^AssignMovingAvg_3*
_output_shapes
:	*
dtype02
mul_2/ReadVariableOpp
mul_2MulReadVariableOp:value:0mul_2/ReadVariableOp:value:0*
T0*
_output_shapes
:	2
mul_2W
sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2	
sub_1/yW
sub_1Sub	mul_2:z:0sub_1/y:output:0*
T0*
_output_shapes
:	2
sub_1D
ReluRelu	sub_1:z:0*
T0*
_output_shapes
:	2
Relu
AssignNewValueAssignVariableOpassignnewvalue_resourceRelu:activations:0*
_output_shapes
 *
dtype02
AssignNewValueg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batchnorm/add/y
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:	2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:	2
batchnorm/Rsqrth
batchnorm/mulMulbatchnorm/Rsqrt:y:0mul:z:0*
T0*
_output_shapes
:	2
batchnorm/mulv
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:?????????	2
batchnorm/mul_1{
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:	2
batchnorm/mul_2j
batchnorm/subSub	add_1:z:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:	2
batchnorm/sub
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:?????????	2
batchnorm/add_1r

Identity_6Identitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:?????????	2

Identity_6Π
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^AssignMovingAvg_2!^AssignMovingAvg_2/ReadVariableOp^AssignMovingAvg_3!^AssignMovingAvg_3/ReadVariableOp^AssignNewValue^Maximum/ReadVariableOp^ReadVariableOp^add_1/ReadVariableOp^mul/ReadVariableOp^mul_1/ReadVariableOp^mul_2/ReadVariableOp^sub/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"!

identity_6Identity_6:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????	: : : : : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp2&
AssignMovingAvg_2AssignMovingAvg_22D
 AssignMovingAvg_2/ReadVariableOp AssignMovingAvg_2/ReadVariableOp2&
AssignMovingAvg_3AssignMovingAvg_32D
 AssignMovingAvg_3/ReadVariableOp AssignMovingAvg_3/ReadVariableOp2 
AssignNewValueAssignNewValue20
Maximum/ReadVariableOpMaximum/ReadVariableOp2 
ReadVariableOpReadVariableOp2,
add_1/ReadVariableOpadd_1/ReadVariableOp2(
mul/ReadVariableOpmul/ReadVariableOp2,
mul_1/ReadVariableOpmul_1/ReadVariableOp2,
mul_2/ReadVariableOpmul_2/ReadVariableOp2(
sub/ReadVariableOpsub/ReadVariableOp:O K
'
_output_shapes
:?????????	
 
_user_specified_nameinputs
ύ

)__inference_dense_24_layer_call_fn_601526

inputs
unknown:

	unknown_0:	
identity’StatefulPartitionedCallϊ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8 *M
fHRF
D__inference_dense_24_layer_call_and_return_conditional_losses_5988002
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:?????????
 
_user_specified_nameinputs
©
c
*__inference_dropout_4_layer_call_fn_601025

inputs
identity’StatefulPartitionedCallα
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8 *N
fIRG
E__inference_dropout_4_layer_call_and_return_conditional_losses_5991712
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:?????????22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:?????????
 
_user_specified_nameinputs
έY
Ώ
Q__inference_batch_normalization_9_layer_call_and_return_conditional_losses_601826

inputs-
maximum_readvariableop_resource:@)
sub_readvariableop_resource:@)
mul_readvariableop_resource:@+
add_1_readvariableop_resource:@7
)assignmovingavg_2_readvariableop_resource:@7
)assignmovingavg_3_readvariableop_resource:@%
assignnewvalue_resource:@

identity_6’AssignMovingAvg’AssignMovingAvg/ReadVariableOp’AssignMovingAvg_1’ AssignMovingAvg_1/ReadVariableOp’AssignMovingAvg_2’ AssignMovingAvg_2/ReadVariableOp’AssignMovingAvg_3’ AssignMovingAvg_3/ReadVariableOp’AssignNewValue’Maximum/ReadVariableOp’ReadVariableOp’add_1/ReadVariableOp’mul/ReadVariableOp’mul_1/ReadVariableOp’mul_2/ReadVariableOp’sub/ReadVariableOp
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2 
moments/mean/reduction_indices
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:@*
	keep_dims(2
moments/mean|
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes

:@2
moments/StopGradient€
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*'
_output_shapes
:?????????@2
moments/SquaredDifference
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2$
"moments/variance/reduction_indices²
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:@*
	keep_dims(2
moments/variance
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:@*
squeeze_dims
 2
moments/Squeeze
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:@*
squeeze_dims
 2
moments/Squeeze_1S
add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
add/yd
addAddV2moments/Squeeze_1:output:0add/y:output:0*
T0*
_output_shapes
:@2
addB
SqrtSqrtadd:z:0*
T0*
_output_shapes
:@2
SqrtY
Sqrt_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *o:2

Sqrt_1/xL
Sqrt_1SqrtSqrt_1/x:output:0*
T0*
_output_shapes
: 2
Sqrt_1
Maximum/ReadVariableOpReadVariableOpmaximum_readvariableop_resource*
_output_shapes
:@*
dtype02
Maximum/ReadVariableOpn
MaximumMaximumMaximum/ReadVariableOp:value:0
Sqrt_1:y:0*
T0*
_output_shapes
:@2	
MaximumY
truedivRealDivSqrt:y:0Maximum:z:0*
T0*
_output_shapes
:@2	
truediv
sub/ReadVariableOpReadVariableOpsub_readvariableop_resource*
_output_shapes
:@*
dtype02
sub/ReadVariableOpl
subSubmoments/Squeeze:output:0sub/ReadVariableOp:value:0*
T0*
_output_shapes
:@2
sub\
	truediv_1RealDivsub:z:0Maximum:z:0*
T0*
_output_shapes
:@2
	truediv_1u
IdentityIdentitymoments/Squeeze:output:0^truediv
^truediv_1*
T0*
_output_shapes
:@2

Identityi

Identity_1IdentitySqrt:y:0^truediv
^truediv_1*
T0*
_output_shapes
:@2

Identity_1\

Identity_2IdentityIdentity:output:0*
T0*
_output_shapes
:@2

Identity_2s
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
Χ#<2
AssignMovingAvg/decay
AssignMovingAvg/ReadVariableOpReadVariableOpsub_readvariableop_resource*
_output_shapes
:@*
dtype02 
AssignMovingAvg/ReadVariableOp
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0Identity_2:output:0*
T0*
_output_shapes
:@2
AssignMovingAvg/sub
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:@2
AssignMovingAvg/mulΘ
AssignMovingAvgAssignSubVariableOpsub_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp^sub/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg^

Identity_3IdentityIdentity_1:output:0*
T0*
_output_shapes
:@2

Identity_3w
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
Χ#<2
AssignMovingAvg_1/decay 
 AssignMovingAvg_1/ReadVariableOpReadVariableOpmaximum_readvariableop_resource*
_output_shapes
:@*
dtype02"
 AssignMovingAvg_1/ReadVariableOp
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0Identity_3:output:0*
T0*
_output_shapes
:@2
AssignMovingAvg_1/sub
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:@2
AssignMovingAvg_1/mulΨ
AssignMovingAvg_1AssignSubVariableOpmaximum_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp^Maximum/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_1

Identity_4IdentityIdentity:output:0^AssignMovingAvg^AssignMovingAvg_1*
T0*
_output_shapes
:@2

Identity_4

Identity_5Identitymoments/Squeeze_1:output:0^AssignMovingAvg^AssignMovingAvg_1*
T0*
_output_shapes
:@2

Identity_5V
renorm_rStopGradienttruediv:z:0*
T0*
_output_shapes
:@2

renorm_rX
renorm_dStopGradienttruediv_1:z:0*
T0*
_output_shapes
:@2

renorm_d
mul/ReadVariableOpReadVariableOpmul_readvariableop_resource*
_output_shapes
:@*
dtype02
mul/ReadVariableOpe
mulMulrenorm_r:output:0mul/ReadVariableOp:value:0*
T0*
_output_shapes
:@2
mul
mul_1/ReadVariableOpReadVariableOpmul_readvariableop_resource*
_output_shapes
:@*
dtype02
mul_1/ReadVariableOpk
mul_1Mulrenorm_d:output:0mul_1/ReadVariableOp:value:0*
T0*
_output_shapes
:@2
mul_1
add_1/ReadVariableOpReadVariableOpadd_1_readvariableop_resource*
_output_shapes
:@*
dtype02
add_1/ReadVariableOpe
add_1AddV2	mul_1:z:0add_1/ReadVariableOp:value:0*
T0*
_output_shapes
:@2
add_1w
AssignMovingAvg_2/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
Χ#<2
AssignMovingAvg_2/decayͺ
 AssignMovingAvg_2/ReadVariableOpReadVariableOp)assignmovingavg_2_readvariableop_resource*
_output_shapes
:@*
dtype02"
 AssignMovingAvg_2/ReadVariableOp
AssignMovingAvg_2/subSub(AssignMovingAvg_2/ReadVariableOp:value:0Identity_4:output:0*
T0*
_output_shapes
:@2
AssignMovingAvg_2/sub
AssignMovingAvg_2/mulMulAssignMovingAvg_2/sub:z:0 AssignMovingAvg_2/decay:output:0*
T0*
_output_shapes
:@2
AssignMovingAvg_2/mulΙ
AssignMovingAvg_2AssignSubVariableOp)assignmovingavg_2_readvariableop_resourceAssignMovingAvg_2/mul:z:0!^AssignMovingAvg_2/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_2W
add_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2	
add_2/yc
add_2AddV2Identity_5:output:0add_2/y:output:0*
T0*
_output_shapes
:@2
add_2H
Sqrt_2Sqrt	add_2:z:0*
T0*
_output_shapes
:@2
Sqrt_2w
AssignMovingAvg_3/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
Χ#<2
AssignMovingAvg_3/decayͺ
 AssignMovingAvg_3/ReadVariableOpReadVariableOp)assignmovingavg_3_readvariableop_resource*
_output_shapes
:@*
dtype02"
 AssignMovingAvg_3/ReadVariableOp
AssignMovingAvg_3/subSub(AssignMovingAvg_3/ReadVariableOp:value:0
Sqrt_2:y:0*
T0*
_output_shapes
:@2
AssignMovingAvg_3/sub
AssignMovingAvg_3/mulMulAssignMovingAvg_3/sub:z:0 AssignMovingAvg_3/decay:output:0*
T0*
_output_shapes
:@2
AssignMovingAvg_3/mulΙ
AssignMovingAvg_3AssignSubVariableOp)assignmovingavg_3_readvariableop_resourceAssignMovingAvg_3/mul:z:0!^AssignMovingAvg_3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_3
ReadVariableOpReadVariableOp)assignmovingavg_3_readvariableop_resource^AssignMovingAvg_3*
_output_shapes
:@*
dtype02
ReadVariableOp¦
mul_2/ReadVariableOpReadVariableOp)assignmovingavg_3_readvariableop_resource^AssignMovingAvg_3*
_output_shapes
:@*
dtype02
mul_2/ReadVariableOpp
mul_2MulReadVariableOp:value:0mul_2/ReadVariableOp:value:0*
T0*
_output_shapes
:@2
mul_2W
sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2	
sub_1/yW
sub_1Sub	mul_2:z:0sub_1/y:output:0*
T0*
_output_shapes
:@2
sub_1D
ReluRelu	sub_1:z:0*
T0*
_output_shapes
:@2
Relu
AssignNewValueAssignVariableOpassignnewvalue_resourceRelu:activations:0*
_output_shapes
 *
dtype02
AssignNewValueg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batchnorm/add/y
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:@2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:@2
batchnorm/Rsqrth
batchnorm/mulMulbatchnorm/Rsqrt:y:0mul:z:0*
T0*
_output_shapes
:@2
batchnorm/mulv
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:?????????@2
batchnorm/mul_1{
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:@2
batchnorm/mul_2j
batchnorm/subSub	add_1:z:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:@2
batchnorm/sub
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:?????????@2
batchnorm/add_1r

Identity_6Identitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:?????????@2

Identity_6Π
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^AssignMovingAvg_2!^AssignMovingAvg_2/ReadVariableOp^AssignMovingAvg_3!^AssignMovingAvg_3/ReadVariableOp^AssignNewValue^Maximum/ReadVariableOp^ReadVariableOp^add_1/ReadVariableOp^mul/ReadVariableOp^mul_1/ReadVariableOp^mul_2/ReadVariableOp^sub/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"!

identity_6Identity_6:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????@: : : : : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp2&
AssignMovingAvg_2AssignMovingAvg_22D
 AssignMovingAvg_2/ReadVariableOp AssignMovingAvg_2/ReadVariableOp2&
AssignMovingAvg_3AssignMovingAvg_32D
 AssignMovingAvg_3/ReadVariableOp AssignMovingAvg_3/ReadVariableOp2 
AssignNewValueAssignNewValue20
Maximum/ReadVariableOpMaximum/ReadVariableOp2 
ReadVariableOpReadVariableOp2,
add_1/ReadVariableOpadd_1/ReadVariableOp2(
mul/ReadVariableOpmul/ReadVariableOp2,
mul_1/ReadVariableOpmul_1/ReadVariableOp2,
mul_2/ReadVariableOpmul_2/ReadVariableOp2(
sub/ReadVariableOpsub/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
Ο	

6__inference_batch_normalization_9_layer_call_fn_601858

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
	unknown_3:@
	unknown_4:@
	unknown_5:@
identity’StatefulPartitionedCallΒ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8 *Z
fURS
Q__inference_batch_normalization_9_layer_call_and_return_conditional_losses_5985412
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????@2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????@: : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
ά
Ρ
6__inference_batch_normalization_9_layer_call_fn_601839

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identity’StatefulPartitionedCall 
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*&
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8 *Z
fURS
Q__inference_batch_normalization_9_layer_call_and_return_conditional_losses_5984382
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????@2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
g

H__inference_sequential_8_layer_call_and_return_conditional_losses_599733
input_3*
batch_normalization_4_599637:	*
batch_normalization_4_599639:	*
batch_normalization_4_599641:	*
batch_normalization_4_599643:	"
dense_21_599646:		
dense_21_599648:	+
batch_normalization_5_599652:	+
batch_normalization_5_599654:	+
batch_normalization_5_599656:	+
batch_normalization_5_599658:	#
dense_22_599661:

dense_22_599663:	+
batch_normalization_6_599667:	+
batch_normalization_6_599669:	+
batch_normalization_6_599671:	+
batch_normalization_6_599673:	#
dense_23_599676:

dense_23_599678:	+
batch_normalization_7_599682:	+
batch_normalization_7_599684:	+
batch_normalization_7_599686:	+
batch_normalization_7_599688:	#
dense_24_599691:

dense_24_599693:	+
batch_normalization_8_599697:	+
batch_normalization_8_599699:	+
batch_normalization_8_599701:	+
batch_normalization_8_599703:	"
dense_25_599706:	@
dense_25_599708:@*
batch_normalization_9_599712:@*
batch_normalization_9_599714:@*
batch_normalization_9_599716:@*
batch_normalization_9_599718:@!
dense_26_599721:@ 
dense_26_599723: !
dense_27_599727: 
dense_27_599729:
identity’-batch_normalization_4/StatefulPartitionedCall’-batch_normalization_5/StatefulPartitionedCall’-batch_normalization_6/StatefulPartitionedCall’-batch_normalization_7/StatefulPartitionedCall’-batch_normalization_8/StatefulPartitionedCall’-batch_normalization_9/StatefulPartitionedCall’ dense_21/StatefulPartitionedCall’ dense_22/StatefulPartitionedCall’ dense_23/StatefulPartitionedCall’ dense_24/StatefulPartitionedCall’ dense_25/StatefulPartitionedCall’ dense_26/StatefulPartitionedCall’ dense_27/StatefulPartitionedCall
-batch_normalization_4/StatefulPartitionedCallStatefulPartitionedCallinput_3batch_normalization_4_599637batch_normalization_4_599639batch_normalization_4_599641batch_normalization_4_599643*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????	*&
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8 *Z
fURS
Q__inference_batch_normalization_4_layer_call_and_return_conditional_losses_5971382/
-batch_normalization_4/StatefulPartitionedCallΚ
 dense_21/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_4/StatefulPartitionedCall:output:0dense_21_599646dense_21_599648*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8 *M
fHRF
D__inference_dense_21_layer_call_and_return_conditional_losses_5987012"
 dense_21/StatefulPartitionedCall
dropout_4/PartitionedCallPartitionedCall)dense_21/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8 *N
fIRG
E__inference_dropout_4_layer_call_and_return_conditional_losses_5987122
dropout_4/PartitionedCall·
-batch_normalization_5/StatefulPartitionedCallStatefulPartitionedCall"dropout_4/PartitionedCall:output:0batch_normalization_5_599652batch_normalization_5_599654batch_normalization_5_599656batch_normalization_5_599658*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????*&
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8 *Z
fURS
Q__inference_batch_normalization_5_layer_call_and_return_conditional_losses_5973982/
-batch_normalization_5/StatefulPartitionedCallΚ
 dense_22/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_5/StatefulPartitionedCall:output:0dense_22_599661dense_22_599663*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8 *M
fHRF
D__inference_dense_22_layer_call_and_return_conditional_losses_5987342"
 dense_22/StatefulPartitionedCall
dropout_5/PartitionedCallPartitionedCall)dense_22/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8 *N
fIRG
E__inference_dropout_5_layer_call_and_return_conditional_losses_5987452
dropout_5/PartitionedCall·
-batch_normalization_6/StatefulPartitionedCallStatefulPartitionedCall"dropout_5/PartitionedCall:output:0batch_normalization_6_599667batch_normalization_6_599669batch_normalization_6_599671batch_normalization_6_599673*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????*&
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8 *Z
fURS
Q__inference_batch_normalization_6_layer_call_and_return_conditional_losses_5976582/
-batch_normalization_6/StatefulPartitionedCallΚ
 dense_23/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_6/StatefulPartitionedCall:output:0dense_23_599676dense_23_599678*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8 *M
fHRF
D__inference_dense_23_layer_call_and_return_conditional_losses_5987672"
 dense_23/StatefulPartitionedCall
dropout_6/PartitionedCallPartitionedCall)dense_23/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8 *N
fIRG
E__inference_dropout_6_layer_call_and_return_conditional_losses_5987782
dropout_6/PartitionedCall·
-batch_normalization_7/StatefulPartitionedCallStatefulPartitionedCall"dropout_6/PartitionedCall:output:0batch_normalization_7_599682batch_normalization_7_599684batch_normalization_7_599686batch_normalization_7_599688*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????*&
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8 *Z
fURS
Q__inference_batch_normalization_7_layer_call_and_return_conditional_losses_5979182/
-batch_normalization_7/StatefulPartitionedCallΚ
 dense_24/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_7/StatefulPartitionedCall:output:0dense_24_599691dense_24_599693*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8 *M
fHRF
D__inference_dense_24_layer_call_and_return_conditional_losses_5988002"
 dense_24/StatefulPartitionedCall
dropout_7/PartitionedCallPartitionedCall)dense_24/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8 *N
fIRG
E__inference_dropout_7_layer_call_and_return_conditional_losses_5988112
dropout_7/PartitionedCall·
-batch_normalization_8/StatefulPartitionedCallStatefulPartitionedCall"dropout_7/PartitionedCall:output:0batch_normalization_8_599697batch_normalization_8_599699batch_normalization_8_599701batch_normalization_8_599703*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????*&
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8 *Z
fURS
Q__inference_batch_normalization_8_layer_call_and_return_conditional_losses_5981782/
-batch_normalization_8/StatefulPartitionedCallΙ
 dense_25/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_8/StatefulPartitionedCall:output:0dense_25_599706dense_25_599708*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8 *M
fHRF
D__inference_dense_25_layer_call_and_return_conditional_losses_5988332"
 dense_25/StatefulPartitionedCall?
dropout_8/PartitionedCallPartitionedCall)dense_25/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8 *N
fIRG
E__inference_dropout_8_layer_call_and_return_conditional_losses_5988442
dropout_8/PartitionedCallΆ
-batch_normalization_9/StatefulPartitionedCallStatefulPartitionedCall"dropout_8/PartitionedCall:output:0batch_normalization_9_599712batch_normalization_9_599714batch_normalization_9_599716batch_normalization_9_599718*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*&
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8 *Z
fURS
Q__inference_batch_normalization_9_layer_call_and_return_conditional_losses_5984382/
-batch_normalization_9/StatefulPartitionedCallΙ
 dense_26/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_9/StatefulPartitionedCall:output:0dense_26_599721dense_26_599723*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8 *M
fHRF
D__inference_dense_26_layer_call_and_return_conditional_losses_5988662"
 dense_26/StatefulPartitionedCall?
dropout_9/PartitionedCallPartitionedCall)dense_26/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8 *N
fIRG
E__inference_dropout_9_layer_call_and_return_conditional_losses_5988772
dropout_9/PartitionedCall΅
 dense_27/StatefulPartitionedCallStatefulPartitionedCall"dropout_9/PartitionedCall:output:0dense_27_599727dense_27_599729*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8 *M
fHRF
D__inference_dense_27_layer_call_and_return_conditional_losses_5988902"
 dense_27/StatefulPartitionedCall
IdentityIdentity)dense_27/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityγ
NoOpNoOp.^batch_normalization_4/StatefulPartitionedCall.^batch_normalization_5/StatefulPartitionedCall.^batch_normalization_6/StatefulPartitionedCall.^batch_normalization_7/StatefulPartitionedCall.^batch_normalization_8/StatefulPartitionedCall.^batch_normalization_9/StatefulPartitionedCall!^dense_21/StatefulPartitionedCall!^dense_22/StatefulPartitionedCall!^dense_23/StatefulPartitionedCall!^dense_24/StatefulPartitionedCall!^dense_25/StatefulPartitionedCall!^dense_26/StatefulPartitionedCall!^dense_27/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*r
_input_shapesa
_:?????????	: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2^
-batch_normalization_4/StatefulPartitionedCall-batch_normalization_4/StatefulPartitionedCall2^
-batch_normalization_5/StatefulPartitionedCall-batch_normalization_5/StatefulPartitionedCall2^
-batch_normalization_6/StatefulPartitionedCall-batch_normalization_6/StatefulPartitionedCall2^
-batch_normalization_7/StatefulPartitionedCall-batch_normalization_7/StatefulPartitionedCall2^
-batch_normalization_8/StatefulPartitionedCall-batch_normalization_8/StatefulPartitionedCall2^
-batch_normalization_9/StatefulPartitionedCall-batch_normalization_9/StatefulPartitionedCall2D
 dense_21/StatefulPartitionedCall dense_21/StatefulPartitionedCall2D
 dense_22/StatefulPartitionedCall dense_22/StatefulPartitionedCall2D
 dense_23/StatefulPartitionedCall dense_23/StatefulPartitionedCall2D
 dense_24/StatefulPartitionedCall dense_24/StatefulPartitionedCall2D
 dense_25/StatefulPartitionedCall dense_25/StatefulPartitionedCall2D
 dense_26/StatefulPartitionedCall dense_26/StatefulPartitionedCall2D
 dense_27/StatefulPartitionedCall dense_27/StatefulPartitionedCall:P L
'
_output_shapes
:?????????	
!
_user_specified_name	input_3
φ
c
E__inference_dropout_6_layer_call_and_return_conditional_losses_601355

inputs

identity_1[
IdentityIdentityinputs*
T0*(
_output_shapes
:?????????2

Identityj

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:?????????2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:?????????:P L
(
_output_shapes
:?????????
 
_user_specified_nameinputs

χ
D__inference_dense_21_layer_call_and_return_conditional_losses_598701

inputs1
matmul_readvariableop_resource:		.
biasadd_readvariableop_resource:	
identity’BiasAdd/ReadVariableOp’MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:		*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:?????????2
Relun
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:?????????2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????	: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????	
 
_user_specified_nameinputs
₯
c
*__inference_dropout_9_layer_call_fn_601905

inputs
identity’StatefulPartitionedCallΰ
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8 *N
fIRG
E__inference_dropout_9_layer_call_and_return_conditional_losses_5990062
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:????????? 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs

ψ
D__inference_dense_23_layer_call_and_return_conditional_losses_598767

inputs2
matmul_readvariableop_resource:
.
biasadd_readvariableop_resource:	
identity’BiasAdd/ReadVariableOp’MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:?????????2
Relun
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:?????????2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:?????????
 
_user_specified_nameinputs
ς
c
E__inference_dropout_8_layer_call_and_return_conditional_losses_598844

inputs

identity_1Z
IdentityIdentityinputs*
T0*'
_output_shapes
:?????????@2

Identityi

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:?????????@2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????@:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
g

H__inference_sequential_8_layer_call_and_return_conditional_losses_598897

inputs*
batch_normalization_4_598681:	*
batch_normalization_4_598683:	*
batch_normalization_4_598685:	*
batch_normalization_4_598687:	"
dense_21_598702:		
dense_21_598704:	+
batch_normalization_5_598714:	+
batch_normalization_5_598716:	+
batch_normalization_5_598718:	+
batch_normalization_5_598720:	#
dense_22_598735:

dense_22_598737:	+
batch_normalization_6_598747:	+
batch_normalization_6_598749:	+
batch_normalization_6_598751:	+
batch_normalization_6_598753:	#
dense_23_598768:

dense_23_598770:	+
batch_normalization_7_598780:	+
batch_normalization_7_598782:	+
batch_normalization_7_598784:	+
batch_normalization_7_598786:	#
dense_24_598801:

dense_24_598803:	+
batch_normalization_8_598813:	+
batch_normalization_8_598815:	+
batch_normalization_8_598817:	+
batch_normalization_8_598819:	"
dense_25_598834:	@
dense_25_598836:@*
batch_normalization_9_598846:@*
batch_normalization_9_598848:@*
batch_normalization_9_598850:@*
batch_normalization_9_598852:@!
dense_26_598867:@ 
dense_26_598869: !
dense_27_598891: 
dense_27_598893:
identity’-batch_normalization_4/StatefulPartitionedCall’-batch_normalization_5/StatefulPartitionedCall’-batch_normalization_6/StatefulPartitionedCall’-batch_normalization_7/StatefulPartitionedCall’-batch_normalization_8/StatefulPartitionedCall’-batch_normalization_9/StatefulPartitionedCall’ dense_21/StatefulPartitionedCall’ dense_22/StatefulPartitionedCall’ dense_23/StatefulPartitionedCall’ dense_24/StatefulPartitionedCall’ dense_25/StatefulPartitionedCall’ dense_26/StatefulPartitionedCall’ dense_27/StatefulPartitionedCall
-batch_normalization_4/StatefulPartitionedCallStatefulPartitionedCallinputsbatch_normalization_4_598681batch_normalization_4_598683batch_normalization_4_598685batch_normalization_4_598687*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????	*&
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8 *Z
fURS
Q__inference_batch_normalization_4_layer_call_and_return_conditional_losses_5971382/
-batch_normalization_4/StatefulPartitionedCallΚ
 dense_21/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_4/StatefulPartitionedCall:output:0dense_21_598702dense_21_598704*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8 *M
fHRF
D__inference_dense_21_layer_call_and_return_conditional_losses_5987012"
 dense_21/StatefulPartitionedCall
dropout_4/PartitionedCallPartitionedCall)dense_21/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8 *N
fIRG
E__inference_dropout_4_layer_call_and_return_conditional_losses_5987122
dropout_4/PartitionedCall·
-batch_normalization_5/StatefulPartitionedCallStatefulPartitionedCall"dropout_4/PartitionedCall:output:0batch_normalization_5_598714batch_normalization_5_598716batch_normalization_5_598718batch_normalization_5_598720*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????*&
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8 *Z
fURS
Q__inference_batch_normalization_5_layer_call_and_return_conditional_losses_5973982/
-batch_normalization_5/StatefulPartitionedCallΚ
 dense_22/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_5/StatefulPartitionedCall:output:0dense_22_598735dense_22_598737*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8 *M
fHRF
D__inference_dense_22_layer_call_and_return_conditional_losses_5987342"
 dense_22/StatefulPartitionedCall
dropout_5/PartitionedCallPartitionedCall)dense_22/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8 *N
fIRG
E__inference_dropout_5_layer_call_and_return_conditional_losses_5987452
dropout_5/PartitionedCall·
-batch_normalization_6/StatefulPartitionedCallStatefulPartitionedCall"dropout_5/PartitionedCall:output:0batch_normalization_6_598747batch_normalization_6_598749batch_normalization_6_598751batch_normalization_6_598753*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????*&
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8 *Z
fURS
Q__inference_batch_normalization_6_layer_call_and_return_conditional_losses_5976582/
-batch_normalization_6/StatefulPartitionedCallΚ
 dense_23/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_6/StatefulPartitionedCall:output:0dense_23_598768dense_23_598770*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8 *M
fHRF
D__inference_dense_23_layer_call_and_return_conditional_losses_5987672"
 dense_23/StatefulPartitionedCall
dropout_6/PartitionedCallPartitionedCall)dense_23/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8 *N
fIRG
E__inference_dropout_6_layer_call_and_return_conditional_losses_5987782
dropout_6/PartitionedCall·
-batch_normalization_7/StatefulPartitionedCallStatefulPartitionedCall"dropout_6/PartitionedCall:output:0batch_normalization_7_598780batch_normalization_7_598782batch_normalization_7_598784batch_normalization_7_598786*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????*&
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8 *Z
fURS
Q__inference_batch_normalization_7_layer_call_and_return_conditional_losses_5979182/
-batch_normalization_7/StatefulPartitionedCallΚ
 dense_24/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_7/StatefulPartitionedCall:output:0dense_24_598801dense_24_598803*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8 *M
fHRF
D__inference_dense_24_layer_call_and_return_conditional_losses_5988002"
 dense_24/StatefulPartitionedCall
dropout_7/PartitionedCallPartitionedCall)dense_24/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8 *N
fIRG
E__inference_dropout_7_layer_call_and_return_conditional_losses_5988112
dropout_7/PartitionedCall·
-batch_normalization_8/StatefulPartitionedCallStatefulPartitionedCall"dropout_7/PartitionedCall:output:0batch_normalization_8_598813batch_normalization_8_598815batch_normalization_8_598817batch_normalization_8_598819*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????*&
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8 *Z
fURS
Q__inference_batch_normalization_8_layer_call_and_return_conditional_losses_5981782/
-batch_normalization_8/StatefulPartitionedCallΙ
 dense_25/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_8/StatefulPartitionedCall:output:0dense_25_598834dense_25_598836*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8 *M
fHRF
D__inference_dense_25_layer_call_and_return_conditional_losses_5988332"
 dense_25/StatefulPartitionedCall?
dropout_8/PartitionedCallPartitionedCall)dense_25/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8 *N
fIRG
E__inference_dropout_8_layer_call_and_return_conditional_losses_5988442
dropout_8/PartitionedCallΆ
-batch_normalization_9/StatefulPartitionedCallStatefulPartitionedCall"dropout_8/PartitionedCall:output:0batch_normalization_9_598846batch_normalization_9_598848batch_normalization_9_598850batch_normalization_9_598852*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*&
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8 *Z
fURS
Q__inference_batch_normalization_9_layer_call_and_return_conditional_losses_5984382/
-batch_normalization_9/StatefulPartitionedCallΙ
 dense_26/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_9/StatefulPartitionedCall:output:0dense_26_598867dense_26_598869*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8 *M
fHRF
D__inference_dense_26_layer_call_and_return_conditional_losses_5988662"
 dense_26/StatefulPartitionedCall?
dropout_9/PartitionedCallPartitionedCall)dense_26/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8 *N
fIRG
E__inference_dropout_9_layer_call_and_return_conditional_losses_5988772
dropout_9/PartitionedCall΅
 dense_27/StatefulPartitionedCallStatefulPartitionedCall"dropout_9/PartitionedCall:output:0dense_27_598891dense_27_598893*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8 *M
fHRF
D__inference_dense_27_layer_call_and_return_conditional_losses_5988902"
 dense_27/StatefulPartitionedCall
IdentityIdentity)dense_27/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityγ
NoOpNoOp.^batch_normalization_4/StatefulPartitionedCall.^batch_normalization_5/StatefulPartitionedCall.^batch_normalization_6/StatefulPartitionedCall.^batch_normalization_7/StatefulPartitionedCall.^batch_normalization_8/StatefulPartitionedCall.^batch_normalization_9/StatefulPartitionedCall!^dense_21/StatefulPartitionedCall!^dense_22/StatefulPartitionedCall!^dense_23/StatefulPartitionedCall!^dense_24/StatefulPartitionedCall!^dense_25/StatefulPartitionedCall!^dense_26/StatefulPartitionedCall!^dense_27/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*r
_input_shapesa
_:?????????	: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2^
-batch_normalization_4/StatefulPartitionedCall-batch_normalization_4/StatefulPartitionedCall2^
-batch_normalization_5/StatefulPartitionedCall-batch_normalization_5/StatefulPartitionedCall2^
-batch_normalization_6/StatefulPartitionedCall-batch_normalization_6/StatefulPartitionedCall2^
-batch_normalization_7/StatefulPartitionedCall-batch_normalization_7/StatefulPartitionedCall2^
-batch_normalization_8/StatefulPartitionedCall-batch_normalization_8/StatefulPartitionedCall2^
-batch_normalization_9/StatefulPartitionedCall-batch_normalization_9/StatefulPartitionedCall2D
 dense_21/StatefulPartitionedCall dense_21/StatefulPartitionedCall2D
 dense_22/StatefulPartitionedCall dense_22/StatefulPartitionedCall2D
 dense_23/StatefulPartitionedCall dense_23/StatefulPartitionedCall2D
 dense_24/StatefulPartitionedCall dense_24/StatefulPartitionedCall2D
 dense_25/StatefulPartitionedCall dense_25/StatefulPartitionedCall2D
 dense_26/StatefulPartitionedCall dense_26/StatefulPartitionedCall2D
 dense_27/StatefulPartitionedCall dense_27/StatefulPartitionedCall:O K
'
_output_shapes
:?????????	
 
_user_specified_nameinputs
΄
d
E__inference_dropout_5_layer_call_and_return_conditional_losses_599138

inputs
identityc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nΫΆ?2
dropout/Constt
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:?????????2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape΅
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:?????????*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2
dropout/GreaterEqual/yΏ
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:?????????2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:?????????2
dropout/Cast{
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:?????????2
dropout/Mul_1f
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:?????????:P L
(
_output_shapes
:?????????
 
_user_specified_nameinputs
Γ
F
*__inference_dropout_9_layer_call_fn_601900

inputs
identityΘ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8 *N
fIRG
E__inference_dropout_9_layer_call_and_return_conditional_losses_5988772
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:????????? :O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs

ψ
D__inference_dense_22_layer_call_and_return_conditional_losses_601165

inputs2
matmul_readvariableop_resource:
.
biasadd_readvariableop_resource:	
identity’BiasAdd/ReadVariableOp’MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:?????????2
Relun
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:?????????2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:?????????
 
_user_specified_nameinputs
υ
°
Q__inference_batch_normalization_4_layer_call_and_return_conditional_losses_600869

inputs/
!batchnorm_readvariableop_resource:	3
%batchnorm_mul_readvariableop_resource:	1
#batchnorm_readvariableop_1_resource:	1
#batchnorm_readvariableop_2_resource:	
identity’batchnorm/ReadVariableOp’batchnorm/ReadVariableOp_1’batchnorm/ReadVariableOp_2’batchnorm/mul/ReadVariableOp
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:	*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batchnorm/add/y
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:	2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:	2
batchnorm/Rsqrt
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:	*
dtype02
batchnorm/mul/ReadVariableOp
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:	2
batchnorm/mulv
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:?????????	2
batchnorm/mul_1
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:	*
dtype02
batchnorm/ReadVariableOp_1
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:	2
batchnorm/mul_2
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:	*
dtype02
batchnorm/ReadVariableOp_2
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:	2
batchnorm/sub
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:?????????	2
batchnorm/add_1n
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:?????????	2

IdentityΒ
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????	: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:?????????	
 
_user_specified_nameinputs
δ
Υ
6__inference_batch_normalization_8_layer_call_fn_601663

inputs
unknown:	
	unknown_0:	
	unknown_1:	
	unknown_2:	
identity’StatefulPartitionedCall‘
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????*&
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8 *Z
fURS
Q__inference_batch_normalization_8_layer_call_and_return_conditional_losses_5981782
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:?????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:?????????
 
_user_specified_nameinputs
φ
c
E__inference_dropout_7_layer_call_and_return_conditional_losses_601531

inputs

identity_1[
IdentityIdentityinputs*
T0*(
_output_shapes
:?????????2

Identityj

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:?????????2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:?????????:P L
(
_output_shapes
:?????????
 
_user_specified_nameinputs
υ
°
Q__inference_batch_normalization_4_layer_call_and_return_conditional_losses_597138

inputs/
!batchnorm_readvariableop_resource:	3
%batchnorm_mul_readvariableop_resource:	1
#batchnorm_readvariableop_1_resource:	1
#batchnorm_readvariableop_2_resource:	
identity’batchnorm/ReadVariableOp’batchnorm/ReadVariableOp_1’batchnorm/ReadVariableOp_2’batchnorm/mul/ReadVariableOp
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:	*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batchnorm/add/y
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:	2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:	2
batchnorm/Rsqrt
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:	*
dtype02
batchnorm/mul/ReadVariableOp
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:	2
batchnorm/mulv
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:?????????	2
batchnorm/mul_1
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:	*
dtype02
batchnorm/ReadVariableOp_1
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:	2
batchnorm/mul_2
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:	*
dtype02
batchnorm/ReadVariableOp_2
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:	2
batchnorm/sub
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:?????????	2
batchnorm/add_1n
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:?????????	2

IdentityΒ
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????	: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:?????????	
 
_user_specified_nameinputs
Ϊ	
£
6__inference_batch_normalization_8_layer_call_fn_601682

inputs
unknown:	
	unknown_0:	
	unknown_1:	
	unknown_2:	
	unknown_3:	
	unknown_4:	
	unknown_5:	
identity’StatefulPartitionedCallΓ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
Tin

2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8 *Z
fURS
Q__inference_batch_normalization_8_layer_call_and_return_conditional_losses_5982812
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*5
_input_shapes$
":?????????: : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:?????????
 
_user_specified_nameinputs
Η
F
*__inference_dropout_5_layer_call_fn_601196

inputs
identityΙ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8 *N
fIRG
E__inference_dropout_5_layer_call_and_return_conditional_losses_5987452
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:?????????:P L
(
_output_shapes
:?????????
 
_user_specified_nameinputs
Z
Ζ
Q__inference_batch_normalization_6_layer_call_and_return_conditional_losses_597761

inputs.
maximum_readvariableop_resource:	*
sub_readvariableop_resource:	*
mul_readvariableop_resource:	,
add_1_readvariableop_resource:	8
)assignmovingavg_2_readvariableop_resource:	8
)assignmovingavg_3_readvariableop_resource:	&
assignnewvalue_resource:	

identity_6’AssignMovingAvg’AssignMovingAvg/ReadVariableOp’AssignMovingAvg_1’ AssignMovingAvg_1/ReadVariableOp’AssignMovingAvg_2’ AssignMovingAvg_2/ReadVariableOp’AssignMovingAvg_3’ AssignMovingAvg_3/ReadVariableOp’AssignNewValue’Maximum/ReadVariableOp’ReadVariableOp’add_1/ReadVariableOp’mul/ReadVariableOp’mul_1/ReadVariableOp’mul_2/ReadVariableOp’sub/ReadVariableOp
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2 
moments/mean/reduction_indices
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	*
	keep_dims(2
moments/mean}
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes
:	2
moments/StopGradient₯
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*(
_output_shapes
:?????????2
moments/SquaredDifference
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2$
"moments/variance/reduction_indices³
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	*
	keep_dims(2
moments/variance
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 2
moments/Squeeze
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 2
moments/Squeeze_1S
add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
add/ye
addAddV2moments/Squeeze_1:output:0add/y:output:0*
T0*
_output_shapes	
:2
addC
SqrtSqrtadd:z:0*
T0*
_output_shapes	
:2
SqrtY
Sqrt_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *o:2

Sqrt_1/xL
Sqrt_1SqrtSqrt_1/x:output:0*
T0*
_output_shapes
: 2
Sqrt_1
Maximum/ReadVariableOpReadVariableOpmaximum_readvariableop_resource*
_output_shapes	
:*
dtype02
Maximum/ReadVariableOpo
MaximumMaximumMaximum/ReadVariableOp:value:0
Sqrt_1:y:0*
T0*
_output_shapes	
:2	
MaximumZ
truedivRealDivSqrt:y:0Maximum:z:0*
T0*
_output_shapes	
:2	
truediv
sub/ReadVariableOpReadVariableOpsub_readvariableop_resource*
_output_shapes	
:*
dtype02
sub/ReadVariableOpm
subSubmoments/Squeeze:output:0sub/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
sub]
	truediv_1RealDivsub:z:0Maximum:z:0*
T0*
_output_shapes	
:2
	truediv_1v
IdentityIdentitymoments/Squeeze:output:0^truediv
^truediv_1*
T0*
_output_shapes	
:2

Identityj

Identity_1IdentitySqrt:y:0^truediv
^truediv_1*
T0*
_output_shapes	
:2

Identity_1]

Identity_2IdentityIdentity:output:0*
T0*
_output_shapes	
:2

Identity_2s
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
Χ#<2
AssignMovingAvg/decay
AssignMovingAvg/ReadVariableOpReadVariableOpsub_readvariableop_resource*
_output_shapes	
:*
dtype02 
AssignMovingAvg/ReadVariableOp
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0Identity_2:output:0*
T0*
_output_shapes	
:2
AssignMovingAvg/sub
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:2
AssignMovingAvg/mulΘ
AssignMovingAvgAssignSubVariableOpsub_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp^sub/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_

Identity_3IdentityIdentity_1:output:0*
T0*
_output_shapes	
:2

Identity_3w
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
Χ#<2
AssignMovingAvg_1/decay‘
 AssignMovingAvg_1/ReadVariableOpReadVariableOpmaximum_readvariableop_resource*
_output_shapes	
:*
dtype02"
 AssignMovingAvg_1/ReadVariableOp
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0Identity_3:output:0*
T0*
_output_shapes	
:2
AssignMovingAvg_1/sub
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:2
AssignMovingAvg_1/mulΨ
AssignMovingAvg_1AssignSubVariableOpmaximum_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp^Maximum/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_1

Identity_4IdentityIdentity:output:0^AssignMovingAvg^AssignMovingAvg_1*
T0*
_output_shapes	
:2

Identity_4

Identity_5Identitymoments/Squeeze_1:output:0^AssignMovingAvg^AssignMovingAvg_1*
T0*
_output_shapes	
:2

Identity_5W
renorm_rStopGradienttruediv:z:0*
T0*
_output_shapes	
:2

renorm_rY
renorm_dStopGradienttruediv_1:z:0*
T0*
_output_shapes	
:2

renorm_d
mul/ReadVariableOpReadVariableOpmul_readvariableop_resource*
_output_shapes	
:*
dtype02
mul/ReadVariableOpf
mulMulrenorm_r:output:0mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
mul
mul_1/ReadVariableOpReadVariableOpmul_readvariableop_resource*
_output_shapes	
:*
dtype02
mul_1/ReadVariableOpl
mul_1Mulrenorm_d:output:0mul_1/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
mul_1
add_1/ReadVariableOpReadVariableOpadd_1_readvariableop_resource*
_output_shapes	
:*
dtype02
add_1/ReadVariableOpf
add_1AddV2	mul_1:z:0add_1/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
add_1w
AssignMovingAvg_2/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
Χ#<2
AssignMovingAvg_2/decay«
 AssignMovingAvg_2/ReadVariableOpReadVariableOp)assignmovingavg_2_readvariableop_resource*
_output_shapes	
:*
dtype02"
 AssignMovingAvg_2/ReadVariableOp
AssignMovingAvg_2/subSub(AssignMovingAvg_2/ReadVariableOp:value:0Identity_4:output:0*
T0*
_output_shapes	
:2
AssignMovingAvg_2/sub
AssignMovingAvg_2/mulMulAssignMovingAvg_2/sub:z:0 AssignMovingAvg_2/decay:output:0*
T0*
_output_shapes	
:2
AssignMovingAvg_2/mulΙ
AssignMovingAvg_2AssignSubVariableOp)assignmovingavg_2_readvariableop_resourceAssignMovingAvg_2/mul:z:0!^AssignMovingAvg_2/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_2W
add_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2	
add_2/yd
add_2AddV2Identity_5:output:0add_2/y:output:0*
T0*
_output_shapes	
:2
add_2I
Sqrt_2Sqrt	add_2:z:0*
T0*
_output_shapes	
:2
Sqrt_2w
AssignMovingAvg_3/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
Χ#<2
AssignMovingAvg_3/decay«
 AssignMovingAvg_3/ReadVariableOpReadVariableOp)assignmovingavg_3_readvariableop_resource*
_output_shapes	
:*
dtype02"
 AssignMovingAvg_3/ReadVariableOp
AssignMovingAvg_3/subSub(AssignMovingAvg_3/ReadVariableOp:value:0
Sqrt_2:y:0*
T0*
_output_shapes	
:2
AssignMovingAvg_3/sub
AssignMovingAvg_3/mulMulAssignMovingAvg_3/sub:z:0 AssignMovingAvg_3/decay:output:0*
T0*
_output_shapes	
:2
AssignMovingAvg_3/mulΙ
AssignMovingAvg_3AssignSubVariableOp)assignmovingavg_3_readvariableop_resourceAssignMovingAvg_3/mul:z:0!^AssignMovingAvg_3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_3
ReadVariableOpReadVariableOp)assignmovingavg_3_readvariableop_resource^AssignMovingAvg_3*
_output_shapes	
:*
dtype02
ReadVariableOp§
mul_2/ReadVariableOpReadVariableOp)assignmovingavg_3_readvariableop_resource^AssignMovingAvg_3*
_output_shapes	
:*
dtype02
mul_2/ReadVariableOpq
mul_2MulReadVariableOp:value:0mul_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
mul_2W
sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2	
sub_1/yX
sub_1Sub	mul_2:z:0sub_1/y:output:0*
T0*
_output_shapes	
:2
sub_1E
ReluRelu	sub_1:z:0*
T0*
_output_shapes	
:2
Relu
AssignNewValueAssignVariableOpassignnewvalue_resourceRelu:activations:0*
_output_shapes
 *
dtype02
AssignNewValueg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batchnorm/add/y
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:2
batchnorm/Rsqrti
batchnorm/mulMulbatchnorm/Rsqrt:y:0mul:z:0*
T0*
_output_shapes	
:2
batchnorm/mulw
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:?????????2
batchnorm/mul_1|
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:2
batchnorm/mul_2k
batchnorm/subSub	add_1:z:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:2
batchnorm/sub
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:?????????2
batchnorm/add_1s

Identity_6Identitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:?????????2

Identity_6Π
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^AssignMovingAvg_2!^AssignMovingAvg_2/ReadVariableOp^AssignMovingAvg_3!^AssignMovingAvg_3/ReadVariableOp^AssignNewValue^Maximum/ReadVariableOp^ReadVariableOp^add_1/ReadVariableOp^mul/ReadVariableOp^mul_1/ReadVariableOp^mul_2/ReadVariableOp^sub/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"!

identity_6Identity_6:output:0*(
_construction_contextkEagerRuntime*5
_input_shapes$
":?????????: : : : : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp2&
AssignMovingAvg_2AssignMovingAvg_22D
 AssignMovingAvg_2/ReadVariableOp AssignMovingAvg_2/ReadVariableOp2&
AssignMovingAvg_3AssignMovingAvg_32D
 AssignMovingAvg_3/ReadVariableOp AssignMovingAvg_3/ReadVariableOp2 
AssignNewValueAssignNewValue20
Maximum/ReadVariableOpMaximum/ReadVariableOp2 
ReadVariableOpReadVariableOp2,
add_1/ReadVariableOpadd_1/ReadVariableOp2(
mul/ReadVariableOpmul/ReadVariableOp2,
mul_1/ReadVariableOpmul_1/ReadVariableOp2,
mul_2/ReadVariableOpmul_2/ReadVariableOp2(
sub/ReadVariableOpsub/ReadVariableOp:P L
(
_output_shapes
:?????????
 
_user_specified_nameinputs
«
d
E__inference_dropout_8_layer_call_and_return_conditional_losses_599039

inputs
identityc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nΫΆ?2
dropout/Consts
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:?????????@2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape΄
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:?????????@*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2
dropout/GreaterEqual/yΎ
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????@2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????@2
dropout/Castz
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:?????????@2
dropout/Mul_1e
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????@:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
΄
d
E__inference_dropout_4_layer_call_and_return_conditional_losses_601015

inputs
identityc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nΫΆ?2
dropout/Constt
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:?????????2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape΅
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:?????????*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2
dropout/GreaterEqual/yΏ
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:?????????2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:?????????2
dropout/Cast{
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:?????????2
dropout/Mul_1f
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:?????????:P L
(
_output_shapes
:?????????
 
_user_specified_nameinputs
Ϋ
ε
$__inference_signature_wrapper_599957
input_3
unknown:	
	unknown_0:	
	unknown_1:	
	unknown_2:	
	unknown_3:		
	unknown_4:	
	unknown_5:	
	unknown_6:	
	unknown_7:	
	unknown_8:	
	unknown_9:


unknown_10:	

unknown_11:	

unknown_12:	

unknown_13:	

unknown_14:	

unknown_15:


unknown_16:	

unknown_17:	

unknown_18:	

unknown_19:	

unknown_20:	

unknown_21:


unknown_22:	

unknown_23:	

unknown_24:	

unknown_25:	

unknown_26:	

unknown_27:	@

unknown_28:@

unknown_29:@

unknown_30:@

unknown_31:@

unknown_32:@

unknown_33:@ 

unknown_34: 

unknown_35: 

unknown_36:
identity’StatefulPartitionedCallΖ
StatefulPartitionedCallStatefulPartitionedCallinput_3unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36*2
Tin+
)2'*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*H
_read_only_resource_inputs*
(&	
 !"#$%&*2
config_proto" 

CPU

GPU2*0,1J 8 **
f%R#
!__inference__wrapped_model_5971142
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*r
_input_shapesa
_:?????????	: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:?????????	
!
_user_specified_name	input_3
΄
d
E__inference_dropout_5_layer_call_and_return_conditional_losses_601191

inputs
identityc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nΫΆ?2
dropout/Constt
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:?????????2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape΅
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:?????????*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2
dropout/GreaterEqual/yΏ
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:?????????2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:?????????2
dropout/Cast{
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:?????????2
dropout/Mul_1f
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:?????????:P L
(
_output_shapes
:?????????
 
_user_specified_nameinputs
Ϊ	
£
6__inference_batch_normalization_5_layer_call_fn_601154

inputs
unknown:	
	unknown_0:	
	unknown_1:	
	unknown_2:	
	unknown_3:	
	unknown_4:	
	unknown_5:	
identity’StatefulPartitionedCallΓ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
Tin

2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8 *Z
fURS
Q__inference_batch_normalization_5_layer_call_and_return_conditional_losses_5975012
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*5
_input_shapes$
":?????????: : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:?????????
 
_user_specified_nameinputs
ς
c
E__inference_dropout_8_layer_call_and_return_conditional_losses_601707

inputs

identity_1Z
IdentityIdentityinputs*
T0*'
_output_shapes
:?????????@2

Identityi

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:?????????@2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????@:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
΄
d
E__inference_dropout_7_layer_call_and_return_conditional_losses_601543

inputs
identityc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nΫΆ?2
dropout/Constt
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:?????????2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape΅
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:?????????*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2
dropout/GreaterEqual/yΏ
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:?????????2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:?????????2
dropout/Cast{
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:?????????2
dropout/Mul_1f
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:?????????:P L
(
_output_shapes
:?????????
 
_user_specified_nameinputs
φ
c
E__inference_dropout_5_layer_call_and_return_conditional_losses_601179

inputs

identity_1[
IdentityIdentityinputs*
T0*(
_output_shapes
:?????????2

Identityj

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:?????????2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:?????????:P L
(
_output_shapes
:?????????
 
_user_specified_nameinputs
ύ

)__inference_dense_23_layer_call_fn_601350

inputs
unknown:

	unknown_0:	
identity’StatefulPartitionedCallϊ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8 *M
fHRF
D__inference_dense_23_layer_call_and_return_conditional_losses_5987672
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:?????????
 
_user_specified_nameinputs
«
d
E__inference_dropout_8_layer_call_and_return_conditional_losses_601719

inputs
identityc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nΫΆ?2
dropout/Consts
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:?????????@2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape΄
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:?????????@*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2
dropout/GreaterEqual/yΎ
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????@2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????@2
dropout/Castz
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:?????????@2
dropout/Mul_1e
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????@:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
φ
c
E__inference_dropout_4_layer_call_and_return_conditional_losses_598712

inputs

identity_1[
IdentityIdentityinputs*
T0*(
_output_shapes
:?????????2

Identityj

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:?????????2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:?????????:P L
(
_output_shapes
:?????????
 
_user_specified_nameinputs
ν
Ν
-__inference_sequential_8_layer_call_fn_600849

inputs
unknown:	
	unknown_0:	
	unknown_1:	
	unknown_2:	
	unknown_3:	
	unknown_4:	
	unknown_5:	
	unknown_6:		
	unknown_7:	
	unknown_8:	
	unknown_9:	

unknown_10:	

unknown_11:	

unknown_12:	

unknown_13:	

unknown_14:	

unknown_15:


unknown_16:	

unknown_17:	

unknown_18:	

unknown_19:	

unknown_20:	

unknown_21:	

unknown_22:	

unknown_23:	

unknown_24:


unknown_25:	

unknown_26:	

unknown_27:	

unknown_28:	

unknown_29:	

unknown_30:	

unknown_31:	

unknown_32:	

unknown_33:


unknown_34:	

unknown_35:	

unknown_36:	

unknown_37:	

unknown_38:	

unknown_39:	

unknown_40:	

unknown_41:	

unknown_42:	@

unknown_43:@

unknown_44:@

unknown_45:@

unknown_46:@

unknown_47:@

unknown_48:@

unknown_49:@

unknown_50:@

unknown_51:@ 

unknown_52: 

unknown_53: 

unknown_54:
identity’StatefulPartitionedCallΚ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42
unknown_43
unknown_44
unknown_45
unknown_46
unknown_47
unknown_48
unknown_49
unknown_50
unknown_51
unknown_52
unknown_53
unknown_54*D
Tin=
;29*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*<
_read_only_resource_inputs
	#$'(,-015678*2
config_proto" 

CPU

GPU2*0,1J 8 *Q
fLRJ
H__inference_sequential_8_layer_call_and_return_conditional_losses_5994022
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
:?????????	: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????	
 
_user_specified_nameinputs
«
d
E__inference_dropout_9_layer_call_and_return_conditional_losses_599006

inputs
identityc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nΫΆ?2
dropout/Consts
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:????????? 2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape΄
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2
dropout/GreaterEqual/yΎ
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
dropout/Castz
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:????????? 2
dropout/Mul_1e
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:????????? :O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
ς
c
E__inference_dropout_9_layer_call_and_return_conditional_losses_598877

inputs

identity_1Z
IdentityIdentityinputs*
T0*'
_output_shapes
:????????? 2

Identityi

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:????????? 2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:????????? :O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs

ψ
D__inference_dense_22_layer_call_and_return_conditional_losses_598734

inputs2
matmul_readvariableop_resource:
.
biasadd_readvariableop_resource:	
identity’BiasAdd/ReadVariableOp’MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:?????????2
Relun
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:?????????2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:?????????
 
_user_specified_nameinputs
©
c
*__inference_dropout_5_layer_call_fn_601201

inputs
identity’StatefulPartitionedCallα
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8 *N
fIRG
E__inference_dropout_5_layer_call_and_return_conditional_losses_5991382
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:?????????22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:?????????
 
_user_specified_nameinputs
Ο	

6__inference_batch_normalization_4_layer_call_fn_600978

inputs
unknown:	
	unknown_0:	
	unknown_1:	
	unknown_2:	
	unknown_3:	
	unknown_4:	
	unknown_5:	
identity’StatefulPartitionedCallΒ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????	*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8 *Z
fURS
Q__inference_batch_normalization_4_layer_call_and_return_conditional_losses_5972412
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????	2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????	: : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????	
 
_user_specified_nameinputs

ν
-__inference_sequential_8_layer_call_fn_600732

inputs
unknown:	
	unknown_0:	
	unknown_1:	
	unknown_2:	
	unknown_3:		
	unknown_4:	
	unknown_5:	
	unknown_6:	
	unknown_7:	
	unknown_8:	
	unknown_9:


unknown_10:	

unknown_11:	

unknown_12:	

unknown_13:	

unknown_14:	

unknown_15:


unknown_16:	

unknown_17:	

unknown_18:	

unknown_19:	

unknown_20:	

unknown_21:


unknown_22:	

unknown_23:	

unknown_24:	

unknown_25:	

unknown_26:	

unknown_27:	@

unknown_28:@

unknown_29:@

unknown_30:@

unknown_31:@

unknown_32:@

unknown_33:@ 

unknown_34: 

unknown_35: 

unknown_36:
identity’StatefulPartitionedCallμ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36*2
Tin+
)2'*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*H
_read_only_resource_inputs*
(&	
 !"#$%&*2
config_proto" 

CPU

GPU2*0,1J 8 *Q
fLRJ
H__inference_sequential_8_layer_call_and_return_conditional_losses_5988972
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*r
_input_shapesa
_:?????????	: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????	
 
_user_specified_nameinputs
ς
c
E__inference_dropout_9_layer_call_and_return_conditional_losses_601883

inputs

identity_1Z
IdentityIdentityinputs*
T0*'
_output_shapes
:????????? 2

Identityi

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:????????? 2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:????????? :O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
ω

)__inference_dense_25_layer_call_fn_601702

inputs
unknown:	@
	unknown_0:@
identity’StatefulPartitionedCallω
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8 *M
fHRF
D__inference_dense_25_layer_call_and_return_conditional_losses_5988332
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????@2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:?????????
 
_user_specified_nameinputs
΄
d
E__inference_dropout_7_layer_call_and_return_conditional_losses_599072

inputs
identityc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nΫΆ?2
dropout/Constt
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:?????????2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape΅
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:?????????*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2
dropout/GreaterEqual/yΏ
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:?????????2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:?????????2
dropout/Cast{
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:?????????2
dropout/Mul_1f
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:?????????:P L
(
_output_shapes
:?????????
 
_user_specified_nameinputs
υ
°
Q__inference_batch_normalization_9_layer_call_and_return_conditional_losses_598438

inputs/
!batchnorm_readvariableop_resource:@3
%batchnorm_mul_readvariableop_resource:@1
#batchnorm_readvariableop_1_resource:@1
#batchnorm_readvariableop_2_resource:@
identity’batchnorm/ReadVariableOp’batchnorm/ReadVariableOp_1’batchnorm/ReadVariableOp_2’batchnorm/mul/ReadVariableOp
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batchnorm/add/y
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:@2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:@2
batchnorm/Rsqrt
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype02
batchnorm/mul/ReadVariableOp
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:@2
batchnorm/mulv
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:?????????@2
batchnorm/mul_1
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:@*
dtype02
batchnorm/ReadVariableOp_1
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:@2
batchnorm/mul_2
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:@*
dtype02
batchnorm/ReadVariableOp_2
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:@2
batchnorm/sub
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:?????????@2
batchnorm/add_1n
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:?????????@2

IdentityΒ
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
φ

)__inference_dense_26_layer_call_fn_601878

inputs
unknown:@ 
	unknown_0: 
identity’StatefulPartitionedCallω
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8 *M
fHRF
D__inference_dense_26_layer_call_and_return_conditional_losses_5988662
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????@: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
φ
c
E__inference_dropout_5_layer_call_and_return_conditional_losses_598745

inputs

identity_1[
IdentityIdentityinputs*
T0*(
_output_shapes
:?????????2

Identityj

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:?????????2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:?????????:P L
(
_output_shapes
:?????????
 
_user_specified_nameinputs
Υ
³D
H__inference_sequential_8_layer_call_and_return_conditional_losses_600651

inputsC
5batch_normalization_4_maximum_readvariableop_resource:	?
1batch_normalization_4_sub_readvariableop_resource:	?
1batch_normalization_4_mul_readvariableop_resource:	A
3batch_normalization_4_add_1_readvariableop_resource:	M
?batch_normalization_4_assignmovingavg_2_readvariableop_resource:	M
?batch_normalization_4_assignmovingavg_3_readvariableop_resource:	;
-batch_normalization_4_assignnewvalue_resource:	:
'dense_21_matmul_readvariableop_resource:		7
(dense_21_biasadd_readvariableop_resource:	D
5batch_normalization_5_maximum_readvariableop_resource:	@
1batch_normalization_5_sub_readvariableop_resource:	@
1batch_normalization_5_mul_readvariableop_resource:	B
3batch_normalization_5_add_1_readvariableop_resource:	N
?batch_normalization_5_assignmovingavg_2_readvariableop_resource:	N
?batch_normalization_5_assignmovingavg_3_readvariableop_resource:	<
-batch_normalization_5_assignnewvalue_resource:	;
'dense_22_matmul_readvariableop_resource:
7
(dense_22_biasadd_readvariableop_resource:	D
5batch_normalization_6_maximum_readvariableop_resource:	@
1batch_normalization_6_sub_readvariableop_resource:	@
1batch_normalization_6_mul_readvariableop_resource:	B
3batch_normalization_6_add_1_readvariableop_resource:	N
?batch_normalization_6_assignmovingavg_2_readvariableop_resource:	N
?batch_normalization_6_assignmovingavg_3_readvariableop_resource:	<
-batch_normalization_6_assignnewvalue_resource:	;
'dense_23_matmul_readvariableop_resource:
7
(dense_23_biasadd_readvariableop_resource:	D
5batch_normalization_7_maximum_readvariableop_resource:	@
1batch_normalization_7_sub_readvariableop_resource:	@
1batch_normalization_7_mul_readvariableop_resource:	B
3batch_normalization_7_add_1_readvariableop_resource:	N
?batch_normalization_7_assignmovingavg_2_readvariableop_resource:	N
?batch_normalization_7_assignmovingavg_3_readvariableop_resource:	<
-batch_normalization_7_assignnewvalue_resource:	;
'dense_24_matmul_readvariableop_resource:
7
(dense_24_biasadd_readvariableop_resource:	D
5batch_normalization_8_maximum_readvariableop_resource:	@
1batch_normalization_8_sub_readvariableop_resource:	@
1batch_normalization_8_mul_readvariableop_resource:	B
3batch_normalization_8_add_1_readvariableop_resource:	N
?batch_normalization_8_assignmovingavg_2_readvariableop_resource:	N
?batch_normalization_8_assignmovingavg_3_readvariableop_resource:	<
-batch_normalization_8_assignnewvalue_resource:	:
'dense_25_matmul_readvariableop_resource:	@6
(dense_25_biasadd_readvariableop_resource:@C
5batch_normalization_9_maximum_readvariableop_resource:@?
1batch_normalization_9_sub_readvariableop_resource:@?
1batch_normalization_9_mul_readvariableop_resource:@A
3batch_normalization_9_add_1_readvariableop_resource:@M
?batch_normalization_9_assignmovingavg_2_readvariableop_resource:@M
?batch_normalization_9_assignmovingavg_3_readvariableop_resource:@;
-batch_normalization_9_assignnewvalue_resource:@9
'dense_26_matmul_readvariableop_resource:@ 6
(dense_26_biasadd_readvariableop_resource: 9
'dense_27_matmul_readvariableop_resource: 6
(dense_27_biasadd_readvariableop_resource:
identity’%batch_normalization_4/AssignMovingAvg’4batch_normalization_4/AssignMovingAvg/ReadVariableOp’'batch_normalization_4/AssignMovingAvg_1’6batch_normalization_4/AssignMovingAvg_1/ReadVariableOp’'batch_normalization_4/AssignMovingAvg_2’6batch_normalization_4/AssignMovingAvg_2/ReadVariableOp’'batch_normalization_4/AssignMovingAvg_3’6batch_normalization_4/AssignMovingAvg_3/ReadVariableOp’$batch_normalization_4/AssignNewValue’,batch_normalization_4/Maximum/ReadVariableOp’$batch_normalization_4/ReadVariableOp’*batch_normalization_4/add_1/ReadVariableOp’(batch_normalization_4/mul/ReadVariableOp’*batch_normalization_4/mul_1/ReadVariableOp’*batch_normalization_4/mul_2/ReadVariableOp’(batch_normalization_4/sub/ReadVariableOp’%batch_normalization_5/AssignMovingAvg’4batch_normalization_5/AssignMovingAvg/ReadVariableOp’'batch_normalization_5/AssignMovingAvg_1’6batch_normalization_5/AssignMovingAvg_1/ReadVariableOp’'batch_normalization_5/AssignMovingAvg_2’6batch_normalization_5/AssignMovingAvg_2/ReadVariableOp’'batch_normalization_5/AssignMovingAvg_3’6batch_normalization_5/AssignMovingAvg_3/ReadVariableOp’$batch_normalization_5/AssignNewValue’,batch_normalization_5/Maximum/ReadVariableOp’$batch_normalization_5/ReadVariableOp’*batch_normalization_5/add_1/ReadVariableOp’(batch_normalization_5/mul/ReadVariableOp’*batch_normalization_5/mul_1/ReadVariableOp’*batch_normalization_5/mul_2/ReadVariableOp’(batch_normalization_5/sub/ReadVariableOp’%batch_normalization_6/AssignMovingAvg’4batch_normalization_6/AssignMovingAvg/ReadVariableOp’'batch_normalization_6/AssignMovingAvg_1’6batch_normalization_6/AssignMovingAvg_1/ReadVariableOp’'batch_normalization_6/AssignMovingAvg_2’6batch_normalization_6/AssignMovingAvg_2/ReadVariableOp’'batch_normalization_6/AssignMovingAvg_3’6batch_normalization_6/AssignMovingAvg_3/ReadVariableOp’$batch_normalization_6/AssignNewValue’,batch_normalization_6/Maximum/ReadVariableOp’$batch_normalization_6/ReadVariableOp’*batch_normalization_6/add_1/ReadVariableOp’(batch_normalization_6/mul/ReadVariableOp’*batch_normalization_6/mul_1/ReadVariableOp’*batch_normalization_6/mul_2/ReadVariableOp’(batch_normalization_6/sub/ReadVariableOp’%batch_normalization_7/AssignMovingAvg’4batch_normalization_7/AssignMovingAvg/ReadVariableOp’'batch_normalization_7/AssignMovingAvg_1’6batch_normalization_7/AssignMovingAvg_1/ReadVariableOp’'batch_normalization_7/AssignMovingAvg_2’6batch_normalization_7/AssignMovingAvg_2/ReadVariableOp’'batch_normalization_7/AssignMovingAvg_3’6batch_normalization_7/AssignMovingAvg_3/ReadVariableOp’$batch_normalization_7/AssignNewValue’,batch_normalization_7/Maximum/ReadVariableOp’$batch_normalization_7/ReadVariableOp’*batch_normalization_7/add_1/ReadVariableOp’(batch_normalization_7/mul/ReadVariableOp’*batch_normalization_7/mul_1/ReadVariableOp’*batch_normalization_7/mul_2/ReadVariableOp’(batch_normalization_7/sub/ReadVariableOp’%batch_normalization_8/AssignMovingAvg’4batch_normalization_8/AssignMovingAvg/ReadVariableOp’'batch_normalization_8/AssignMovingAvg_1’6batch_normalization_8/AssignMovingAvg_1/ReadVariableOp’'batch_normalization_8/AssignMovingAvg_2’6batch_normalization_8/AssignMovingAvg_2/ReadVariableOp’'batch_normalization_8/AssignMovingAvg_3’6batch_normalization_8/AssignMovingAvg_3/ReadVariableOp’$batch_normalization_8/AssignNewValue’,batch_normalization_8/Maximum/ReadVariableOp’$batch_normalization_8/ReadVariableOp’*batch_normalization_8/add_1/ReadVariableOp’(batch_normalization_8/mul/ReadVariableOp’*batch_normalization_8/mul_1/ReadVariableOp’*batch_normalization_8/mul_2/ReadVariableOp’(batch_normalization_8/sub/ReadVariableOp’%batch_normalization_9/AssignMovingAvg’4batch_normalization_9/AssignMovingAvg/ReadVariableOp’'batch_normalization_9/AssignMovingAvg_1’6batch_normalization_9/AssignMovingAvg_1/ReadVariableOp’'batch_normalization_9/AssignMovingAvg_2’6batch_normalization_9/AssignMovingAvg_2/ReadVariableOp’'batch_normalization_9/AssignMovingAvg_3’6batch_normalization_9/AssignMovingAvg_3/ReadVariableOp’$batch_normalization_9/AssignNewValue’,batch_normalization_9/Maximum/ReadVariableOp’$batch_normalization_9/ReadVariableOp’*batch_normalization_9/add_1/ReadVariableOp’(batch_normalization_9/mul/ReadVariableOp’*batch_normalization_9/mul_1/ReadVariableOp’*batch_normalization_9/mul_2/ReadVariableOp’(batch_normalization_9/sub/ReadVariableOp’dense_21/BiasAdd/ReadVariableOp’dense_21/MatMul/ReadVariableOp’dense_22/BiasAdd/ReadVariableOp’dense_22/MatMul/ReadVariableOp’dense_23/BiasAdd/ReadVariableOp’dense_23/MatMul/ReadVariableOp’dense_24/BiasAdd/ReadVariableOp’dense_24/MatMul/ReadVariableOp’dense_25/BiasAdd/ReadVariableOp’dense_25/MatMul/ReadVariableOp’dense_26/BiasAdd/ReadVariableOp’dense_26/MatMul/ReadVariableOp’dense_27/BiasAdd/ReadVariableOp’dense_27/MatMul/ReadVariableOpΆ
4batch_normalization_4/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 26
4batch_normalization_4/moments/mean/reduction_indicesΡ
"batch_normalization_4/moments/meanMeaninputs=batch_normalization_4/moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:	*
	keep_dims(2$
"batch_normalization_4/moments/meanΎ
*batch_normalization_4/moments/StopGradientStopGradient+batch_normalization_4/moments/mean:output:0*
T0*
_output_shapes

:	2,
*batch_normalization_4/moments/StopGradientζ
/batch_normalization_4/moments/SquaredDifferenceSquaredDifferenceinputs3batch_normalization_4/moments/StopGradient:output:0*
T0*'
_output_shapes
:?????????	21
/batch_normalization_4/moments/SquaredDifferenceΎ
8batch_normalization_4/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2:
8batch_normalization_4/moments/variance/reduction_indices
&batch_normalization_4/moments/varianceMean3batch_normalization_4/moments/SquaredDifference:z:0Abatch_normalization_4/moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:	*
	keep_dims(2(
&batch_normalization_4/moments/varianceΒ
%batch_normalization_4/moments/SqueezeSqueeze+batch_normalization_4/moments/mean:output:0*
T0*
_output_shapes
:	*
squeeze_dims
 2'
%batch_normalization_4/moments/SqueezeΚ
'batch_normalization_4/moments/Squeeze_1Squeeze/batch_normalization_4/moments/variance:output:0*
T0*
_output_shapes
:	*
squeeze_dims
 2)
'batch_normalization_4/moments/Squeeze_1
batch_normalization_4/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batch_normalization_4/add/yΌ
batch_normalization_4/addAddV20batch_normalization_4/moments/Squeeze_1:output:0$batch_normalization_4/add/y:output:0*
T0*
_output_shapes
:	2
batch_normalization_4/add
batch_normalization_4/SqrtSqrtbatch_normalization_4/add:z:0*
T0*
_output_shapes
:	2
batch_normalization_4/Sqrt
batch_normalization_4/Sqrt_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *o:2 
batch_normalization_4/Sqrt_1/x
batch_normalization_4/Sqrt_1Sqrt'batch_normalization_4/Sqrt_1/x:output:0*
T0*
_output_shapes
: 2
batch_normalization_4/Sqrt_1Ξ
,batch_normalization_4/Maximum/ReadVariableOpReadVariableOp5batch_normalization_4_maximum_readvariableop_resource*
_output_shapes
:	*
dtype02.
,batch_normalization_4/Maximum/ReadVariableOpΖ
batch_normalization_4/MaximumMaximum4batch_normalization_4/Maximum/ReadVariableOp:value:0 batch_normalization_4/Sqrt_1:y:0*
T0*
_output_shapes
:	2
batch_normalization_4/Maximum±
batch_normalization_4/truedivRealDivbatch_normalization_4/Sqrt:y:0!batch_normalization_4/Maximum:z:0*
T0*
_output_shapes
:	2
batch_normalization_4/truedivΒ
(batch_normalization_4/sub/ReadVariableOpReadVariableOp1batch_normalization_4_sub_readvariableop_resource*
_output_shapes
:	*
dtype02*
(batch_normalization_4/sub/ReadVariableOpΔ
batch_normalization_4/subSub.batch_normalization_4/moments/Squeeze:output:00batch_normalization_4/sub/ReadVariableOp:value:0*
T0*
_output_shapes
:	2
batch_normalization_4/sub΄
batch_normalization_4/truediv_1RealDivbatch_normalization_4/sub:z:0!batch_normalization_4/Maximum:z:0*
T0*
_output_shapes
:	2!
batch_normalization_4/truediv_1γ
batch_normalization_4/IdentityIdentity.batch_normalization_4/moments/Squeeze:output:0^batch_normalization_4/truediv ^batch_normalization_4/truediv_1*
T0*
_output_shapes
:	2 
batch_normalization_4/IdentityΧ
 batch_normalization_4/Identity_1Identitybatch_normalization_4/Sqrt:y:0^batch_normalization_4/truediv ^batch_normalization_4/truediv_1*
T0*
_output_shapes
:	2"
 batch_normalization_4/Identity_1
 batch_normalization_4/Identity_2Identity'batch_normalization_4/Identity:output:0*
T0*
_output_shapes
:	2"
 batch_normalization_4/Identity_2
+batch_normalization_4/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
Χ#<2-
+batch_normalization_4/AssignMovingAvg/decayΪ
4batch_normalization_4/AssignMovingAvg/ReadVariableOpReadVariableOp1batch_normalization_4_sub_readvariableop_resource*
_output_shapes
:	*
dtype026
4batch_normalization_4/AssignMovingAvg/ReadVariableOpλ
)batch_normalization_4/AssignMovingAvg/subSub<batch_normalization_4/AssignMovingAvg/ReadVariableOp:value:0)batch_normalization_4/Identity_2:output:0*
T0*
_output_shapes
:	2+
)batch_normalization_4/AssignMovingAvg/subη
)batch_normalization_4/AssignMovingAvg/mulMul-batch_normalization_4/AssignMovingAvg/sub:z:04batch_normalization_4/AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:	2+
)batch_normalization_4/AssignMovingAvg/mulΜ
%batch_normalization_4/AssignMovingAvgAssignSubVariableOp1batch_normalization_4_sub_readvariableop_resource-batch_normalization_4/AssignMovingAvg/mul:z:05^batch_normalization_4/AssignMovingAvg/ReadVariableOp)^batch_normalization_4/sub/ReadVariableOp*
_output_shapes
 *
dtype02'
%batch_normalization_4/AssignMovingAvg 
 batch_normalization_4/Identity_3Identity)batch_normalization_4/Identity_1:output:0*
T0*
_output_shapes
:	2"
 batch_normalization_4/Identity_3£
-batch_normalization_4/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
Χ#<2/
-batch_normalization_4/AssignMovingAvg_1/decayβ
6batch_normalization_4/AssignMovingAvg_1/ReadVariableOpReadVariableOp5batch_normalization_4_maximum_readvariableop_resource*
_output_shapes
:	*
dtype028
6batch_normalization_4/AssignMovingAvg_1/ReadVariableOpρ
+batch_normalization_4/AssignMovingAvg_1/subSub>batch_normalization_4/AssignMovingAvg_1/ReadVariableOp:value:0)batch_normalization_4/Identity_3:output:0*
T0*
_output_shapes
:	2-
+batch_normalization_4/AssignMovingAvg_1/subο
+batch_normalization_4/AssignMovingAvg_1/mulMul/batch_normalization_4/AssignMovingAvg_1/sub:z:06batch_normalization_4/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:	2-
+batch_normalization_4/AssignMovingAvg_1/mulά
'batch_normalization_4/AssignMovingAvg_1AssignSubVariableOp5batch_normalization_4_maximum_readvariableop_resource/batch_normalization_4/AssignMovingAvg_1/mul:z:07^batch_normalization_4/AssignMovingAvg_1/ReadVariableOp-^batch_normalization_4/Maximum/ReadVariableOp*
_output_shapes
 *
dtype02)
'batch_normalization_4/AssignMovingAvg_1π
 batch_normalization_4/Identity_4Identity'batch_normalization_4/Identity:output:0&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1*
T0*
_output_shapes
:	2"
 batch_normalization_4/Identity_4ω
 batch_normalization_4/Identity_5Identity0batch_normalization_4/moments/Squeeze_1:output:0&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1*
T0*
_output_shapes
:	2"
 batch_normalization_4/Identity_5
batch_normalization_4/renorm_rStopGradient!batch_normalization_4/truediv:z:0*
T0*
_output_shapes
:	2 
batch_normalization_4/renorm_r
batch_normalization_4/renorm_dStopGradient#batch_normalization_4/truediv_1:z:0*
T0*
_output_shapes
:	2 
batch_normalization_4/renorm_dΒ
(batch_normalization_4/mul/ReadVariableOpReadVariableOp1batch_normalization_4_mul_readvariableop_resource*
_output_shapes
:	*
dtype02*
(batch_normalization_4/mul/ReadVariableOp½
batch_normalization_4/mulMul'batch_normalization_4/renorm_r:output:00batch_normalization_4/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:	2
batch_normalization_4/mulΖ
*batch_normalization_4/mul_1/ReadVariableOpReadVariableOp1batch_normalization_4_mul_readvariableop_resource*
_output_shapes
:	*
dtype02,
*batch_normalization_4/mul_1/ReadVariableOpΓ
batch_normalization_4/mul_1Mul'batch_normalization_4/renorm_d:output:02batch_normalization_4/mul_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	2
batch_normalization_4/mul_1Θ
*batch_normalization_4/add_1/ReadVariableOpReadVariableOp3batch_normalization_4_add_1_readvariableop_resource*
_output_shapes
:	*
dtype02,
*batch_normalization_4/add_1/ReadVariableOp½
batch_normalization_4/add_1AddV2batch_normalization_4/mul_1:z:02batch_normalization_4/add_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	2
batch_normalization_4/add_1£
-batch_normalization_4/AssignMovingAvg_2/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
Χ#<2/
-batch_normalization_4/AssignMovingAvg_2/decayμ
6batch_normalization_4/AssignMovingAvg_2/ReadVariableOpReadVariableOp?batch_normalization_4_assignmovingavg_2_readvariableop_resource*
_output_shapes
:	*
dtype028
6batch_normalization_4/AssignMovingAvg_2/ReadVariableOpρ
+batch_normalization_4/AssignMovingAvg_2/subSub>batch_normalization_4/AssignMovingAvg_2/ReadVariableOp:value:0)batch_normalization_4/Identity_4:output:0*
T0*
_output_shapes
:	2-
+batch_normalization_4/AssignMovingAvg_2/subο
+batch_normalization_4/AssignMovingAvg_2/mulMul/batch_normalization_4/AssignMovingAvg_2/sub:z:06batch_normalization_4/AssignMovingAvg_2/decay:output:0*
T0*
_output_shapes
:	2-
+batch_normalization_4/AssignMovingAvg_2/mul·
'batch_normalization_4/AssignMovingAvg_2AssignSubVariableOp?batch_normalization_4_assignmovingavg_2_readvariableop_resource/batch_normalization_4/AssignMovingAvg_2/mul:z:07^batch_normalization_4/AssignMovingAvg_2/ReadVariableOp*
_output_shapes
 *
dtype02)
'batch_normalization_4/AssignMovingAvg_2
batch_normalization_4/add_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batch_normalization_4/add_2/y»
batch_normalization_4/add_2AddV2)batch_normalization_4/Identity_5:output:0&batch_normalization_4/add_2/y:output:0*
T0*
_output_shapes
:	2
batch_normalization_4/add_2
batch_normalization_4/Sqrt_2Sqrtbatch_normalization_4/add_2:z:0*
T0*
_output_shapes
:	2
batch_normalization_4/Sqrt_2£
-batch_normalization_4/AssignMovingAvg_3/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
Χ#<2/
-batch_normalization_4/AssignMovingAvg_3/decayμ
6batch_normalization_4/AssignMovingAvg_3/ReadVariableOpReadVariableOp?batch_normalization_4_assignmovingavg_3_readvariableop_resource*
_output_shapes
:	*
dtype028
6batch_normalization_4/AssignMovingAvg_3/ReadVariableOpθ
+batch_normalization_4/AssignMovingAvg_3/subSub>batch_normalization_4/AssignMovingAvg_3/ReadVariableOp:value:0 batch_normalization_4/Sqrt_2:y:0*
T0*
_output_shapes
:	2-
+batch_normalization_4/AssignMovingAvg_3/subο
+batch_normalization_4/AssignMovingAvg_3/mulMul/batch_normalization_4/AssignMovingAvg_3/sub:z:06batch_normalization_4/AssignMovingAvg_3/decay:output:0*
T0*
_output_shapes
:	2-
+batch_normalization_4/AssignMovingAvg_3/mul·
'batch_normalization_4/AssignMovingAvg_3AssignSubVariableOp?batch_normalization_4_assignmovingavg_3_readvariableop_resource/batch_normalization_4/AssignMovingAvg_3/mul:z:07^batch_normalization_4/AssignMovingAvg_3/ReadVariableOp*
_output_shapes
 *
dtype02)
'batch_normalization_4/AssignMovingAvg_3ς
$batch_normalization_4/ReadVariableOpReadVariableOp?batch_normalization_4_assignmovingavg_3_readvariableop_resource(^batch_normalization_4/AssignMovingAvg_3*
_output_shapes
:	*
dtype02&
$batch_normalization_4/ReadVariableOpώ
*batch_normalization_4/mul_2/ReadVariableOpReadVariableOp?batch_normalization_4_assignmovingavg_3_readvariableop_resource(^batch_normalization_4/AssignMovingAvg_3*
_output_shapes
:	*
dtype02,
*batch_normalization_4/mul_2/ReadVariableOpΘ
batch_normalization_4/mul_2Mul,batch_normalization_4/ReadVariableOp:value:02batch_normalization_4/mul_2/ReadVariableOp:value:0*
T0*
_output_shapes
:	2
batch_normalization_4/mul_2
batch_normalization_4/sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batch_normalization_4/sub_1/y―
batch_normalization_4/sub_1Subbatch_normalization_4/mul_2:z:0&batch_normalization_4/sub_1/y:output:0*
T0*
_output_shapes
:	2
batch_normalization_4/sub_1
batch_normalization_4/ReluRelubatch_normalization_4/sub_1:z:0*
T0*
_output_shapes
:	2
batch_normalization_4/Reluά
$batch_normalization_4/AssignNewValueAssignVariableOp-batch_normalization_4_assignnewvalue_resource(batch_normalization_4/Relu:activations:0*
_output_shapes
 *
dtype02&
$batch_normalization_4/AssignNewValue
%batch_normalization_4/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2'
%batch_normalization_4/batchnorm/add/yΪ
#batch_normalization_4/batchnorm/addAddV20batch_normalization_4/moments/Squeeze_1:output:0.batch_normalization_4/batchnorm/add/y:output:0*
T0*
_output_shapes
:	2%
#batch_normalization_4/batchnorm/add₯
%batch_normalization_4/batchnorm/RsqrtRsqrt'batch_normalization_4/batchnorm/add:z:0*
T0*
_output_shapes
:	2'
%batch_normalization_4/batchnorm/Rsqrtΐ
#batch_normalization_4/batchnorm/mulMul)batch_normalization_4/batchnorm/Rsqrt:y:0batch_normalization_4/mul:z:0*
T0*
_output_shapes
:	2%
#batch_normalization_4/batchnorm/mulΈ
%batch_normalization_4/batchnorm/mul_1Mulinputs'batch_normalization_4/batchnorm/mul:z:0*
T0*'
_output_shapes
:?????????	2'
%batch_normalization_4/batchnorm/mul_1Σ
%batch_normalization_4/batchnorm/mul_2Mul.batch_normalization_4/moments/Squeeze:output:0'batch_normalization_4/batchnorm/mul:z:0*
T0*
_output_shapes
:	2'
%batch_normalization_4/batchnorm/mul_2Β
#batch_normalization_4/batchnorm/subSubbatch_normalization_4/add_1:z:0)batch_normalization_4/batchnorm/mul_2:z:0*
T0*
_output_shapes
:	2%
#batch_normalization_4/batchnorm/subέ
%batch_normalization_4/batchnorm/add_1AddV2)batch_normalization_4/batchnorm/mul_1:z:0'batch_normalization_4/batchnorm/sub:z:0*
T0*'
_output_shapes
:?????????	2'
%batch_normalization_4/batchnorm/add_1©
dense_21/MatMul/ReadVariableOpReadVariableOp'dense_21_matmul_readvariableop_resource*
_output_shapes
:		*
dtype02 
dense_21/MatMul/ReadVariableOp²
dense_21/MatMulMatMul)batch_normalization_4/batchnorm/add_1:z:0&dense_21/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????2
dense_21/MatMul¨
dense_21/BiasAdd/ReadVariableOpReadVariableOp(dense_21_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02!
dense_21/BiasAdd/ReadVariableOp¦
dense_21/BiasAddBiasAdddense_21/MatMul:product:0'dense_21/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????2
dense_21/BiasAddt
dense_21/ReluReludense_21/BiasAdd:output:0*
T0*(
_output_shapes
:?????????2
dense_21/Reluw
dropout_4/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nΫΆ?2
dropout_4/dropout/Const§
dropout_4/dropout/MulMuldense_21/Relu:activations:0 dropout_4/dropout/Const:output:0*
T0*(
_output_shapes
:?????????2
dropout_4/dropout/Mul}
dropout_4/dropout/ShapeShapedense_21/Relu:activations:0*
T0*
_output_shapes
:2
dropout_4/dropout/ShapeΣ
.dropout_4/dropout/random_uniform/RandomUniformRandomUniform dropout_4/dropout/Shape:output:0*
T0*(
_output_shapes
:?????????*
dtype020
.dropout_4/dropout/random_uniform/RandomUniform
 dropout_4/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2"
 dropout_4/dropout/GreaterEqual/yη
dropout_4/dropout/GreaterEqualGreaterEqual7dropout_4/dropout/random_uniform/RandomUniform:output:0)dropout_4/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:?????????2 
dropout_4/dropout/GreaterEqual
dropout_4/dropout/CastCast"dropout_4/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:?????????2
dropout_4/dropout/Cast£
dropout_4/dropout/Mul_1Muldropout_4/dropout/Mul:z:0dropout_4/dropout/Cast:y:0*
T0*(
_output_shapes
:?????????2
dropout_4/dropout/Mul_1Ά
4batch_normalization_5/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 26
4batch_normalization_5/moments/mean/reduction_indicesη
"batch_normalization_5/moments/meanMeandropout_4/dropout/Mul_1:z:0=batch_normalization_5/moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	*
	keep_dims(2$
"batch_normalization_5/moments/meanΏ
*batch_normalization_5/moments/StopGradientStopGradient+batch_normalization_5/moments/mean:output:0*
T0*
_output_shapes
:	2,
*batch_normalization_5/moments/StopGradientό
/batch_normalization_5/moments/SquaredDifferenceSquaredDifferencedropout_4/dropout/Mul_1:z:03batch_normalization_5/moments/StopGradient:output:0*
T0*(
_output_shapes
:?????????21
/batch_normalization_5/moments/SquaredDifferenceΎ
8batch_normalization_5/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2:
8batch_normalization_5/moments/variance/reduction_indices
&batch_normalization_5/moments/varianceMean3batch_normalization_5/moments/SquaredDifference:z:0Abatch_normalization_5/moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	*
	keep_dims(2(
&batch_normalization_5/moments/varianceΓ
%batch_normalization_5/moments/SqueezeSqueeze+batch_normalization_5/moments/mean:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 2'
%batch_normalization_5/moments/SqueezeΛ
'batch_normalization_5/moments/Squeeze_1Squeeze/batch_normalization_5/moments/variance:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 2)
'batch_normalization_5/moments/Squeeze_1
batch_normalization_5/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batch_normalization_5/add/y½
batch_normalization_5/addAddV20batch_normalization_5/moments/Squeeze_1:output:0$batch_normalization_5/add/y:output:0*
T0*
_output_shapes	
:2
batch_normalization_5/add
batch_normalization_5/SqrtSqrtbatch_normalization_5/add:z:0*
T0*
_output_shapes	
:2
batch_normalization_5/Sqrt
batch_normalization_5/Sqrt_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *o:2 
batch_normalization_5/Sqrt_1/x
batch_normalization_5/Sqrt_1Sqrt'batch_normalization_5/Sqrt_1/x:output:0*
T0*
_output_shapes
: 2
batch_normalization_5/Sqrt_1Ο
,batch_normalization_5/Maximum/ReadVariableOpReadVariableOp5batch_normalization_5_maximum_readvariableop_resource*
_output_shapes	
:*
dtype02.
,batch_normalization_5/Maximum/ReadVariableOpΗ
batch_normalization_5/MaximumMaximum4batch_normalization_5/Maximum/ReadVariableOp:value:0 batch_normalization_5/Sqrt_1:y:0*
T0*
_output_shapes	
:2
batch_normalization_5/Maximum²
batch_normalization_5/truedivRealDivbatch_normalization_5/Sqrt:y:0!batch_normalization_5/Maximum:z:0*
T0*
_output_shapes	
:2
batch_normalization_5/truedivΓ
(batch_normalization_5/sub/ReadVariableOpReadVariableOp1batch_normalization_5_sub_readvariableop_resource*
_output_shapes	
:*
dtype02*
(batch_normalization_5/sub/ReadVariableOpΕ
batch_normalization_5/subSub.batch_normalization_5/moments/Squeeze:output:00batch_normalization_5/sub/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
batch_normalization_5/sub΅
batch_normalization_5/truediv_1RealDivbatch_normalization_5/sub:z:0!batch_normalization_5/Maximum:z:0*
T0*
_output_shapes	
:2!
batch_normalization_5/truediv_1δ
batch_normalization_5/IdentityIdentity.batch_normalization_5/moments/Squeeze:output:0^batch_normalization_5/truediv ^batch_normalization_5/truediv_1*
T0*
_output_shapes	
:2 
batch_normalization_5/IdentityΨ
 batch_normalization_5/Identity_1Identitybatch_normalization_5/Sqrt:y:0^batch_normalization_5/truediv ^batch_normalization_5/truediv_1*
T0*
_output_shapes	
:2"
 batch_normalization_5/Identity_1
 batch_normalization_5/Identity_2Identity'batch_normalization_5/Identity:output:0*
T0*
_output_shapes	
:2"
 batch_normalization_5/Identity_2
+batch_normalization_5/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
Χ#<2-
+batch_normalization_5/AssignMovingAvg/decayΫ
4batch_normalization_5/AssignMovingAvg/ReadVariableOpReadVariableOp1batch_normalization_5_sub_readvariableop_resource*
_output_shapes	
:*
dtype026
4batch_normalization_5/AssignMovingAvg/ReadVariableOpμ
)batch_normalization_5/AssignMovingAvg/subSub<batch_normalization_5/AssignMovingAvg/ReadVariableOp:value:0)batch_normalization_5/Identity_2:output:0*
T0*
_output_shapes	
:2+
)batch_normalization_5/AssignMovingAvg/subθ
)batch_normalization_5/AssignMovingAvg/mulMul-batch_normalization_5/AssignMovingAvg/sub:z:04batch_normalization_5/AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:2+
)batch_normalization_5/AssignMovingAvg/mulΜ
%batch_normalization_5/AssignMovingAvgAssignSubVariableOp1batch_normalization_5_sub_readvariableop_resource-batch_normalization_5/AssignMovingAvg/mul:z:05^batch_normalization_5/AssignMovingAvg/ReadVariableOp)^batch_normalization_5/sub/ReadVariableOp*
_output_shapes
 *
dtype02'
%batch_normalization_5/AssignMovingAvg‘
 batch_normalization_5/Identity_3Identity)batch_normalization_5/Identity_1:output:0*
T0*
_output_shapes	
:2"
 batch_normalization_5/Identity_3£
-batch_normalization_5/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
Χ#<2/
-batch_normalization_5/AssignMovingAvg_1/decayγ
6batch_normalization_5/AssignMovingAvg_1/ReadVariableOpReadVariableOp5batch_normalization_5_maximum_readvariableop_resource*
_output_shapes	
:*
dtype028
6batch_normalization_5/AssignMovingAvg_1/ReadVariableOpς
+batch_normalization_5/AssignMovingAvg_1/subSub>batch_normalization_5/AssignMovingAvg_1/ReadVariableOp:value:0)batch_normalization_5/Identity_3:output:0*
T0*
_output_shapes	
:2-
+batch_normalization_5/AssignMovingAvg_1/subπ
+batch_normalization_5/AssignMovingAvg_1/mulMul/batch_normalization_5/AssignMovingAvg_1/sub:z:06batch_normalization_5/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:2-
+batch_normalization_5/AssignMovingAvg_1/mulά
'batch_normalization_5/AssignMovingAvg_1AssignSubVariableOp5batch_normalization_5_maximum_readvariableop_resource/batch_normalization_5/AssignMovingAvg_1/mul:z:07^batch_normalization_5/AssignMovingAvg_1/ReadVariableOp-^batch_normalization_5/Maximum/ReadVariableOp*
_output_shapes
 *
dtype02)
'batch_normalization_5/AssignMovingAvg_1ρ
 batch_normalization_5/Identity_4Identity'batch_normalization_5/Identity:output:0&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1*
T0*
_output_shapes	
:2"
 batch_normalization_5/Identity_4ϊ
 batch_normalization_5/Identity_5Identity0batch_normalization_5/moments/Squeeze_1:output:0&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1*
T0*
_output_shapes	
:2"
 batch_normalization_5/Identity_5
batch_normalization_5/renorm_rStopGradient!batch_normalization_5/truediv:z:0*
T0*
_output_shapes	
:2 
batch_normalization_5/renorm_r
batch_normalization_5/renorm_dStopGradient#batch_normalization_5/truediv_1:z:0*
T0*
_output_shapes	
:2 
batch_normalization_5/renorm_dΓ
(batch_normalization_5/mul/ReadVariableOpReadVariableOp1batch_normalization_5_mul_readvariableop_resource*
_output_shapes	
:*
dtype02*
(batch_normalization_5/mul/ReadVariableOpΎ
batch_normalization_5/mulMul'batch_normalization_5/renorm_r:output:00batch_normalization_5/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
batch_normalization_5/mulΗ
*batch_normalization_5/mul_1/ReadVariableOpReadVariableOp1batch_normalization_5_mul_readvariableop_resource*
_output_shapes	
:*
dtype02,
*batch_normalization_5/mul_1/ReadVariableOpΔ
batch_normalization_5/mul_1Mul'batch_normalization_5/renorm_d:output:02batch_normalization_5/mul_1/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
batch_normalization_5/mul_1Ι
*batch_normalization_5/add_1/ReadVariableOpReadVariableOp3batch_normalization_5_add_1_readvariableop_resource*
_output_shapes	
:*
dtype02,
*batch_normalization_5/add_1/ReadVariableOpΎ
batch_normalization_5/add_1AddV2batch_normalization_5/mul_1:z:02batch_normalization_5/add_1/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
batch_normalization_5/add_1£
-batch_normalization_5/AssignMovingAvg_2/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
Χ#<2/
-batch_normalization_5/AssignMovingAvg_2/decayν
6batch_normalization_5/AssignMovingAvg_2/ReadVariableOpReadVariableOp?batch_normalization_5_assignmovingavg_2_readvariableop_resource*
_output_shapes	
:*
dtype028
6batch_normalization_5/AssignMovingAvg_2/ReadVariableOpς
+batch_normalization_5/AssignMovingAvg_2/subSub>batch_normalization_5/AssignMovingAvg_2/ReadVariableOp:value:0)batch_normalization_5/Identity_4:output:0*
T0*
_output_shapes	
:2-
+batch_normalization_5/AssignMovingAvg_2/subπ
+batch_normalization_5/AssignMovingAvg_2/mulMul/batch_normalization_5/AssignMovingAvg_2/sub:z:06batch_normalization_5/AssignMovingAvg_2/decay:output:0*
T0*
_output_shapes	
:2-
+batch_normalization_5/AssignMovingAvg_2/mul·
'batch_normalization_5/AssignMovingAvg_2AssignSubVariableOp?batch_normalization_5_assignmovingavg_2_readvariableop_resource/batch_normalization_5/AssignMovingAvg_2/mul:z:07^batch_normalization_5/AssignMovingAvg_2/ReadVariableOp*
_output_shapes
 *
dtype02)
'batch_normalization_5/AssignMovingAvg_2
batch_normalization_5/add_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batch_normalization_5/add_2/yΌ
batch_normalization_5/add_2AddV2)batch_normalization_5/Identity_5:output:0&batch_normalization_5/add_2/y:output:0*
T0*
_output_shapes	
:2
batch_normalization_5/add_2
batch_normalization_5/Sqrt_2Sqrtbatch_normalization_5/add_2:z:0*
T0*
_output_shapes	
:2
batch_normalization_5/Sqrt_2£
-batch_normalization_5/AssignMovingAvg_3/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
Χ#<2/
-batch_normalization_5/AssignMovingAvg_3/decayν
6batch_normalization_5/AssignMovingAvg_3/ReadVariableOpReadVariableOp?batch_normalization_5_assignmovingavg_3_readvariableop_resource*
_output_shapes	
:*
dtype028
6batch_normalization_5/AssignMovingAvg_3/ReadVariableOpι
+batch_normalization_5/AssignMovingAvg_3/subSub>batch_normalization_5/AssignMovingAvg_3/ReadVariableOp:value:0 batch_normalization_5/Sqrt_2:y:0*
T0*
_output_shapes	
:2-
+batch_normalization_5/AssignMovingAvg_3/subπ
+batch_normalization_5/AssignMovingAvg_3/mulMul/batch_normalization_5/AssignMovingAvg_3/sub:z:06batch_normalization_5/AssignMovingAvg_3/decay:output:0*
T0*
_output_shapes	
:2-
+batch_normalization_5/AssignMovingAvg_3/mul·
'batch_normalization_5/AssignMovingAvg_3AssignSubVariableOp?batch_normalization_5_assignmovingavg_3_readvariableop_resource/batch_normalization_5/AssignMovingAvg_3/mul:z:07^batch_normalization_5/AssignMovingAvg_3/ReadVariableOp*
_output_shapes
 *
dtype02)
'batch_normalization_5/AssignMovingAvg_3σ
$batch_normalization_5/ReadVariableOpReadVariableOp?batch_normalization_5_assignmovingavg_3_readvariableop_resource(^batch_normalization_5/AssignMovingAvg_3*
_output_shapes	
:*
dtype02&
$batch_normalization_5/ReadVariableOp?
*batch_normalization_5/mul_2/ReadVariableOpReadVariableOp?batch_normalization_5_assignmovingavg_3_readvariableop_resource(^batch_normalization_5/AssignMovingAvg_3*
_output_shapes	
:*
dtype02,
*batch_normalization_5/mul_2/ReadVariableOpΙ
batch_normalization_5/mul_2Mul,batch_normalization_5/ReadVariableOp:value:02batch_normalization_5/mul_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
batch_normalization_5/mul_2
batch_normalization_5/sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batch_normalization_5/sub_1/y°
batch_normalization_5/sub_1Subbatch_normalization_5/mul_2:z:0&batch_normalization_5/sub_1/y:output:0*
T0*
_output_shapes	
:2
batch_normalization_5/sub_1
batch_normalization_5/ReluRelubatch_normalization_5/sub_1:z:0*
T0*
_output_shapes	
:2
batch_normalization_5/Reluά
$batch_normalization_5/AssignNewValueAssignVariableOp-batch_normalization_5_assignnewvalue_resource(batch_normalization_5/Relu:activations:0*
_output_shapes
 *
dtype02&
$batch_normalization_5/AssignNewValue
%batch_normalization_5/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2'
%batch_normalization_5/batchnorm/add/yΫ
#batch_normalization_5/batchnorm/addAddV20batch_normalization_5/moments/Squeeze_1:output:0.batch_normalization_5/batchnorm/add/y:output:0*
T0*
_output_shapes	
:2%
#batch_normalization_5/batchnorm/add¦
%batch_normalization_5/batchnorm/RsqrtRsqrt'batch_normalization_5/batchnorm/add:z:0*
T0*
_output_shapes	
:2'
%batch_normalization_5/batchnorm/RsqrtΑ
#batch_normalization_5/batchnorm/mulMul)batch_normalization_5/batchnorm/Rsqrt:y:0batch_normalization_5/mul:z:0*
T0*
_output_shapes	
:2%
#batch_normalization_5/batchnorm/mulΞ
%batch_normalization_5/batchnorm/mul_1Muldropout_4/dropout/Mul_1:z:0'batch_normalization_5/batchnorm/mul:z:0*
T0*(
_output_shapes
:?????????2'
%batch_normalization_5/batchnorm/mul_1Τ
%batch_normalization_5/batchnorm/mul_2Mul.batch_normalization_5/moments/Squeeze:output:0'batch_normalization_5/batchnorm/mul:z:0*
T0*
_output_shapes	
:2'
%batch_normalization_5/batchnorm/mul_2Γ
#batch_normalization_5/batchnorm/subSubbatch_normalization_5/add_1:z:0)batch_normalization_5/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:2%
#batch_normalization_5/batchnorm/subή
%batch_normalization_5/batchnorm/add_1AddV2)batch_normalization_5/batchnorm/mul_1:z:0'batch_normalization_5/batchnorm/sub:z:0*
T0*(
_output_shapes
:?????????2'
%batch_normalization_5/batchnorm/add_1ͺ
dense_22/MatMul/ReadVariableOpReadVariableOp'dense_22_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype02 
dense_22/MatMul/ReadVariableOp²
dense_22/MatMulMatMul)batch_normalization_5/batchnorm/add_1:z:0&dense_22/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????2
dense_22/MatMul¨
dense_22/BiasAdd/ReadVariableOpReadVariableOp(dense_22_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02!
dense_22/BiasAdd/ReadVariableOp¦
dense_22/BiasAddBiasAdddense_22/MatMul:product:0'dense_22/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????2
dense_22/BiasAddt
dense_22/ReluReludense_22/BiasAdd:output:0*
T0*(
_output_shapes
:?????????2
dense_22/Reluw
dropout_5/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nΫΆ?2
dropout_5/dropout/Const§
dropout_5/dropout/MulMuldense_22/Relu:activations:0 dropout_5/dropout/Const:output:0*
T0*(
_output_shapes
:?????????2
dropout_5/dropout/Mul}
dropout_5/dropout/ShapeShapedense_22/Relu:activations:0*
T0*
_output_shapes
:2
dropout_5/dropout/ShapeΣ
.dropout_5/dropout/random_uniform/RandomUniformRandomUniform dropout_5/dropout/Shape:output:0*
T0*(
_output_shapes
:?????????*
dtype020
.dropout_5/dropout/random_uniform/RandomUniform
 dropout_5/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2"
 dropout_5/dropout/GreaterEqual/yη
dropout_5/dropout/GreaterEqualGreaterEqual7dropout_5/dropout/random_uniform/RandomUniform:output:0)dropout_5/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:?????????2 
dropout_5/dropout/GreaterEqual
dropout_5/dropout/CastCast"dropout_5/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:?????????2
dropout_5/dropout/Cast£
dropout_5/dropout/Mul_1Muldropout_5/dropout/Mul:z:0dropout_5/dropout/Cast:y:0*
T0*(
_output_shapes
:?????????2
dropout_5/dropout/Mul_1Ά
4batch_normalization_6/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 26
4batch_normalization_6/moments/mean/reduction_indicesη
"batch_normalization_6/moments/meanMeandropout_5/dropout/Mul_1:z:0=batch_normalization_6/moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	*
	keep_dims(2$
"batch_normalization_6/moments/meanΏ
*batch_normalization_6/moments/StopGradientStopGradient+batch_normalization_6/moments/mean:output:0*
T0*
_output_shapes
:	2,
*batch_normalization_6/moments/StopGradientό
/batch_normalization_6/moments/SquaredDifferenceSquaredDifferencedropout_5/dropout/Mul_1:z:03batch_normalization_6/moments/StopGradient:output:0*
T0*(
_output_shapes
:?????????21
/batch_normalization_6/moments/SquaredDifferenceΎ
8batch_normalization_6/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2:
8batch_normalization_6/moments/variance/reduction_indices
&batch_normalization_6/moments/varianceMean3batch_normalization_6/moments/SquaredDifference:z:0Abatch_normalization_6/moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	*
	keep_dims(2(
&batch_normalization_6/moments/varianceΓ
%batch_normalization_6/moments/SqueezeSqueeze+batch_normalization_6/moments/mean:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 2'
%batch_normalization_6/moments/SqueezeΛ
'batch_normalization_6/moments/Squeeze_1Squeeze/batch_normalization_6/moments/variance:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 2)
'batch_normalization_6/moments/Squeeze_1
batch_normalization_6/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batch_normalization_6/add/y½
batch_normalization_6/addAddV20batch_normalization_6/moments/Squeeze_1:output:0$batch_normalization_6/add/y:output:0*
T0*
_output_shapes	
:2
batch_normalization_6/add
batch_normalization_6/SqrtSqrtbatch_normalization_6/add:z:0*
T0*
_output_shapes	
:2
batch_normalization_6/Sqrt
batch_normalization_6/Sqrt_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *o:2 
batch_normalization_6/Sqrt_1/x
batch_normalization_6/Sqrt_1Sqrt'batch_normalization_6/Sqrt_1/x:output:0*
T0*
_output_shapes
: 2
batch_normalization_6/Sqrt_1Ο
,batch_normalization_6/Maximum/ReadVariableOpReadVariableOp5batch_normalization_6_maximum_readvariableop_resource*
_output_shapes	
:*
dtype02.
,batch_normalization_6/Maximum/ReadVariableOpΗ
batch_normalization_6/MaximumMaximum4batch_normalization_6/Maximum/ReadVariableOp:value:0 batch_normalization_6/Sqrt_1:y:0*
T0*
_output_shapes	
:2
batch_normalization_6/Maximum²
batch_normalization_6/truedivRealDivbatch_normalization_6/Sqrt:y:0!batch_normalization_6/Maximum:z:0*
T0*
_output_shapes	
:2
batch_normalization_6/truedivΓ
(batch_normalization_6/sub/ReadVariableOpReadVariableOp1batch_normalization_6_sub_readvariableop_resource*
_output_shapes	
:*
dtype02*
(batch_normalization_6/sub/ReadVariableOpΕ
batch_normalization_6/subSub.batch_normalization_6/moments/Squeeze:output:00batch_normalization_6/sub/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
batch_normalization_6/sub΅
batch_normalization_6/truediv_1RealDivbatch_normalization_6/sub:z:0!batch_normalization_6/Maximum:z:0*
T0*
_output_shapes	
:2!
batch_normalization_6/truediv_1δ
batch_normalization_6/IdentityIdentity.batch_normalization_6/moments/Squeeze:output:0^batch_normalization_6/truediv ^batch_normalization_6/truediv_1*
T0*
_output_shapes	
:2 
batch_normalization_6/IdentityΨ
 batch_normalization_6/Identity_1Identitybatch_normalization_6/Sqrt:y:0^batch_normalization_6/truediv ^batch_normalization_6/truediv_1*
T0*
_output_shapes	
:2"
 batch_normalization_6/Identity_1
 batch_normalization_6/Identity_2Identity'batch_normalization_6/Identity:output:0*
T0*
_output_shapes	
:2"
 batch_normalization_6/Identity_2
+batch_normalization_6/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
Χ#<2-
+batch_normalization_6/AssignMovingAvg/decayΫ
4batch_normalization_6/AssignMovingAvg/ReadVariableOpReadVariableOp1batch_normalization_6_sub_readvariableop_resource*
_output_shapes	
:*
dtype026
4batch_normalization_6/AssignMovingAvg/ReadVariableOpμ
)batch_normalization_6/AssignMovingAvg/subSub<batch_normalization_6/AssignMovingAvg/ReadVariableOp:value:0)batch_normalization_6/Identity_2:output:0*
T0*
_output_shapes	
:2+
)batch_normalization_6/AssignMovingAvg/subθ
)batch_normalization_6/AssignMovingAvg/mulMul-batch_normalization_6/AssignMovingAvg/sub:z:04batch_normalization_6/AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:2+
)batch_normalization_6/AssignMovingAvg/mulΜ
%batch_normalization_6/AssignMovingAvgAssignSubVariableOp1batch_normalization_6_sub_readvariableop_resource-batch_normalization_6/AssignMovingAvg/mul:z:05^batch_normalization_6/AssignMovingAvg/ReadVariableOp)^batch_normalization_6/sub/ReadVariableOp*
_output_shapes
 *
dtype02'
%batch_normalization_6/AssignMovingAvg‘
 batch_normalization_6/Identity_3Identity)batch_normalization_6/Identity_1:output:0*
T0*
_output_shapes	
:2"
 batch_normalization_6/Identity_3£
-batch_normalization_6/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
Χ#<2/
-batch_normalization_6/AssignMovingAvg_1/decayγ
6batch_normalization_6/AssignMovingAvg_1/ReadVariableOpReadVariableOp5batch_normalization_6_maximum_readvariableop_resource*
_output_shapes	
:*
dtype028
6batch_normalization_6/AssignMovingAvg_1/ReadVariableOpς
+batch_normalization_6/AssignMovingAvg_1/subSub>batch_normalization_6/AssignMovingAvg_1/ReadVariableOp:value:0)batch_normalization_6/Identity_3:output:0*
T0*
_output_shapes	
:2-
+batch_normalization_6/AssignMovingAvg_1/subπ
+batch_normalization_6/AssignMovingAvg_1/mulMul/batch_normalization_6/AssignMovingAvg_1/sub:z:06batch_normalization_6/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:2-
+batch_normalization_6/AssignMovingAvg_1/mulά
'batch_normalization_6/AssignMovingAvg_1AssignSubVariableOp5batch_normalization_6_maximum_readvariableop_resource/batch_normalization_6/AssignMovingAvg_1/mul:z:07^batch_normalization_6/AssignMovingAvg_1/ReadVariableOp-^batch_normalization_6/Maximum/ReadVariableOp*
_output_shapes
 *
dtype02)
'batch_normalization_6/AssignMovingAvg_1ρ
 batch_normalization_6/Identity_4Identity'batch_normalization_6/Identity:output:0&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
T0*
_output_shapes	
:2"
 batch_normalization_6/Identity_4ϊ
 batch_normalization_6/Identity_5Identity0batch_normalization_6/moments/Squeeze_1:output:0&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
T0*
_output_shapes	
:2"
 batch_normalization_6/Identity_5
batch_normalization_6/renorm_rStopGradient!batch_normalization_6/truediv:z:0*
T0*
_output_shapes	
:2 
batch_normalization_6/renorm_r
batch_normalization_6/renorm_dStopGradient#batch_normalization_6/truediv_1:z:0*
T0*
_output_shapes	
:2 
batch_normalization_6/renorm_dΓ
(batch_normalization_6/mul/ReadVariableOpReadVariableOp1batch_normalization_6_mul_readvariableop_resource*
_output_shapes	
:*
dtype02*
(batch_normalization_6/mul/ReadVariableOpΎ
batch_normalization_6/mulMul'batch_normalization_6/renorm_r:output:00batch_normalization_6/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
batch_normalization_6/mulΗ
*batch_normalization_6/mul_1/ReadVariableOpReadVariableOp1batch_normalization_6_mul_readvariableop_resource*
_output_shapes	
:*
dtype02,
*batch_normalization_6/mul_1/ReadVariableOpΔ
batch_normalization_6/mul_1Mul'batch_normalization_6/renorm_d:output:02batch_normalization_6/mul_1/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
batch_normalization_6/mul_1Ι
*batch_normalization_6/add_1/ReadVariableOpReadVariableOp3batch_normalization_6_add_1_readvariableop_resource*
_output_shapes	
:*
dtype02,
*batch_normalization_6/add_1/ReadVariableOpΎ
batch_normalization_6/add_1AddV2batch_normalization_6/mul_1:z:02batch_normalization_6/add_1/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
batch_normalization_6/add_1£
-batch_normalization_6/AssignMovingAvg_2/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
Χ#<2/
-batch_normalization_6/AssignMovingAvg_2/decayν
6batch_normalization_6/AssignMovingAvg_2/ReadVariableOpReadVariableOp?batch_normalization_6_assignmovingavg_2_readvariableop_resource*
_output_shapes	
:*
dtype028
6batch_normalization_6/AssignMovingAvg_2/ReadVariableOpς
+batch_normalization_6/AssignMovingAvg_2/subSub>batch_normalization_6/AssignMovingAvg_2/ReadVariableOp:value:0)batch_normalization_6/Identity_4:output:0*
T0*
_output_shapes	
:2-
+batch_normalization_6/AssignMovingAvg_2/subπ
+batch_normalization_6/AssignMovingAvg_2/mulMul/batch_normalization_6/AssignMovingAvg_2/sub:z:06batch_normalization_6/AssignMovingAvg_2/decay:output:0*
T0*
_output_shapes	
:2-
+batch_normalization_6/AssignMovingAvg_2/mul·
'batch_normalization_6/AssignMovingAvg_2AssignSubVariableOp?batch_normalization_6_assignmovingavg_2_readvariableop_resource/batch_normalization_6/AssignMovingAvg_2/mul:z:07^batch_normalization_6/AssignMovingAvg_2/ReadVariableOp*
_output_shapes
 *
dtype02)
'batch_normalization_6/AssignMovingAvg_2
batch_normalization_6/add_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batch_normalization_6/add_2/yΌ
batch_normalization_6/add_2AddV2)batch_normalization_6/Identity_5:output:0&batch_normalization_6/add_2/y:output:0*
T0*
_output_shapes	
:2
batch_normalization_6/add_2
batch_normalization_6/Sqrt_2Sqrtbatch_normalization_6/add_2:z:0*
T0*
_output_shapes	
:2
batch_normalization_6/Sqrt_2£
-batch_normalization_6/AssignMovingAvg_3/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
Χ#<2/
-batch_normalization_6/AssignMovingAvg_3/decayν
6batch_normalization_6/AssignMovingAvg_3/ReadVariableOpReadVariableOp?batch_normalization_6_assignmovingavg_3_readvariableop_resource*
_output_shapes	
:*
dtype028
6batch_normalization_6/AssignMovingAvg_3/ReadVariableOpι
+batch_normalization_6/AssignMovingAvg_3/subSub>batch_normalization_6/AssignMovingAvg_3/ReadVariableOp:value:0 batch_normalization_6/Sqrt_2:y:0*
T0*
_output_shapes	
:2-
+batch_normalization_6/AssignMovingAvg_3/subπ
+batch_normalization_6/AssignMovingAvg_3/mulMul/batch_normalization_6/AssignMovingAvg_3/sub:z:06batch_normalization_6/AssignMovingAvg_3/decay:output:0*
T0*
_output_shapes	
:2-
+batch_normalization_6/AssignMovingAvg_3/mul·
'batch_normalization_6/AssignMovingAvg_3AssignSubVariableOp?batch_normalization_6_assignmovingavg_3_readvariableop_resource/batch_normalization_6/AssignMovingAvg_3/mul:z:07^batch_normalization_6/AssignMovingAvg_3/ReadVariableOp*
_output_shapes
 *
dtype02)
'batch_normalization_6/AssignMovingAvg_3σ
$batch_normalization_6/ReadVariableOpReadVariableOp?batch_normalization_6_assignmovingavg_3_readvariableop_resource(^batch_normalization_6/AssignMovingAvg_3*
_output_shapes	
:*
dtype02&
$batch_normalization_6/ReadVariableOp?
*batch_normalization_6/mul_2/ReadVariableOpReadVariableOp?batch_normalization_6_assignmovingavg_3_readvariableop_resource(^batch_normalization_6/AssignMovingAvg_3*
_output_shapes	
:*
dtype02,
*batch_normalization_6/mul_2/ReadVariableOpΙ
batch_normalization_6/mul_2Mul,batch_normalization_6/ReadVariableOp:value:02batch_normalization_6/mul_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
batch_normalization_6/mul_2
batch_normalization_6/sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batch_normalization_6/sub_1/y°
batch_normalization_6/sub_1Subbatch_normalization_6/mul_2:z:0&batch_normalization_6/sub_1/y:output:0*
T0*
_output_shapes	
:2
batch_normalization_6/sub_1
batch_normalization_6/ReluRelubatch_normalization_6/sub_1:z:0*
T0*
_output_shapes	
:2
batch_normalization_6/Reluά
$batch_normalization_6/AssignNewValueAssignVariableOp-batch_normalization_6_assignnewvalue_resource(batch_normalization_6/Relu:activations:0*
_output_shapes
 *
dtype02&
$batch_normalization_6/AssignNewValue
%batch_normalization_6/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2'
%batch_normalization_6/batchnorm/add/yΫ
#batch_normalization_6/batchnorm/addAddV20batch_normalization_6/moments/Squeeze_1:output:0.batch_normalization_6/batchnorm/add/y:output:0*
T0*
_output_shapes	
:2%
#batch_normalization_6/batchnorm/add¦
%batch_normalization_6/batchnorm/RsqrtRsqrt'batch_normalization_6/batchnorm/add:z:0*
T0*
_output_shapes	
:2'
%batch_normalization_6/batchnorm/RsqrtΑ
#batch_normalization_6/batchnorm/mulMul)batch_normalization_6/batchnorm/Rsqrt:y:0batch_normalization_6/mul:z:0*
T0*
_output_shapes	
:2%
#batch_normalization_6/batchnorm/mulΞ
%batch_normalization_6/batchnorm/mul_1Muldropout_5/dropout/Mul_1:z:0'batch_normalization_6/batchnorm/mul:z:0*
T0*(
_output_shapes
:?????????2'
%batch_normalization_6/batchnorm/mul_1Τ
%batch_normalization_6/batchnorm/mul_2Mul.batch_normalization_6/moments/Squeeze:output:0'batch_normalization_6/batchnorm/mul:z:0*
T0*
_output_shapes	
:2'
%batch_normalization_6/batchnorm/mul_2Γ
#batch_normalization_6/batchnorm/subSubbatch_normalization_6/add_1:z:0)batch_normalization_6/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:2%
#batch_normalization_6/batchnorm/subή
%batch_normalization_6/batchnorm/add_1AddV2)batch_normalization_6/batchnorm/mul_1:z:0'batch_normalization_6/batchnorm/sub:z:0*
T0*(
_output_shapes
:?????????2'
%batch_normalization_6/batchnorm/add_1ͺ
dense_23/MatMul/ReadVariableOpReadVariableOp'dense_23_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype02 
dense_23/MatMul/ReadVariableOp²
dense_23/MatMulMatMul)batch_normalization_6/batchnorm/add_1:z:0&dense_23/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????2
dense_23/MatMul¨
dense_23/BiasAdd/ReadVariableOpReadVariableOp(dense_23_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02!
dense_23/BiasAdd/ReadVariableOp¦
dense_23/BiasAddBiasAdddense_23/MatMul:product:0'dense_23/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????2
dense_23/BiasAddt
dense_23/ReluReludense_23/BiasAdd:output:0*
T0*(
_output_shapes
:?????????2
dense_23/Reluw
dropout_6/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nΫΆ?2
dropout_6/dropout/Const§
dropout_6/dropout/MulMuldense_23/Relu:activations:0 dropout_6/dropout/Const:output:0*
T0*(
_output_shapes
:?????????2
dropout_6/dropout/Mul}
dropout_6/dropout/ShapeShapedense_23/Relu:activations:0*
T0*
_output_shapes
:2
dropout_6/dropout/ShapeΣ
.dropout_6/dropout/random_uniform/RandomUniformRandomUniform dropout_6/dropout/Shape:output:0*
T0*(
_output_shapes
:?????????*
dtype020
.dropout_6/dropout/random_uniform/RandomUniform
 dropout_6/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2"
 dropout_6/dropout/GreaterEqual/yη
dropout_6/dropout/GreaterEqualGreaterEqual7dropout_6/dropout/random_uniform/RandomUniform:output:0)dropout_6/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:?????????2 
dropout_6/dropout/GreaterEqual
dropout_6/dropout/CastCast"dropout_6/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:?????????2
dropout_6/dropout/Cast£
dropout_6/dropout/Mul_1Muldropout_6/dropout/Mul:z:0dropout_6/dropout/Cast:y:0*
T0*(
_output_shapes
:?????????2
dropout_6/dropout/Mul_1Ά
4batch_normalization_7/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 26
4batch_normalization_7/moments/mean/reduction_indicesη
"batch_normalization_7/moments/meanMeandropout_6/dropout/Mul_1:z:0=batch_normalization_7/moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	*
	keep_dims(2$
"batch_normalization_7/moments/meanΏ
*batch_normalization_7/moments/StopGradientStopGradient+batch_normalization_7/moments/mean:output:0*
T0*
_output_shapes
:	2,
*batch_normalization_7/moments/StopGradientό
/batch_normalization_7/moments/SquaredDifferenceSquaredDifferencedropout_6/dropout/Mul_1:z:03batch_normalization_7/moments/StopGradient:output:0*
T0*(
_output_shapes
:?????????21
/batch_normalization_7/moments/SquaredDifferenceΎ
8batch_normalization_7/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2:
8batch_normalization_7/moments/variance/reduction_indices
&batch_normalization_7/moments/varianceMean3batch_normalization_7/moments/SquaredDifference:z:0Abatch_normalization_7/moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	*
	keep_dims(2(
&batch_normalization_7/moments/varianceΓ
%batch_normalization_7/moments/SqueezeSqueeze+batch_normalization_7/moments/mean:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 2'
%batch_normalization_7/moments/SqueezeΛ
'batch_normalization_7/moments/Squeeze_1Squeeze/batch_normalization_7/moments/variance:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 2)
'batch_normalization_7/moments/Squeeze_1
batch_normalization_7/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batch_normalization_7/add/y½
batch_normalization_7/addAddV20batch_normalization_7/moments/Squeeze_1:output:0$batch_normalization_7/add/y:output:0*
T0*
_output_shapes	
:2
batch_normalization_7/add
batch_normalization_7/SqrtSqrtbatch_normalization_7/add:z:0*
T0*
_output_shapes	
:2
batch_normalization_7/Sqrt
batch_normalization_7/Sqrt_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *o:2 
batch_normalization_7/Sqrt_1/x
batch_normalization_7/Sqrt_1Sqrt'batch_normalization_7/Sqrt_1/x:output:0*
T0*
_output_shapes
: 2
batch_normalization_7/Sqrt_1Ο
,batch_normalization_7/Maximum/ReadVariableOpReadVariableOp5batch_normalization_7_maximum_readvariableop_resource*
_output_shapes	
:*
dtype02.
,batch_normalization_7/Maximum/ReadVariableOpΗ
batch_normalization_7/MaximumMaximum4batch_normalization_7/Maximum/ReadVariableOp:value:0 batch_normalization_7/Sqrt_1:y:0*
T0*
_output_shapes	
:2
batch_normalization_7/Maximum²
batch_normalization_7/truedivRealDivbatch_normalization_7/Sqrt:y:0!batch_normalization_7/Maximum:z:0*
T0*
_output_shapes	
:2
batch_normalization_7/truedivΓ
(batch_normalization_7/sub/ReadVariableOpReadVariableOp1batch_normalization_7_sub_readvariableop_resource*
_output_shapes	
:*
dtype02*
(batch_normalization_7/sub/ReadVariableOpΕ
batch_normalization_7/subSub.batch_normalization_7/moments/Squeeze:output:00batch_normalization_7/sub/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
batch_normalization_7/sub΅
batch_normalization_7/truediv_1RealDivbatch_normalization_7/sub:z:0!batch_normalization_7/Maximum:z:0*
T0*
_output_shapes	
:2!
batch_normalization_7/truediv_1δ
batch_normalization_7/IdentityIdentity.batch_normalization_7/moments/Squeeze:output:0^batch_normalization_7/truediv ^batch_normalization_7/truediv_1*
T0*
_output_shapes	
:2 
batch_normalization_7/IdentityΨ
 batch_normalization_7/Identity_1Identitybatch_normalization_7/Sqrt:y:0^batch_normalization_7/truediv ^batch_normalization_7/truediv_1*
T0*
_output_shapes	
:2"
 batch_normalization_7/Identity_1
 batch_normalization_7/Identity_2Identity'batch_normalization_7/Identity:output:0*
T0*
_output_shapes	
:2"
 batch_normalization_7/Identity_2
+batch_normalization_7/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
Χ#<2-
+batch_normalization_7/AssignMovingAvg/decayΫ
4batch_normalization_7/AssignMovingAvg/ReadVariableOpReadVariableOp1batch_normalization_7_sub_readvariableop_resource*
_output_shapes	
:*
dtype026
4batch_normalization_7/AssignMovingAvg/ReadVariableOpμ
)batch_normalization_7/AssignMovingAvg/subSub<batch_normalization_7/AssignMovingAvg/ReadVariableOp:value:0)batch_normalization_7/Identity_2:output:0*
T0*
_output_shapes	
:2+
)batch_normalization_7/AssignMovingAvg/subθ
)batch_normalization_7/AssignMovingAvg/mulMul-batch_normalization_7/AssignMovingAvg/sub:z:04batch_normalization_7/AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:2+
)batch_normalization_7/AssignMovingAvg/mulΜ
%batch_normalization_7/AssignMovingAvgAssignSubVariableOp1batch_normalization_7_sub_readvariableop_resource-batch_normalization_7/AssignMovingAvg/mul:z:05^batch_normalization_7/AssignMovingAvg/ReadVariableOp)^batch_normalization_7/sub/ReadVariableOp*
_output_shapes
 *
dtype02'
%batch_normalization_7/AssignMovingAvg‘
 batch_normalization_7/Identity_3Identity)batch_normalization_7/Identity_1:output:0*
T0*
_output_shapes	
:2"
 batch_normalization_7/Identity_3£
-batch_normalization_7/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
Χ#<2/
-batch_normalization_7/AssignMovingAvg_1/decayγ
6batch_normalization_7/AssignMovingAvg_1/ReadVariableOpReadVariableOp5batch_normalization_7_maximum_readvariableop_resource*
_output_shapes	
:*
dtype028
6batch_normalization_7/AssignMovingAvg_1/ReadVariableOpς
+batch_normalization_7/AssignMovingAvg_1/subSub>batch_normalization_7/AssignMovingAvg_1/ReadVariableOp:value:0)batch_normalization_7/Identity_3:output:0*
T0*
_output_shapes	
:2-
+batch_normalization_7/AssignMovingAvg_1/subπ
+batch_normalization_7/AssignMovingAvg_1/mulMul/batch_normalization_7/AssignMovingAvg_1/sub:z:06batch_normalization_7/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:2-
+batch_normalization_7/AssignMovingAvg_1/mulά
'batch_normalization_7/AssignMovingAvg_1AssignSubVariableOp5batch_normalization_7_maximum_readvariableop_resource/batch_normalization_7/AssignMovingAvg_1/mul:z:07^batch_normalization_7/AssignMovingAvg_1/ReadVariableOp-^batch_normalization_7/Maximum/ReadVariableOp*
_output_shapes
 *
dtype02)
'batch_normalization_7/AssignMovingAvg_1ρ
 batch_normalization_7/Identity_4Identity'batch_normalization_7/Identity:output:0&^batch_normalization_7/AssignMovingAvg(^batch_normalization_7/AssignMovingAvg_1*
T0*
_output_shapes	
:2"
 batch_normalization_7/Identity_4ϊ
 batch_normalization_7/Identity_5Identity0batch_normalization_7/moments/Squeeze_1:output:0&^batch_normalization_7/AssignMovingAvg(^batch_normalization_7/AssignMovingAvg_1*
T0*
_output_shapes	
:2"
 batch_normalization_7/Identity_5
batch_normalization_7/renorm_rStopGradient!batch_normalization_7/truediv:z:0*
T0*
_output_shapes	
:2 
batch_normalization_7/renorm_r
batch_normalization_7/renorm_dStopGradient#batch_normalization_7/truediv_1:z:0*
T0*
_output_shapes	
:2 
batch_normalization_7/renorm_dΓ
(batch_normalization_7/mul/ReadVariableOpReadVariableOp1batch_normalization_7_mul_readvariableop_resource*
_output_shapes	
:*
dtype02*
(batch_normalization_7/mul/ReadVariableOpΎ
batch_normalization_7/mulMul'batch_normalization_7/renorm_r:output:00batch_normalization_7/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
batch_normalization_7/mulΗ
*batch_normalization_7/mul_1/ReadVariableOpReadVariableOp1batch_normalization_7_mul_readvariableop_resource*
_output_shapes	
:*
dtype02,
*batch_normalization_7/mul_1/ReadVariableOpΔ
batch_normalization_7/mul_1Mul'batch_normalization_7/renorm_d:output:02batch_normalization_7/mul_1/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
batch_normalization_7/mul_1Ι
*batch_normalization_7/add_1/ReadVariableOpReadVariableOp3batch_normalization_7_add_1_readvariableop_resource*
_output_shapes	
:*
dtype02,
*batch_normalization_7/add_1/ReadVariableOpΎ
batch_normalization_7/add_1AddV2batch_normalization_7/mul_1:z:02batch_normalization_7/add_1/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
batch_normalization_7/add_1£
-batch_normalization_7/AssignMovingAvg_2/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
Χ#<2/
-batch_normalization_7/AssignMovingAvg_2/decayν
6batch_normalization_7/AssignMovingAvg_2/ReadVariableOpReadVariableOp?batch_normalization_7_assignmovingavg_2_readvariableop_resource*
_output_shapes	
:*
dtype028
6batch_normalization_7/AssignMovingAvg_2/ReadVariableOpς
+batch_normalization_7/AssignMovingAvg_2/subSub>batch_normalization_7/AssignMovingAvg_2/ReadVariableOp:value:0)batch_normalization_7/Identity_4:output:0*
T0*
_output_shapes	
:2-
+batch_normalization_7/AssignMovingAvg_2/subπ
+batch_normalization_7/AssignMovingAvg_2/mulMul/batch_normalization_7/AssignMovingAvg_2/sub:z:06batch_normalization_7/AssignMovingAvg_2/decay:output:0*
T0*
_output_shapes	
:2-
+batch_normalization_7/AssignMovingAvg_2/mul·
'batch_normalization_7/AssignMovingAvg_2AssignSubVariableOp?batch_normalization_7_assignmovingavg_2_readvariableop_resource/batch_normalization_7/AssignMovingAvg_2/mul:z:07^batch_normalization_7/AssignMovingAvg_2/ReadVariableOp*
_output_shapes
 *
dtype02)
'batch_normalization_7/AssignMovingAvg_2
batch_normalization_7/add_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batch_normalization_7/add_2/yΌ
batch_normalization_7/add_2AddV2)batch_normalization_7/Identity_5:output:0&batch_normalization_7/add_2/y:output:0*
T0*
_output_shapes	
:2
batch_normalization_7/add_2
batch_normalization_7/Sqrt_2Sqrtbatch_normalization_7/add_2:z:0*
T0*
_output_shapes	
:2
batch_normalization_7/Sqrt_2£
-batch_normalization_7/AssignMovingAvg_3/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
Χ#<2/
-batch_normalization_7/AssignMovingAvg_3/decayν
6batch_normalization_7/AssignMovingAvg_3/ReadVariableOpReadVariableOp?batch_normalization_7_assignmovingavg_3_readvariableop_resource*
_output_shapes	
:*
dtype028
6batch_normalization_7/AssignMovingAvg_3/ReadVariableOpι
+batch_normalization_7/AssignMovingAvg_3/subSub>batch_normalization_7/AssignMovingAvg_3/ReadVariableOp:value:0 batch_normalization_7/Sqrt_2:y:0*
T0*
_output_shapes	
:2-
+batch_normalization_7/AssignMovingAvg_3/subπ
+batch_normalization_7/AssignMovingAvg_3/mulMul/batch_normalization_7/AssignMovingAvg_3/sub:z:06batch_normalization_7/AssignMovingAvg_3/decay:output:0*
T0*
_output_shapes	
:2-
+batch_normalization_7/AssignMovingAvg_3/mul·
'batch_normalization_7/AssignMovingAvg_3AssignSubVariableOp?batch_normalization_7_assignmovingavg_3_readvariableop_resource/batch_normalization_7/AssignMovingAvg_3/mul:z:07^batch_normalization_7/AssignMovingAvg_3/ReadVariableOp*
_output_shapes
 *
dtype02)
'batch_normalization_7/AssignMovingAvg_3σ
$batch_normalization_7/ReadVariableOpReadVariableOp?batch_normalization_7_assignmovingavg_3_readvariableop_resource(^batch_normalization_7/AssignMovingAvg_3*
_output_shapes	
:*
dtype02&
$batch_normalization_7/ReadVariableOp?
*batch_normalization_7/mul_2/ReadVariableOpReadVariableOp?batch_normalization_7_assignmovingavg_3_readvariableop_resource(^batch_normalization_7/AssignMovingAvg_3*
_output_shapes	
:*
dtype02,
*batch_normalization_7/mul_2/ReadVariableOpΙ
batch_normalization_7/mul_2Mul,batch_normalization_7/ReadVariableOp:value:02batch_normalization_7/mul_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
batch_normalization_7/mul_2
batch_normalization_7/sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batch_normalization_7/sub_1/y°
batch_normalization_7/sub_1Subbatch_normalization_7/mul_2:z:0&batch_normalization_7/sub_1/y:output:0*
T0*
_output_shapes	
:2
batch_normalization_7/sub_1
batch_normalization_7/ReluRelubatch_normalization_7/sub_1:z:0*
T0*
_output_shapes	
:2
batch_normalization_7/Reluά
$batch_normalization_7/AssignNewValueAssignVariableOp-batch_normalization_7_assignnewvalue_resource(batch_normalization_7/Relu:activations:0*
_output_shapes
 *
dtype02&
$batch_normalization_7/AssignNewValue
%batch_normalization_7/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2'
%batch_normalization_7/batchnorm/add/yΫ
#batch_normalization_7/batchnorm/addAddV20batch_normalization_7/moments/Squeeze_1:output:0.batch_normalization_7/batchnorm/add/y:output:0*
T0*
_output_shapes	
:2%
#batch_normalization_7/batchnorm/add¦
%batch_normalization_7/batchnorm/RsqrtRsqrt'batch_normalization_7/batchnorm/add:z:0*
T0*
_output_shapes	
:2'
%batch_normalization_7/batchnorm/RsqrtΑ
#batch_normalization_7/batchnorm/mulMul)batch_normalization_7/batchnorm/Rsqrt:y:0batch_normalization_7/mul:z:0*
T0*
_output_shapes	
:2%
#batch_normalization_7/batchnorm/mulΞ
%batch_normalization_7/batchnorm/mul_1Muldropout_6/dropout/Mul_1:z:0'batch_normalization_7/batchnorm/mul:z:0*
T0*(
_output_shapes
:?????????2'
%batch_normalization_7/batchnorm/mul_1Τ
%batch_normalization_7/batchnorm/mul_2Mul.batch_normalization_7/moments/Squeeze:output:0'batch_normalization_7/batchnorm/mul:z:0*
T0*
_output_shapes	
:2'
%batch_normalization_7/batchnorm/mul_2Γ
#batch_normalization_7/batchnorm/subSubbatch_normalization_7/add_1:z:0)batch_normalization_7/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:2%
#batch_normalization_7/batchnorm/subή
%batch_normalization_7/batchnorm/add_1AddV2)batch_normalization_7/batchnorm/mul_1:z:0'batch_normalization_7/batchnorm/sub:z:0*
T0*(
_output_shapes
:?????????2'
%batch_normalization_7/batchnorm/add_1ͺ
dense_24/MatMul/ReadVariableOpReadVariableOp'dense_24_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype02 
dense_24/MatMul/ReadVariableOp²
dense_24/MatMulMatMul)batch_normalization_7/batchnorm/add_1:z:0&dense_24/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????2
dense_24/MatMul¨
dense_24/BiasAdd/ReadVariableOpReadVariableOp(dense_24_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02!
dense_24/BiasAdd/ReadVariableOp¦
dense_24/BiasAddBiasAdddense_24/MatMul:product:0'dense_24/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????2
dense_24/BiasAddt
dense_24/ReluReludense_24/BiasAdd:output:0*
T0*(
_output_shapes
:?????????2
dense_24/Reluw
dropout_7/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nΫΆ?2
dropout_7/dropout/Const§
dropout_7/dropout/MulMuldense_24/Relu:activations:0 dropout_7/dropout/Const:output:0*
T0*(
_output_shapes
:?????????2
dropout_7/dropout/Mul}
dropout_7/dropout/ShapeShapedense_24/Relu:activations:0*
T0*
_output_shapes
:2
dropout_7/dropout/ShapeΣ
.dropout_7/dropout/random_uniform/RandomUniformRandomUniform dropout_7/dropout/Shape:output:0*
T0*(
_output_shapes
:?????????*
dtype020
.dropout_7/dropout/random_uniform/RandomUniform
 dropout_7/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2"
 dropout_7/dropout/GreaterEqual/yη
dropout_7/dropout/GreaterEqualGreaterEqual7dropout_7/dropout/random_uniform/RandomUniform:output:0)dropout_7/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:?????????2 
dropout_7/dropout/GreaterEqual
dropout_7/dropout/CastCast"dropout_7/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:?????????2
dropout_7/dropout/Cast£
dropout_7/dropout/Mul_1Muldropout_7/dropout/Mul:z:0dropout_7/dropout/Cast:y:0*
T0*(
_output_shapes
:?????????2
dropout_7/dropout/Mul_1Ά
4batch_normalization_8/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 26
4batch_normalization_8/moments/mean/reduction_indicesη
"batch_normalization_8/moments/meanMeandropout_7/dropout/Mul_1:z:0=batch_normalization_8/moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	*
	keep_dims(2$
"batch_normalization_8/moments/meanΏ
*batch_normalization_8/moments/StopGradientStopGradient+batch_normalization_8/moments/mean:output:0*
T0*
_output_shapes
:	2,
*batch_normalization_8/moments/StopGradientό
/batch_normalization_8/moments/SquaredDifferenceSquaredDifferencedropout_7/dropout/Mul_1:z:03batch_normalization_8/moments/StopGradient:output:0*
T0*(
_output_shapes
:?????????21
/batch_normalization_8/moments/SquaredDifferenceΎ
8batch_normalization_8/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2:
8batch_normalization_8/moments/variance/reduction_indices
&batch_normalization_8/moments/varianceMean3batch_normalization_8/moments/SquaredDifference:z:0Abatch_normalization_8/moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	*
	keep_dims(2(
&batch_normalization_8/moments/varianceΓ
%batch_normalization_8/moments/SqueezeSqueeze+batch_normalization_8/moments/mean:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 2'
%batch_normalization_8/moments/SqueezeΛ
'batch_normalization_8/moments/Squeeze_1Squeeze/batch_normalization_8/moments/variance:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 2)
'batch_normalization_8/moments/Squeeze_1
batch_normalization_8/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batch_normalization_8/add/y½
batch_normalization_8/addAddV20batch_normalization_8/moments/Squeeze_1:output:0$batch_normalization_8/add/y:output:0*
T0*
_output_shapes	
:2
batch_normalization_8/add
batch_normalization_8/SqrtSqrtbatch_normalization_8/add:z:0*
T0*
_output_shapes	
:2
batch_normalization_8/Sqrt
batch_normalization_8/Sqrt_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *o:2 
batch_normalization_8/Sqrt_1/x
batch_normalization_8/Sqrt_1Sqrt'batch_normalization_8/Sqrt_1/x:output:0*
T0*
_output_shapes
: 2
batch_normalization_8/Sqrt_1Ο
,batch_normalization_8/Maximum/ReadVariableOpReadVariableOp5batch_normalization_8_maximum_readvariableop_resource*
_output_shapes	
:*
dtype02.
,batch_normalization_8/Maximum/ReadVariableOpΗ
batch_normalization_8/MaximumMaximum4batch_normalization_8/Maximum/ReadVariableOp:value:0 batch_normalization_8/Sqrt_1:y:0*
T0*
_output_shapes	
:2
batch_normalization_8/Maximum²
batch_normalization_8/truedivRealDivbatch_normalization_8/Sqrt:y:0!batch_normalization_8/Maximum:z:0*
T0*
_output_shapes	
:2
batch_normalization_8/truedivΓ
(batch_normalization_8/sub/ReadVariableOpReadVariableOp1batch_normalization_8_sub_readvariableop_resource*
_output_shapes	
:*
dtype02*
(batch_normalization_8/sub/ReadVariableOpΕ
batch_normalization_8/subSub.batch_normalization_8/moments/Squeeze:output:00batch_normalization_8/sub/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
batch_normalization_8/sub΅
batch_normalization_8/truediv_1RealDivbatch_normalization_8/sub:z:0!batch_normalization_8/Maximum:z:0*
T0*
_output_shapes	
:2!
batch_normalization_8/truediv_1δ
batch_normalization_8/IdentityIdentity.batch_normalization_8/moments/Squeeze:output:0^batch_normalization_8/truediv ^batch_normalization_8/truediv_1*
T0*
_output_shapes	
:2 
batch_normalization_8/IdentityΨ
 batch_normalization_8/Identity_1Identitybatch_normalization_8/Sqrt:y:0^batch_normalization_8/truediv ^batch_normalization_8/truediv_1*
T0*
_output_shapes	
:2"
 batch_normalization_8/Identity_1
 batch_normalization_8/Identity_2Identity'batch_normalization_8/Identity:output:0*
T0*
_output_shapes	
:2"
 batch_normalization_8/Identity_2
+batch_normalization_8/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
Χ#<2-
+batch_normalization_8/AssignMovingAvg/decayΫ
4batch_normalization_8/AssignMovingAvg/ReadVariableOpReadVariableOp1batch_normalization_8_sub_readvariableop_resource*
_output_shapes	
:*
dtype026
4batch_normalization_8/AssignMovingAvg/ReadVariableOpμ
)batch_normalization_8/AssignMovingAvg/subSub<batch_normalization_8/AssignMovingAvg/ReadVariableOp:value:0)batch_normalization_8/Identity_2:output:0*
T0*
_output_shapes	
:2+
)batch_normalization_8/AssignMovingAvg/subθ
)batch_normalization_8/AssignMovingAvg/mulMul-batch_normalization_8/AssignMovingAvg/sub:z:04batch_normalization_8/AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:2+
)batch_normalization_8/AssignMovingAvg/mulΜ
%batch_normalization_8/AssignMovingAvgAssignSubVariableOp1batch_normalization_8_sub_readvariableop_resource-batch_normalization_8/AssignMovingAvg/mul:z:05^batch_normalization_8/AssignMovingAvg/ReadVariableOp)^batch_normalization_8/sub/ReadVariableOp*
_output_shapes
 *
dtype02'
%batch_normalization_8/AssignMovingAvg‘
 batch_normalization_8/Identity_3Identity)batch_normalization_8/Identity_1:output:0*
T0*
_output_shapes	
:2"
 batch_normalization_8/Identity_3£
-batch_normalization_8/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
Χ#<2/
-batch_normalization_8/AssignMovingAvg_1/decayγ
6batch_normalization_8/AssignMovingAvg_1/ReadVariableOpReadVariableOp5batch_normalization_8_maximum_readvariableop_resource*
_output_shapes	
:*
dtype028
6batch_normalization_8/AssignMovingAvg_1/ReadVariableOpς
+batch_normalization_8/AssignMovingAvg_1/subSub>batch_normalization_8/AssignMovingAvg_1/ReadVariableOp:value:0)batch_normalization_8/Identity_3:output:0*
T0*
_output_shapes	
:2-
+batch_normalization_8/AssignMovingAvg_1/subπ
+batch_normalization_8/AssignMovingAvg_1/mulMul/batch_normalization_8/AssignMovingAvg_1/sub:z:06batch_normalization_8/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:2-
+batch_normalization_8/AssignMovingAvg_1/mulά
'batch_normalization_8/AssignMovingAvg_1AssignSubVariableOp5batch_normalization_8_maximum_readvariableop_resource/batch_normalization_8/AssignMovingAvg_1/mul:z:07^batch_normalization_8/AssignMovingAvg_1/ReadVariableOp-^batch_normalization_8/Maximum/ReadVariableOp*
_output_shapes
 *
dtype02)
'batch_normalization_8/AssignMovingAvg_1ρ
 batch_normalization_8/Identity_4Identity'batch_normalization_8/Identity:output:0&^batch_normalization_8/AssignMovingAvg(^batch_normalization_8/AssignMovingAvg_1*
T0*
_output_shapes	
:2"
 batch_normalization_8/Identity_4ϊ
 batch_normalization_8/Identity_5Identity0batch_normalization_8/moments/Squeeze_1:output:0&^batch_normalization_8/AssignMovingAvg(^batch_normalization_8/AssignMovingAvg_1*
T0*
_output_shapes	
:2"
 batch_normalization_8/Identity_5
batch_normalization_8/renorm_rStopGradient!batch_normalization_8/truediv:z:0*
T0*
_output_shapes	
:2 
batch_normalization_8/renorm_r
batch_normalization_8/renorm_dStopGradient#batch_normalization_8/truediv_1:z:0*
T0*
_output_shapes	
:2 
batch_normalization_8/renorm_dΓ
(batch_normalization_8/mul/ReadVariableOpReadVariableOp1batch_normalization_8_mul_readvariableop_resource*
_output_shapes	
:*
dtype02*
(batch_normalization_8/mul/ReadVariableOpΎ
batch_normalization_8/mulMul'batch_normalization_8/renorm_r:output:00batch_normalization_8/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
batch_normalization_8/mulΗ
*batch_normalization_8/mul_1/ReadVariableOpReadVariableOp1batch_normalization_8_mul_readvariableop_resource*
_output_shapes	
:*
dtype02,
*batch_normalization_8/mul_1/ReadVariableOpΔ
batch_normalization_8/mul_1Mul'batch_normalization_8/renorm_d:output:02batch_normalization_8/mul_1/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
batch_normalization_8/mul_1Ι
*batch_normalization_8/add_1/ReadVariableOpReadVariableOp3batch_normalization_8_add_1_readvariableop_resource*
_output_shapes	
:*
dtype02,
*batch_normalization_8/add_1/ReadVariableOpΎ
batch_normalization_8/add_1AddV2batch_normalization_8/mul_1:z:02batch_normalization_8/add_1/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
batch_normalization_8/add_1£
-batch_normalization_8/AssignMovingAvg_2/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
Χ#<2/
-batch_normalization_8/AssignMovingAvg_2/decayν
6batch_normalization_8/AssignMovingAvg_2/ReadVariableOpReadVariableOp?batch_normalization_8_assignmovingavg_2_readvariableop_resource*
_output_shapes	
:*
dtype028
6batch_normalization_8/AssignMovingAvg_2/ReadVariableOpς
+batch_normalization_8/AssignMovingAvg_2/subSub>batch_normalization_8/AssignMovingAvg_2/ReadVariableOp:value:0)batch_normalization_8/Identity_4:output:0*
T0*
_output_shapes	
:2-
+batch_normalization_8/AssignMovingAvg_2/subπ
+batch_normalization_8/AssignMovingAvg_2/mulMul/batch_normalization_8/AssignMovingAvg_2/sub:z:06batch_normalization_8/AssignMovingAvg_2/decay:output:0*
T0*
_output_shapes	
:2-
+batch_normalization_8/AssignMovingAvg_2/mul·
'batch_normalization_8/AssignMovingAvg_2AssignSubVariableOp?batch_normalization_8_assignmovingavg_2_readvariableop_resource/batch_normalization_8/AssignMovingAvg_2/mul:z:07^batch_normalization_8/AssignMovingAvg_2/ReadVariableOp*
_output_shapes
 *
dtype02)
'batch_normalization_8/AssignMovingAvg_2
batch_normalization_8/add_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batch_normalization_8/add_2/yΌ
batch_normalization_8/add_2AddV2)batch_normalization_8/Identity_5:output:0&batch_normalization_8/add_2/y:output:0*
T0*
_output_shapes	
:2
batch_normalization_8/add_2
batch_normalization_8/Sqrt_2Sqrtbatch_normalization_8/add_2:z:0*
T0*
_output_shapes	
:2
batch_normalization_8/Sqrt_2£
-batch_normalization_8/AssignMovingAvg_3/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
Χ#<2/
-batch_normalization_8/AssignMovingAvg_3/decayν
6batch_normalization_8/AssignMovingAvg_3/ReadVariableOpReadVariableOp?batch_normalization_8_assignmovingavg_3_readvariableop_resource*
_output_shapes	
:*
dtype028
6batch_normalization_8/AssignMovingAvg_3/ReadVariableOpι
+batch_normalization_8/AssignMovingAvg_3/subSub>batch_normalization_8/AssignMovingAvg_3/ReadVariableOp:value:0 batch_normalization_8/Sqrt_2:y:0*
T0*
_output_shapes	
:2-
+batch_normalization_8/AssignMovingAvg_3/subπ
+batch_normalization_8/AssignMovingAvg_3/mulMul/batch_normalization_8/AssignMovingAvg_3/sub:z:06batch_normalization_8/AssignMovingAvg_3/decay:output:0*
T0*
_output_shapes	
:2-
+batch_normalization_8/AssignMovingAvg_3/mul·
'batch_normalization_8/AssignMovingAvg_3AssignSubVariableOp?batch_normalization_8_assignmovingavg_3_readvariableop_resource/batch_normalization_8/AssignMovingAvg_3/mul:z:07^batch_normalization_8/AssignMovingAvg_3/ReadVariableOp*
_output_shapes
 *
dtype02)
'batch_normalization_8/AssignMovingAvg_3σ
$batch_normalization_8/ReadVariableOpReadVariableOp?batch_normalization_8_assignmovingavg_3_readvariableop_resource(^batch_normalization_8/AssignMovingAvg_3*
_output_shapes	
:*
dtype02&
$batch_normalization_8/ReadVariableOp?
*batch_normalization_8/mul_2/ReadVariableOpReadVariableOp?batch_normalization_8_assignmovingavg_3_readvariableop_resource(^batch_normalization_8/AssignMovingAvg_3*
_output_shapes	
:*
dtype02,
*batch_normalization_8/mul_2/ReadVariableOpΙ
batch_normalization_8/mul_2Mul,batch_normalization_8/ReadVariableOp:value:02batch_normalization_8/mul_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
batch_normalization_8/mul_2
batch_normalization_8/sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batch_normalization_8/sub_1/y°
batch_normalization_8/sub_1Subbatch_normalization_8/mul_2:z:0&batch_normalization_8/sub_1/y:output:0*
T0*
_output_shapes	
:2
batch_normalization_8/sub_1
batch_normalization_8/ReluRelubatch_normalization_8/sub_1:z:0*
T0*
_output_shapes	
:2
batch_normalization_8/Reluά
$batch_normalization_8/AssignNewValueAssignVariableOp-batch_normalization_8_assignnewvalue_resource(batch_normalization_8/Relu:activations:0*
_output_shapes
 *
dtype02&
$batch_normalization_8/AssignNewValue
%batch_normalization_8/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2'
%batch_normalization_8/batchnorm/add/yΫ
#batch_normalization_8/batchnorm/addAddV20batch_normalization_8/moments/Squeeze_1:output:0.batch_normalization_8/batchnorm/add/y:output:0*
T0*
_output_shapes	
:2%
#batch_normalization_8/batchnorm/add¦
%batch_normalization_8/batchnorm/RsqrtRsqrt'batch_normalization_8/batchnorm/add:z:0*
T0*
_output_shapes	
:2'
%batch_normalization_8/batchnorm/RsqrtΑ
#batch_normalization_8/batchnorm/mulMul)batch_normalization_8/batchnorm/Rsqrt:y:0batch_normalization_8/mul:z:0*
T0*
_output_shapes	
:2%
#batch_normalization_8/batchnorm/mulΞ
%batch_normalization_8/batchnorm/mul_1Muldropout_7/dropout/Mul_1:z:0'batch_normalization_8/batchnorm/mul:z:0*
T0*(
_output_shapes
:?????????2'
%batch_normalization_8/batchnorm/mul_1Τ
%batch_normalization_8/batchnorm/mul_2Mul.batch_normalization_8/moments/Squeeze:output:0'batch_normalization_8/batchnorm/mul:z:0*
T0*
_output_shapes	
:2'
%batch_normalization_8/batchnorm/mul_2Γ
#batch_normalization_8/batchnorm/subSubbatch_normalization_8/add_1:z:0)batch_normalization_8/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:2%
#batch_normalization_8/batchnorm/subή
%batch_normalization_8/batchnorm/add_1AddV2)batch_normalization_8/batchnorm/mul_1:z:0'batch_normalization_8/batchnorm/sub:z:0*
T0*(
_output_shapes
:?????????2'
%batch_normalization_8/batchnorm/add_1©
dense_25/MatMul/ReadVariableOpReadVariableOp'dense_25_matmul_readvariableop_resource*
_output_shapes
:	@*
dtype02 
dense_25/MatMul/ReadVariableOp±
dense_25/MatMulMatMul)batch_normalization_8/batchnorm/add_1:z:0&dense_25/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
dense_25/MatMul§
dense_25/BiasAdd/ReadVariableOpReadVariableOp(dense_25_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
dense_25/BiasAdd/ReadVariableOp₯
dense_25/BiasAddBiasAdddense_25/MatMul:product:0'dense_25/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
dense_25/BiasAdds
dense_25/ReluReludense_25/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
dense_25/Reluw
dropout_8/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nΫΆ?2
dropout_8/dropout/Const¦
dropout_8/dropout/MulMuldense_25/Relu:activations:0 dropout_8/dropout/Const:output:0*
T0*'
_output_shapes
:?????????@2
dropout_8/dropout/Mul}
dropout_8/dropout/ShapeShapedense_25/Relu:activations:0*
T0*
_output_shapes
:2
dropout_8/dropout/Shape?
.dropout_8/dropout/random_uniform/RandomUniformRandomUniform dropout_8/dropout/Shape:output:0*
T0*'
_output_shapes
:?????????@*
dtype020
.dropout_8/dropout/random_uniform/RandomUniform
 dropout_8/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2"
 dropout_8/dropout/GreaterEqual/yζ
dropout_8/dropout/GreaterEqualGreaterEqual7dropout_8/dropout/random_uniform/RandomUniform:output:0)dropout_8/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????@2 
dropout_8/dropout/GreaterEqual
dropout_8/dropout/CastCast"dropout_8/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????@2
dropout_8/dropout/Cast’
dropout_8/dropout/Mul_1Muldropout_8/dropout/Mul:z:0dropout_8/dropout/Cast:y:0*
T0*'
_output_shapes
:?????????@2
dropout_8/dropout/Mul_1Ά
4batch_normalization_9/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 26
4batch_normalization_9/moments/mean/reduction_indicesζ
"batch_normalization_9/moments/meanMeandropout_8/dropout/Mul_1:z:0=batch_normalization_9/moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:@*
	keep_dims(2$
"batch_normalization_9/moments/meanΎ
*batch_normalization_9/moments/StopGradientStopGradient+batch_normalization_9/moments/mean:output:0*
T0*
_output_shapes

:@2,
*batch_normalization_9/moments/StopGradientϋ
/batch_normalization_9/moments/SquaredDifferenceSquaredDifferencedropout_8/dropout/Mul_1:z:03batch_normalization_9/moments/StopGradient:output:0*
T0*'
_output_shapes
:?????????@21
/batch_normalization_9/moments/SquaredDifferenceΎ
8batch_normalization_9/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2:
8batch_normalization_9/moments/variance/reduction_indices
&batch_normalization_9/moments/varianceMean3batch_normalization_9/moments/SquaredDifference:z:0Abatch_normalization_9/moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:@*
	keep_dims(2(
&batch_normalization_9/moments/varianceΒ
%batch_normalization_9/moments/SqueezeSqueeze+batch_normalization_9/moments/mean:output:0*
T0*
_output_shapes
:@*
squeeze_dims
 2'
%batch_normalization_9/moments/SqueezeΚ
'batch_normalization_9/moments/Squeeze_1Squeeze/batch_normalization_9/moments/variance:output:0*
T0*
_output_shapes
:@*
squeeze_dims
 2)
'batch_normalization_9/moments/Squeeze_1
batch_normalization_9/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batch_normalization_9/add/yΌ
batch_normalization_9/addAddV20batch_normalization_9/moments/Squeeze_1:output:0$batch_normalization_9/add/y:output:0*
T0*
_output_shapes
:@2
batch_normalization_9/add
batch_normalization_9/SqrtSqrtbatch_normalization_9/add:z:0*
T0*
_output_shapes
:@2
batch_normalization_9/Sqrt
batch_normalization_9/Sqrt_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *o:2 
batch_normalization_9/Sqrt_1/x
batch_normalization_9/Sqrt_1Sqrt'batch_normalization_9/Sqrt_1/x:output:0*
T0*
_output_shapes
: 2
batch_normalization_9/Sqrt_1Ξ
,batch_normalization_9/Maximum/ReadVariableOpReadVariableOp5batch_normalization_9_maximum_readvariableop_resource*
_output_shapes
:@*
dtype02.
,batch_normalization_9/Maximum/ReadVariableOpΖ
batch_normalization_9/MaximumMaximum4batch_normalization_9/Maximum/ReadVariableOp:value:0 batch_normalization_9/Sqrt_1:y:0*
T0*
_output_shapes
:@2
batch_normalization_9/Maximum±
batch_normalization_9/truedivRealDivbatch_normalization_9/Sqrt:y:0!batch_normalization_9/Maximum:z:0*
T0*
_output_shapes
:@2
batch_normalization_9/truedivΒ
(batch_normalization_9/sub/ReadVariableOpReadVariableOp1batch_normalization_9_sub_readvariableop_resource*
_output_shapes
:@*
dtype02*
(batch_normalization_9/sub/ReadVariableOpΔ
batch_normalization_9/subSub.batch_normalization_9/moments/Squeeze:output:00batch_normalization_9/sub/ReadVariableOp:value:0*
T0*
_output_shapes
:@2
batch_normalization_9/sub΄
batch_normalization_9/truediv_1RealDivbatch_normalization_9/sub:z:0!batch_normalization_9/Maximum:z:0*
T0*
_output_shapes
:@2!
batch_normalization_9/truediv_1γ
batch_normalization_9/IdentityIdentity.batch_normalization_9/moments/Squeeze:output:0^batch_normalization_9/truediv ^batch_normalization_9/truediv_1*
T0*
_output_shapes
:@2 
batch_normalization_9/IdentityΧ
 batch_normalization_9/Identity_1Identitybatch_normalization_9/Sqrt:y:0^batch_normalization_9/truediv ^batch_normalization_9/truediv_1*
T0*
_output_shapes
:@2"
 batch_normalization_9/Identity_1
 batch_normalization_9/Identity_2Identity'batch_normalization_9/Identity:output:0*
T0*
_output_shapes
:@2"
 batch_normalization_9/Identity_2
+batch_normalization_9/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
Χ#<2-
+batch_normalization_9/AssignMovingAvg/decayΪ
4batch_normalization_9/AssignMovingAvg/ReadVariableOpReadVariableOp1batch_normalization_9_sub_readvariableop_resource*
_output_shapes
:@*
dtype026
4batch_normalization_9/AssignMovingAvg/ReadVariableOpλ
)batch_normalization_9/AssignMovingAvg/subSub<batch_normalization_9/AssignMovingAvg/ReadVariableOp:value:0)batch_normalization_9/Identity_2:output:0*
T0*
_output_shapes
:@2+
)batch_normalization_9/AssignMovingAvg/subη
)batch_normalization_9/AssignMovingAvg/mulMul-batch_normalization_9/AssignMovingAvg/sub:z:04batch_normalization_9/AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:@2+
)batch_normalization_9/AssignMovingAvg/mulΜ
%batch_normalization_9/AssignMovingAvgAssignSubVariableOp1batch_normalization_9_sub_readvariableop_resource-batch_normalization_9/AssignMovingAvg/mul:z:05^batch_normalization_9/AssignMovingAvg/ReadVariableOp)^batch_normalization_9/sub/ReadVariableOp*
_output_shapes
 *
dtype02'
%batch_normalization_9/AssignMovingAvg 
 batch_normalization_9/Identity_3Identity)batch_normalization_9/Identity_1:output:0*
T0*
_output_shapes
:@2"
 batch_normalization_9/Identity_3£
-batch_normalization_9/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
Χ#<2/
-batch_normalization_9/AssignMovingAvg_1/decayβ
6batch_normalization_9/AssignMovingAvg_1/ReadVariableOpReadVariableOp5batch_normalization_9_maximum_readvariableop_resource*
_output_shapes
:@*
dtype028
6batch_normalization_9/AssignMovingAvg_1/ReadVariableOpρ
+batch_normalization_9/AssignMovingAvg_1/subSub>batch_normalization_9/AssignMovingAvg_1/ReadVariableOp:value:0)batch_normalization_9/Identity_3:output:0*
T0*
_output_shapes
:@2-
+batch_normalization_9/AssignMovingAvg_1/subο
+batch_normalization_9/AssignMovingAvg_1/mulMul/batch_normalization_9/AssignMovingAvg_1/sub:z:06batch_normalization_9/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:@2-
+batch_normalization_9/AssignMovingAvg_1/mulά
'batch_normalization_9/AssignMovingAvg_1AssignSubVariableOp5batch_normalization_9_maximum_readvariableop_resource/batch_normalization_9/AssignMovingAvg_1/mul:z:07^batch_normalization_9/AssignMovingAvg_1/ReadVariableOp-^batch_normalization_9/Maximum/ReadVariableOp*
_output_shapes
 *
dtype02)
'batch_normalization_9/AssignMovingAvg_1π
 batch_normalization_9/Identity_4Identity'batch_normalization_9/Identity:output:0&^batch_normalization_9/AssignMovingAvg(^batch_normalization_9/AssignMovingAvg_1*
T0*
_output_shapes
:@2"
 batch_normalization_9/Identity_4ω
 batch_normalization_9/Identity_5Identity0batch_normalization_9/moments/Squeeze_1:output:0&^batch_normalization_9/AssignMovingAvg(^batch_normalization_9/AssignMovingAvg_1*
T0*
_output_shapes
:@2"
 batch_normalization_9/Identity_5
batch_normalization_9/renorm_rStopGradient!batch_normalization_9/truediv:z:0*
T0*
_output_shapes
:@2 
batch_normalization_9/renorm_r
batch_normalization_9/renorm_dStopGradient#batch_normalization_9/truediv_1:z:0*
T0*
_output_shapes
:@2 
batch_normalization_9/renorm_dΒ
(batch_normalization_9/mul/ReadVariableOpReadVariableOp1batch_normalization_9_mul_readvariableop_resource*
_output_shapes
:@*
dtype02*
(batch_normalization_9/mul/ReadVariableOp½
batch_normalization_9/mulMul'batch_normalization_9/renorm_r:output:00batch_normalization_9/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:@2
batch_normalization_9/mulΖ
*batch_normalization_9/mul_1/ReadVariableOpReadVariableOp1batch_normalization_9_mul_readvariableop_resource*
_output_shapes
:@*
dtype02,
*batch_normalization_9/mul_1/ReadVariableOpΓ
batch_normalization_9/mul_1Mul'batch_normalization_9/renorm_d:output:02batch_normalization_9/mul_1/ReadVariableOp:value:0*
T0*
_output_shapes
:@2
batch_normalization_9/mul_1Θ
*batch_normalization_9/add_1/ReadVariableOpReadVariableOp3batch_normalization_9_add_1_readvariableop_resource*
_output_shapes
:@*
dtype02,
*batch_normalization_9/add_1/ReadVariableOp½
batch_normalization_9/add_1AddV2batch_normalization_9/mul_1:z:02batch_normalization_9/add_1/ReadVariableOp:value:0*
T0*
_output_shapes
:@2
batch_normalization_9/add_1£
-batch_normalization_9/AssignMovingAvg_2/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
Χ#<2/
-batch_normalization_9/AssignMovingAvg_2/decayμ
6batch_normalization_9/AssignMovingAvg_2/ReadVariableOpReadVariableOp?batch_normalization_9_assignmovingavg_2_readvariableop_resource*
_output_shapes
:@*
dtype028
6batch_normalization_9/AssignMovingAvg_2/ReadVariableOpρ
+batch_normalization_9/AssignMovingAvg_2/subSub>batch_normalization_9/AssignMovingAvg_2/ReadVariableOp:value:0)batch_normalization_9/Identity_4:output:0*
T0*
_output_shapes
:@2-
+batch_normalization_9/AssignMovingAvg_2/subο
+batch_normalization_9/AssignMovingAvg_2/mulMul/batch_normalization_9/AssignMovingAvg_2/sub:z:06batch_normalization_9/AssignMovingAvg_2/decay:output:0*
T0*
_output_shapes
:@2-
+batch_normalization_9/AssignMovingAvg_2/mul·
'batch_normalization_9/AssignMovingAvg_2AssignSubVariableOp?batch_normalization_9_assignmovingavg_2_readvariableop_resource/batch_normalization_9/AssignMovingAvg_2/mul:z:07^batch_normalization_9/AssignMovingAvg_2/ReadVariableOp*
_output_shapes
 *
dtype02)
'batch_normalization_9/AssignMovingAvg_2
batch_normalization_9/add_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batch_normalization_9/add_2/y»
batch_normalization_9/add_2AddV2)batch_normalization_9/Identity_5:output:0&batch_normalization_9/add_2/y:output:0*
T0*
_output_shapes
:@2
batch_normalization_9/add_2
batch_normalization_9/Sqrt_2Sqrtbatch_normalization_9/add_2:z:0*
T0*
_output_shapes
:@2
batch_normalization_9/Sqrt_2£
-batch_normalization_9/AssignMovingAvg_3/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
Χ#<2/
-batch_normalization_9/AssignMovingAvg_3/decayμ
6batch_normalization_9/AssignMovingAvg_3/ReadVariableOpReadVariableOp?batch_normalization_9_assignmovingavg_3_readvariableop_resource*
_output_shapes
:@*
dtype028
6batch_normalization_9/AssignMovingAvg_3/ReadVariableOpθ
+batch_normalization_9/AssignMovingAvg_3/subSub>batch_normalization_9/AssignMovingAvg_3/ReadVariableOp:value:0 batch_normalization_9/Sqrt_2:y:0*
T0*
_output_shapes
:@2-
+batch_normalization_9/AssignMovingAvg_3/subο
+batch_normalization_9/AssignMovingAvg_3/mulMul/batch_normalization_9/AssignMovingAvg_3/sub:z:06batch_normalization_9/AssignMovingAvg_3/decay:output:0*
T0*
_output_shapes
:@2-
+batch_normalization_9/AssignMovingAvg_3/mul·
'batch_normalization_9/AssignMovingAvg_3AssignSubVariableOp?batch_normalization_9_assignmovingavg_3_readvariableop_resource/batch_normalization_9/AssignMovingAvg_3/mul:z:07^batch_normalization_9/AssignMovingAvg_3/ReadVariableOp*
_output_shapes
 *
dtype02)
'batch_normalization_9/AssignMovingAvg_3ς
$batch_normalization_9/ReadVariableOpReadVariableOp?batch_normalization_9_assignmovingavg_3_readvariableop_resource(^batch_normalization_9/AssignMovingAvg_3*
_output_shapes
:@*
dtype02&
$batch_normalization_9/ReadVariableOpώ
*batch_normalization_9/mul_2/ReadVariableOpReadVariableOp?batch_normalization_9_assignmovingavg_3_readvariableop_resource(^batch_normalization_9/AssignMovingAvg_3*
_output_shapes
:@*
dtype02,
*batch_normalization_9/mul_2/ReadVariableOpΘ
batch_normalization_9/mul_2Mul,batch_normalization_9/ReadVariableOp:value:02batch_normalization_9/mul_2/ReadVariableOp:value:0*
T0*
_output_shapes
:@2
batch_normalization_9/mul_2
batch_normalization_9/sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batch_normalization_9/sub_1/y―
batch_normalization_9/sub_1Subbatch_normalization_9/mul_2:z:0&batch_normalization_9/sub_1/y:output:0*
T0*
_output_shapes
:@2
batch_normalization_9/sub_1
batch_normalization_9/ReluRelubatch_normalization_9/sub_1:z:0*
T0*
_output_shapes
:@2
batch_normalization_9/Reluά
$batch_normalization_9/AssignNewValueAssignVariableOp-batch_normalization_9_assignnewvalue_resource(batch_normalization_9/Relu:activations:0*
_output_shapes
 *
dtype02&
$batch_normalization_9/AssignNewValue
%batch_normalization_9/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2'
%batch_normalization_9/batchnorm/add/yΪ
#batch_normalization_9/batchnorm/addAddV20batch_normalization_9/moments/Squeeze_1:output:0.batch_normalization_9/batchnorm/add/y:output:0*
T0*
_output_shapes
:@2%
#batch_normalization_9/batchnorm/add₯
%batch_normalization_9/batchnorm/RsqrtRsqrt'batch_normalization_9/batchnorm/add:z:0*
T0*
_output_shapes
:@2'
%batch_normalization_9/batchnorm/Rsqrtΐ
#batch_normalization_9/batchnorm/mulMul)batch_normalization_9/batchnorm/Rsqrt:y:0batch_normalization_9/mul:z:0*
T0*
_output_shapes
:@2%
#batch_normalization_9/batchnorm/mulΝ
%batch_normalization_9/batchnorm/mul_1Muldropout_8/dropout/Mul_1:z:0'batch_normalization_9/batchnorm/mul:z:0*
T0*'
_output_shapes
:?????????@2'
%batch_normalization_9/batchnorm/mul_1Σ
%batch_normalization_9/batchnorm/mul_2Mul.batch_normalization_9/moments/Squeeze:output:0'batch_normalization_9/batchnorm/mul:z:0*
T0*
_output_shapes
:@2'
%batch_normalization_9/batchnorm/mul_2Β
#batch_normalization_9/batchnorm/subSubbatch_normalization_9/add_1:z:0)batch_normalization_9/batchnorm/mul_2:z:0*
T0*
_output_shapes
:@2%
#batch_normalization_9/batchnorm/subέ
%batch_normalization_9/batchnorm/add_1AddV2)batch_normalization_9/batchnorm/mul_1:z:0'batch_normalization_9/batchnorm/sub:z:0*
T0*'
_output_shapes
:?????????@2'
%batch_normalization_9/batchnorm/add_1¨
dense_26/MatMul/ReadVariableOpReadVariableOp'dense_26_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype02 
dense_26/MatMul/ReadVariableOp±
dense_26/MatMulMatMul)batch_normalization_9/batchnorm/add_1:z:0&dense_26/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
dense_26/MatMul§
dense_26/BiasAdd/ReadVariableOpReadVariableOp(dense_26_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02!
dense_26/BiasAdd/ReadVariableOp₯
dense_26/BiasAddBiasAdddense_26/MatMul:product:0'dense_26/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
dense_26/BiasAdds
dense_26/ReluReludense_26/BiasAdd:output:0*
T0*'
_output_shapes
:????????? 2
dense_26/Reluw
dropout_9/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nΫΆ?2
dropout_9/dropout/Const¦
dropout_9/dropout/MulMuldense_26/Relu:activations:0 dropout_9/dropout/Const:output:0*
T0*'
_output_shapes
:????????? 2
dropout_9/dropout/Mul}
dropout_9/dropout/ShapeShapedense_26/Relu:activations:0*
T0*
_output_shapes
:2
dropout_9/dropout/Shape?
.dropout_9/dropout/random_uniform/RandomUniformRandomUniform dropout_9/dropout/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype020
.dropout_9/dropout/random_uniform/RandomUniform
 dropout_9/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2"
 dropout_9/dropout/GreaterEqual/yζ
dropout_9/dropout/GreaterEqualGreaterEqual7dropout_9/dropout/random_uniform/RandomUniform:output:0)dropout_9/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2 
dropout_9/dropout/GreaterEqual
dropout_9/dropout/CastCast"dropout_9/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
dropout_9/dropout/Cast’
dropout_9/dropout/Mul_1Muldropout_9/dropout/Mul:z:0dropout_9/dropout/Cast:y:0*
T0*'
_output_shapes
:????????? 2
dropout_9/dropout/Mul_1¨
dense_27/MatMul/ReadVariableOpReadVariableOp'dense_27_matmul_readvariableop_resource*
_output_shapes

: *
dtype02 
dense_27/MatMul/ReadVariableOp£
dense_27/MatMulMatMuldropout_9/dropout/Mul_1:z:0&dense_27/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_27/MatMul§
dense_27/BiasAdd/ReadVariableOpReadVariableOp(dense_27_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_27/BiasAdd/ReadVariableOp₯
dense_27/BiasAddBiasAdddense_27/MatMul:product:0'dense_27/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_27/BiasAdd|
dense_27/SigmoidSigmoiddense_27/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_27/Sigmoido
IdentityIdentitydense_27/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityο&
NoOpNoOp&^batch_normalization_4/AssignMovingAvg5^batch_normalization_4/AssignMovingAvg/ReadVariableOp(^batch_normalization_4/AssignMovingAvg_17^batch_normalization_4/AssignMovingAvg_1/ReadVariableOp(^batch_normalization_4/AssignMovingAvg_27^batch_normalization_4/AssignMovingAvg_2/ReadVariableOp(^batch_normalization_4/AssignMovingAvg_37^batch_normalization_4/AssignMovingAvg_3/ReadVariableOp%^batch_normalization_4/AssignNewValue-^batch_normalization_4/Maximum/ReadVariableOp%^batch_normalization_4/ReadVariableOp+^batch_normalization_4/add_1/ReadVariableOp)^batch_normalization_4/mul/ReadVariableOp+^batch_normalization_4/mul_1/ReadVariableOp+^batch_normalization_4/mul_2/ReadVariableOp)^batch_normalization_4/sub/ReadVariableOp&^batch_normalization_5/AssignMovingAvg5^batch_normalization_5/AssignMovingAvg/ReadVariableOp(^batch_normalization_5/AssignMovingAvg_17^batch_normalization_5/AssignMovingAvg_1/ReadVariableOp(^batch_normalization_5/AssignMovingAvg_27^batch_normalization_5/AssignMovingAvg_2/ReadVariableOp(^batch_normalization_5/AssignMovingAvg_37^batch_normalization_5/AssignMovingAvg_3/ReadVariableOp%^batch_normalization_5/AssignNewValue-^batch_normalization_5/Maximum/ReadVariableOp%^batch_normalization_5/ReadVariableOp+^batch_normalization_5/add_1/ReadVariableOp)^batch_normalization_5/mul/ReadVariableOp+^batch_normalization_5/mul_1/ReadVariableOp+^batch_normalization_5/mul_2/ReadVariableOp)^batch_normalization_5/sub/ReadVariableOp&^batch_normalization_6/AssignMovingAvg5^batch_normalization_6/AssignMovingAvg/ReadVariableOp(^batch_normalization_6/AssignMovingAvg_17^batch_normalization_6/AssignMovingAvg_1/ReadVariableOp(^batch_normalization_6/AssignMovingAvg_27^batch_normalization_6/AssignMovingAvg_2/ReadVariableOp(^batch_normalization_6/AssignMovingAvg_37^batch_normalization_6/AssignMovingAvg_3/ReadVariableOp%^batch_normalization_6/AssignNewValue-^batch_normalization_6/Maximum/ReadVariableOp%^batch_normalization_6/ReadVariableOp+^batch_normalization_6/add_1/ReadVariableOp)^batch_normalization_6/mul/ReadVariableOp+^batch_normalization_6/mul_1/ReadVariableOp+^batch_normalization_6/mul_2/ReadVariableOp)^batch_normalization_6/sub/ReadVariableOp&^batch_normalization_7/AssignMovingAvg5^batch_normalization_7/AssignMovingAvg/ReadVariableOp(^batch_normalization_7/AssignMovingAvg_17^batch_normalization_7/AssignMovingAvg_1/ReadVariableOp(^batch_normalization_7/AssignMovingAvg_27^batch_normalization_7/AssignMovingAvg_2/ReadVariableOp(^batch_normalization_7/AssignMovingAvg_37^batch_normalization_7/AssignMovingAvg_3/ReadVariableOp%^batch_normalization_7/AssignNewValue-^batch_normalization_7/Maximum/ReadVariableOp%^batch_normalization_7/ReadVariableOp+^batch_normalization_7/add_1/ReadVariableOp)^batch_normalization_7/mul/ReadVariableOp+^batch_normalization_7/mul_1/ReadVariableOp+^batch_normalization_7/mul_2/ReadVariableOp)^batch_normalization_7/sub/ReadVariableOp&^batch_normalization_8/AssignMovingAvg5^batch_normalization_8/AssignMovingAvg/ReadVariableOp(^batch_normalization_8/AssignMovingAvg_17^batch_normalization_8/AssignMovingAvg_1/ReadVariableOp(^batch_normalization_8/AssignMovingAvg_27^batch_normalization_8/AssignMovingAvg_2/ReadVariableOp(^batch_normalization_8/AssignMovingAvg_37^batch_normalization_8/AssignMovingAvg_3/ReadVariableOp%^batch_normalization_8/AssignNewValue-^batch_normalization_8/Maximum/ReadVariableOp%^batch_normalization_8/ReadVariableOp+^batch_normalization_8/add_1/ReadVariableOp)^batch_normalization_8/mul/ReadVariableOp+^batch_normalization_8/mul_1/ReadVariableOp+^batch_normalization_8/mul_2/ReadVariableOp)^batch_normalization_8/sub/ReadVariableOp&^batch_normalization_9/AssignMovingAvg5^batch_normalization_9/AssignMovingAvg/ReadVariableOp(^batch_normalization_9/AssignMovingAvg_17^batch_normalization_9/AssignMovingAvg_1/ReadVariableOp(^batch_normalization_9/AssignMovingAvg_27^batch_normalization_9/AssignMovingAvg_2/ReadVariableOp(^batch_normalization_9/AssignMovingAvg_37^batch_normalization_9/AssignMovingAvg_3/ReadVariableOp%^batch_normalization_9/AssignNewValue-^batch_normalization_9/Maximum/ReadVariableOp%^batch_normalization_9/ReadVariableOp+^batch_normalization_9/add_1/ReadVariableOp)^batch_normalization_9/mul/ReadVariableOp+^batch_normalization_9/mul_1/ReadVariableOp+^batch_normalization_9/mul_2/ReadVariableOp)^batch_normalization_9/sub/ReadVariableOp ^dense_21/BiasAdd/ReadVariableOp^dense_21/MatMul/ReadVariableOp ^dense_22/BiasAdd/ReadVariableOp^dense_22/MatMul/ReadVariableOp ^dense_23/BiasAdd/ReadVariableOp^dense_23/MatMul/ReadVariableOp ^dense_24/BiasAdd/ReadVariableOp^dense_24/MatMul/ReadVariableOp ^dense_25/BiasAdd/ReadVariableOp^dense_25/MatMul/ReadVariableOp ^dense_26/BiasAdd/ReadVariableOp^dense_26/MatMul/ReadVariableOp ^dense_27/BiasAdd/ReadVariableOp^dense_27/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
:?????????	: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2N
%batch_normalization_4/AssignMovingAvg%batch_normalization_4/AssignMovingAvg2l
4batch_normalization_4/AssignMovingAvg/ReadVariableOp4batch_normalization_4/AssignMovingAvg/ReadVariableOp2R
'batch_normalization_4/AssignMovingAvg_1'batch_normalization_4/AssignMovingAvg_12p
6batch_normalization_4/AssignMovingAvg_1/ReadVariableOp6batch_normalization_4/AssignMovingAvg_1/ReadVariableOp2R
'batch_normalization_4/AssignMovingAvg_2'batch_normalization_4/AssignMovingAvg_22p
6batch_normalization_4/AssignMovingAvg_2/ReadVariableOp6batch_normalization_4/AssignMovingAvg_2/ReadVariableOp2R
'batch_normalization_4/AssignMovingAvg_3'batch_normalization_4/AssignMovingAvg_32p
6batch_normalization_4/AssignMovingAvg_3/ReadVariableOp6batch_normalization_4/AssignMovingAvg_3/ReadVariableOp2L
$batch_normalization_4/AssignNewValue$batch_normalization_4/AssignNewValue2\
,batch_normalization_4/Maximum/ReadVariableOp,batch_normalization_4/Maximum/ReadVariableOp2L
$batch_normalization_4/ReadVariableOp$batch_normalization_4/ReadVariableOp2X
*batch_normalization_4/add_1/ReadVariableOp*batch_normalization_4/add_1/ReadVariableOp2T
(batch_normalization_4/mul/ReadVariableOp(batch_normalization_4/mul/ReadVariableOp2X
*batch_normalization_4/mul_1/ReadVariableOp*batch_normalization_4/mul_1/ReadVariableOp2X
*batch_normalization_4/mul_2/ReadVariableOp*batch_normalization_4/mul_2/ReadVariableOp2T
(batch_normalization_4/sub/ReadVariableOp(batch_normalization_4/sub/ReadVariableOp2N
%batch_normalization_5/AssignMovingAvg%batch_normalization_5/AssignMovingAvg2l
4batch_normalization_5/AssignMovingAvg/ReadVariableOp4batch_normalization_5/AssignMovingAvg/ReadVariableOp2R
'batch_normalization_5/AssignMovingAvg_1'batch_normalization_5/AssignMovingAvg_12p
6batch_normalization_5/AssignMovingAvg_1/ReadVariableOp6batch_normalization_5/AssignMovingAvg_1/ReadVariableOp2R
'batch_normalization_5/AssignMovingAvg_2'batch_normalization_5/AssignMovingAvg_22p
6batch_normalization_5/AssignMovingAvg_2/ReadVariableOp6batch_normalization_5/AssignMovingAvg_2/ReadVariableOp2R
'batch_normalization_5/AssignMovingAvg_3'batch_normalization_5/AssignMovingAvg_32p
6batch_normalization_5/AssignMovingAvg_3/ReadVariableOp6batch_normalization_5/AssignMovingAvg_3/ReadVariableOp2L
$batch_normalization_5/AssignNewValue$batch_normalization_5/AssignNewValue2\
,batch_normalization_5/Maximum/ReadVariableOp,batch_normalization_5/Maximum/ReadVariableOp2L
$batch_normalization_5/ReadVariableOp$batch_normalization_5/ReadVariableOp2X
*batch_normalization_5/add_1/ReadVariableOp*batch_normalization_5/add_1/ReadVariableOp2T
(batch_normalization_5/mul/ReadVariableOp(batch_normalization_5/mul/ReadVariableOp2X
*batch_normalization_5/mul_1/ReadVariableOp*batch_normalization_5/mul_1/ReadVariableOp2X
*batch_normalization_5/mul_2/ReadVariableOp*batch_normalization_5/mul_2/ReadVariableOp2T
(batch_normalization_5/sub/ReadVariableOp(batch_normalization_5/sub/ReadVariableOp2N
%batch_normalization_6/AssignMovingAvg%batch_normalization_6/AssignMovingAvg2l
4batch_normalization_6/AssignMovingAvg/ReadVariableOp4batch_normalization_6/AssignMovingAvg/ReadVariableOp2R
'batch_normalization_6/AssignMovingAvg_1'batch_normalization_6/AssignMovingAvg_12p
6batch_normalization_6/AssignMovingAvg_1/ReadVariableOp6batch_normalization_6/AssignMovingAvg_1/ReadVariableOp2R
'batch_normalization_6/AssignMovingAvg_2'batch_normalization_6/AssignMovingAvg_22p
6batch_normalization_6/AssignMovingAvg_2/ReadVariableOp6batch_normalization_6/AssignMovingAvg_2/ReadVariableOp2R
'batch_normalization_6/AssignMovingAvg_3'batch_normalization_6/AssignMovingAvg_32p
6batch_normalization_6/AssignMovingAvg_3/ReadVariableOp6batch_normalization_6/AssignMovingAvg_3/ReadVariableOp2L
$batch_normalization_6/AssignNewValue$batch_normalization_6/AssignNewValue2\
,batch_normalization_6/Maximum/ReadVariableOp,batch_normalization_6/Maximum/ReadVariableOp2L
$batch_normalization_6/ReadVariableOp$batch_normalization_6/ReadVariableOp2X
*batch_normalization_6/add_1/ReadVariableOp*batch_normalization_6/add_1/ReadVariableOp2T
(batch_normalization_6/mul/ReadVariableOp(batch_normalization_6/mul/ReadVariableOp2X
*batch_normalization_6/mul_1/ReadVariableOp*batch_normalization_6/mul_1/ReadVariableOp2X
*batch_normalization_6/mul_2/ReadVariableOp*batch_normalization_6/mul_2/ReadVariableOp2T
(batch_normalization_6/sub/ReadVariableOp(batch_normalization_6/sub/ReadVariableOp2N
%batch_normalization_7/AssignMovingAvg%batch_normalization_7/AssignMovingAvg2l
4batch_normalization_7/AssignMovingAvg/ReadVariableOp4batch_normalization_7/AssignMovingAvg/ReadVariableOp2R
'batch_normalization_7/AssignMovingAvg_1'batch_normalization_7/AssignMovingAvg_12p
6batch_normalization_7/AssignMovingAvg_1/ReadVariableOp6batch_normalization_7/AssignMovingAvg_1/ReadVariableOp2R
'batch_normalization_7/AssignMovingAvg_2'batch_normalization_7/AssignMovingAvg_22p
6batch_normalization_7/AssignMovingAvg_2/ReadVariableOp6batch_normalization_7/AssignMovingAvg_2/ReadVariableOp2R
'batch_normalization_7/AssignMovingAvg_3'batch_normalization_7/AssignMovingAvg_32p
6batch_normalization_7/AssignMovingAvg_3/ReadVariableOp6batch_normalization_7/AssignMovingAvg_3/ReadVariableOp2L
$batch_normalization_7/AssignNewValue$batch_normalization_7/AssignNewValue2\
,batch_normalization_7/Maximum/ReadVariableOp,batch_normalization_7/Maximum/ReadVariableOp2L
$batch_normalization_7/ReadVariableOp$batch_normalization_7/ReadVariableOp2X
*batch_normalization_7/add_1/ReadVariableOp*batch_normalization_7/add_1/ReadVariableOp2T
(batch_normalization_7/mul/ReadVariableOp(batch_normalization_7/mul/ReadVariableOp2X
*batch_normalization_7/mul_1/ReadVariableOp*batch_normalization_7/mul_1/ReadVariableOp2X
*batch_normalization_7/mul_2/ReadVariableOp*batch_normalization_7/mul_2/ReadVariableOp2T
(batch_normalization_7/sub/ReadVariableOp(batch_normalization_7/sub/ReadVariableOp2N
%batch_normalization_8/AssignMovingAvg%batch_normalization_8/AssignMovingAvg2l
4batch_normalization_8/AssignMovingAvg/ReadVariableOp4batch_normalization_8/AssignMovingAvg/ReadVariableOp2R
'batch_normalization_8/AssignMovingAvg_1'batch_normalization_8/AssignMovingAvg_12p
6batch_normalization_8/AssignMovingAvg_1/ReadVariableOp6batch_normalization_8/AssignMovingAvg_1/ReadVariableOp2R
'batch_normalization_8/AssignMovingAvg_2'batch_normalization_8/AssignMovingAvg_22p
6batch_normalization_8/AssignMovingAvg_2/ReadVariableOp6batch_normalization_8/AssignMovingAvg_2/ReadVariableOp2R
'batch_normalization_8/AssignMovingAvg_3'batch_normalization_8/AssignMovingAvg_32p
6batch_normalization_8/AssignMovingAvg_3/ReadVariableOp6batch_normalization_8/AssignMovingAvg_3/ReadVariableOp2L
$batch_normalization_8/AssignNewValue$batch_normalization_8/AssignNewValue2\
,batch_normalization_8/Maximum/ReadVariableOp,batch_normalization_8/Maximum/ReadVariableOp2L
$batch_normalization_8/ReadVariableOp$batch_normalization_8/ReadVariableOp2X
*batch_normalization_8/add_1/ReadVariableOp*batch_normalization_8/add_1/ReadVariableOp2T
(batch_normalization_8/mul/ReadVariableOp(batch_normalization_8/mul/ReadVariableOp2X
*batch_normalization_8/mul_1/ReadVariableOp*batch_normalization_8/mul_1/ReadVariableOp2X
*batch_normalization_8/mul_2/ReadVariableOp*batch_normalization_8/mul_2/ReadVariableOp2T
(batch_normalization_8/sub/ReadVariableOp(batch_normalization_8/sub/ReadVariableOp2N
%batch_normalization_9/AssignMovingAvg%batch_normalization_9/AssignMovingAvg2l
4batch_normalization_9/AssignMovingAvg/ReadVariableOp4batch_normalization_9/AssignMovingAvg/ReadVariableOp2R
'batch_normalization_9/AssignMovingAvg_1'batch_normalization_9/AssignMovingAvg_12p
6batch_normalization_9/AssignMovingAvg_1/ReadVariableOp6batch_normalization_9/AssignMovingAvg_1/ReadVariableOp2R
'batch_normalization_9/AssignMovingAvg_2'batch_normalization_9/AssignMovingAvg_22p
6batch_normalization_9/AssignMovingAvg_2/ReadVariableOp6batch_normalization_9/AssignMovingAvg_2/ReadVariableOp2R
'batch_normalization_9/AssignMovingAvg_3'batch_normalization_9/AssignMovingAvg_32p
6batch_normalization_9/AssignMovingAvg_3/ReadVariableOp6batch_normalization_9/AssignMovingAvg_3/ReadVariableOp2L
$batch_normalization_9/AssignNewValue$batch_normalization_9/AssignNewValue2\
,batch_normalization_9/Maximum/ReadVariableOp,batch_normalization_9/Maximum/ReadVariableOp2L
$batch_normalization_9/ReadVariableOp$batch_normalization_9/ReadVariableOp2X
*batch_normalization_9/add_1/ReadVariableOp*batch_normalization_9/add_1/ReadVariableOp2T
(batch_normalization_9/mul/ReadVariableOp(batch_normalization_9/mul/ReadVariableOp2X
*batch_normalization_9/mul_1/ReadVariableOp*batch_normalization_9/mul_1/ReadVariableOp2X
*batch_normalization_9/mul_2/ReadVariableOp*batch_normalization_9/mul_2/ReadVariableOp2T
(batch_normalization_9/sub/ReadVariableOp(batch_normalization_9/sub/ReadVariableOp2B
dense_21/BiasAdd/ReadVariableOpdense_21/BiasAdd/ReadVariableOp2@
dense_21/MatMul/ReadVariableOpdense_21/MatMul/ReadVariableOp2B
dense_22/BiasAdd/ReadVariableOpdense_22/BiasAdd/ReadVariableOp2@
dense_22/MatMul/ReadVariableOpdense_22/MatMul/ReadVariableOp2B
dense_23/BiasAdd/ReadVariableOpdense_23/BiasAdd/ReadVariableOp2@
dense_23/MatMul/ReadVariableOpdense_23/MatMul/ReadVariableOp2B
dense_24/BiasAdd/ReadVariableOpdense_24/BiasAdd/ReadVariableOp2@
dense_24/MatMul/ReadVariableOpdense_24/MatMul/ReadVariableOp2B
dense_25/BiasAdd/ReadVariableOpdense_25/BiasAdd/ReadVariableOp2@
dense_25/MatMul/ReadVariableOpdense_25/MatMul/ReadVariableOp2B
dense_26/BiasAdd/ReadVariableOpdense_26/BiasAdd/ReadVariableOp2@
dense_26/MatMul/ReadVariableOpdense_26/MatMul/ReadVariableOp2B
dense_27/BiasAdd/ReadVariableOpdense_27/BiasAdd/ReadVariableOp2@
dense_27/MatMul/ReadVariableOpdense_27/MatMul/ReadVariableOp:O K
'
_output_shapes
:?????????	
 
_user_specified_nameinputs

ξ
-__inference_sequential_8_layer_call_fn_598976
input_3
unknown:	
	unknown_0:	
	unknown_1:	
	unknown_2:	
	unknown_3:		
	unknown_4:	
	unknown_5:	
	unknown_6:	
	unknown_7:	
	unknown_8:	
	unknown_9:


unknown_10:	

unknown_11:	

unknown_12:	

unknown_13:	

unknown_14:	

unknown_15:


unknown_16:	

unknown_17:	

unknown_18:	

unknown_19:	

unknown_20:	

unknown_21:


unknown_22:	

unknown_23:	

unknown_24:	

unknown_25:	

unknown_26:	

unknown_27:	@

unknown_28:@

unknown_29:@

unknown_30:@

unknown_31:@

unknown_32:@

unknown_33:@ 

unknown_34: 

unknown_35: 

unknown_36:
identity’StatefulPartitionedCallν
StatefulPartitionedCallStatefulPartitionedCallinput_3unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36*2
Tin+
)2'*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*H
_read_only_resource_inputs*
(&	
 !"#$%&*2
config_proto" 

CPU

GPU2*0,1J 8 *Q
fLRJ
H__inference_sequential_8_layer_call_and_return_conditional_losses_5988972
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*r
_input_shapesa
_:?????????	: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:?????????	
!
_user_specified_name	input_3
δ
Υ
6__inference_batch_normalization_7_layer_call_fn_601487

inputs
unknown:	
	unknown_0:	
	unknown_1:	
	unknown_2:	
identity’StatefulPartitionedCall‘
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????*&
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8 *Z
fURS
Q__inference_batch_normalization_7_layer_call_and_return_conditional_losses_5979182
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:?????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:?????????
 
_user_specified_nameinputs
Η
F
*__inference_dropout_4_layer_call_fn_601020

inputs
identityΙ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8 *N
fIRG
E__inference_dropout_4_layer_call_and_return_conditional_losses_5987122
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:?????????:P L
(
_output_shapes
:?????????
 
_user_specified_nameinputs

φ
D__inference_dense_25_layer_call_and_return_conditional_losses_598833

inputs1
matmul_readvariableop_resource:	@-
biasadd_readvariableop_resource:@
identity’BiasAdd/ReadVariableOp’MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
Relum
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:?????????@2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:?????????
 
_user_specified_nameinputs

χ
D__inference_dense_21_layer_call_and_return_conditional_losses_600989

inputs1
matmul_readvariableop_resource:		.
biasadd_readvariableop_resource:	
identity’BiasAdd/ReadVariableOp’MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:		*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:?????????2
Relun
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:?????????2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????	: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????	
 
_user_specified_nameinputs

ψ
D__inference_dense_23_layer_call_and_return_conditional_losses_601341

inputs2
matmul_readvariableop_resource:
.
biasadd_readvariableop_resource:	
identity’BiasAdd/ReadVariableOp’MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:?????????2
Relun
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:?????????2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:?????????
 
_user_specified_nameinputs
έY
Ώ
Q__inference_batch_normalization_9_layer_call_and_return_conditional_losses_598541

inputs-
maximum_readvariableop_resource:@)
sub_readvariableop_resource:@)
mul_readvariableop_resource:@+
add_1_readvariableop_resource:@7
)assignmovingavg_2_readvariableop_resource:@7
)assignmovingavg_3_readvariableop_resource:@%
assignnewvalue_resource:@

identity_6’AssignMovingAvg’AssignMovingAvg/ReadVariableOp’AssignMovingAvg_1’ AssignMovingAvg_1/ReadVariableOp’AssignMovingAvg_2’ AssignMovingAvg_2/ReadVariableOp’AssignMovingAvg_3’ AssignMovingAvg_3/ReadVariableOp’AssignNewValue’Maximum/ReadVariableOp’ReadVariableOp’add_1/ReadVariableOp’mul/ReadVariableOp’mul_1/ReadVariableOp’mul_2/ReadVariableOp’sub/ReadVariableOp
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2 
moments/mean/reduction_indices
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:@*
	keep_dims(2
moments/mean|
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes

:@2
moments/StopGradient€
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*'
_output_shapes
:?????????@2
moments/SquaredDifference
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2$
"moments/variance/reduction_indices²
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:@*
	keep_dims(2
moments/variance
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:@*
squeeze_dims
 2
moments/Squeeze
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:@*
squeeze_dims
 2
moments/Squeeze_1S
add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
add/yd
addAddV2moments/Squeeze_1:output:0add/y:output:0*
T0*
_output_shapes
:@2
addB
SqrtSqrtadd:z:0*
T0*
_output_shapes
:@2
SqrtY
Sqrt_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *o:2

Sqrt_1/xL
Sqrt_1SqrtSqrt_1/x:output:0*
T0*
_output_shapes
: 2
Sqrt_1
Maximum/ReadVariableOpReadVariableOpmaximum_readvariableop_resource*
_output_shapes
:@*
dtype02
Maximum/ReadVariableOpn
MaximumMaximumMaximum/ReadVariableOp:value:0
Sqrt_1:y:0*
T0*
_output_shapes
:@2	
MaximumY
truedivRealDivSqrt:y:0Maximum:z:0*
T0*
_output_shapes
:@2	
truediv
sub/ReadVariableOpReadVariableOpsub_readvariableop_resource*
_output_shapes
:@*
dtype02
sub/ReadVariableOpl
subSubmoments/Squeeze:output:0sub/ReadVariableOp:value:0*
T0*
_output_shapes
:@2
sub\
	truediv_1RealDivsub:z:0Maximum:z:0*
T0*
_output_shapes
:@2
	truediv_1u
IdentityIdentitymoments/Squeeze:output:0^truediv
^truediv_1*
T0*
_output_shapes
:@2

Identityi

Identity_1IdentitySqrt:y:0^truediv
^truediv_1*
T0*
_output_shapes
:@2

Identity_1\

Identity_2IdentityIdentity:output:0*
T0*
_output_shapes
:@2

Identity_2s
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
Χ#<2
AssignMovingAvg/decay
AssignMovingAvg/ReadVariableOpReadVariableOpsub_readvariableop_resource*
_output_shapes
:@*
dtype02 
AssignMovingAvg/ReadVariableOp
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0Identity_2:output:0*
T0*
_output_shapes
:@2
AssignMovingAvg/sub
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:@2
AssignMovingAvg/mulΘ
AssignMovingAvgAssignSubVariableOpsub_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp^sub/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg^

Identity_3IdentityIdentity_1:output:0*
T0*
_output_shapes
:@2

Identity_3w
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
Χ#<2
AssignMovingAvg_1/decay 
 AssignMovingAvg_1/ReadVariableOpReadVariableOpmaximum_readvariableop_resource*
_output_shapes
:@*
dtype02"
 AssignMovingAvg_1/ReadVariableOp
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0Identity_3:output:0*
T0*
_output_shapes
:@2
AssignMovingAvg_1/sub
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:@2
AssignMovingAvg_1/mulΨ
AssignMovingAvg_1AssignSubVariableOpmaximum_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp^Maximum/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_1

Identity_4IdentityIdentity:output:0^AssignMovingAvg^AssignMovingAvg_1*
T0*
_output_shapes
:@2

Identity_4

Identity_5Identitymoments/Squeeze_1:output:0^AssignMovingAvg^AssignMovingAvg_1*
T0*
_output_shapes
:@2

Identity_5V
renorm_rStopGradienttruediv:z:0*
T0*
_output_shapes
:@2

renorm_rX
renorm_dStopGradienttruediv_1:z:0*
T0*
_output_shapes
:@2

renorm_d
mul/ReadVariableOpReadVariableOpmul_readvariableop_resource*
_output_shapes
:@*
dtype02
mul/ReadVariableOpe
mulMulrenorm_r:output:0mul/ReadVariableOp:value:0*
T0*
_output_shapes
:@2
mul
mul_1/ReadVariableOpReadVariableOpmul_readvariableop_resource*
_output_shapes
:@*
dtype02
mul_1/ReadVariableOpk
mul_1Mulrenorm_d:output:0mul_1/ReadVariableOp:value:0*
T0*
_output_shapes
:@2
mul_1
add_1/ReadVariableOpReadVariableOpadd_1_readvariableop_resource*
_output_shapes
:@*
dtype02
add_1/ReadVariableOpe
add_1AddV2	mul_1:z:0add_1/ReadVariableOp:value:0*
T0*
_output_shapes
:@2
add_1w
AssignMovingAvg_2/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
Χ#<2
AssignMovingAvg_2/decayͺ
 AssignMovingAvg_2/ReadVariableOpReadVariableOp)assignmovingavg_2_readvariableop_resource*
_output_shapes
:@*
dtype02"
 AssignMovingAvg_2/ReadVariableOp
AssignMovingAvg_2/subSub(AssignMovingAvg_2/ReadVariableOp:value:0Identity_4:output:0*
T0*
_output_shapes
:@2
AssignMovingAvg_2/sub
AssignMovingAvg_2/mulMulAssignMovingAvg_2/sub:z:0 AssignMovingAvg_2/decay:output:0*
T0*
_output_shapes
:@2
AssignMovingAvg_2/mulΙ
AssignMovingAvg_2AssignSubVariableOp)assignmovingavg_2_readvariableop_resourceAssignMovingAvg_2/mul:z:0!^AssignMovingAvg_2/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_2W
add_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2	
add_2/yc
add_2AddV2Identity_5:output:0add_2/y:output:0*
T0*
_output_shapes
:@2
add_2H
Sqrt_2Sqrt	add_2:z:0*
T0*
_output_shapes
:@2
Sqrt_2w
AssignMovingAvg_3/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
Χ#<2
AssignMovingAvg_3/decayͺ
 AssignMovingAvg_3/ReadVariableOpReadVariableOp)assignmovingavg_3_readvariableop_resource*
_output_shapes
:@*
dtype02"
 AssignMovingAvg_3/ReadVariableOp
AssignMovingAvg_3/subSub(AssignMovingAvg_3/ReadVariableOp:value:0
Sqrt_2:y:0*
T0*
_output_shapes
:@2
AssignMovingAvg_3/sub
AssignMovingAvg_3/mulMulAssignMovingAvg_3/sub:z:0 AssignMovingAvg_3/decay:output:0*
T0*
_output_shapes
:@2
AssignMovingAvg_3/mulΙ
AssignMovingAvg_3AssignSubVariableOp)assignmovingavg_3_readvariableop_resourceAssignMovingAvg_3/mul:z:0!^AssignMovingAvg_3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_3
ReadVariableOpReadVariableOp)assignmovingavg_3_readvariableop_resource^AssignMovingAvg_3*
_output_shapes
:@*
dtype02
ReadVariableOp¦
mul_2/ReadVariableOpReadVariableOp)assignmovingavg_3_readvariableop_resource^AssignMovingAvg_3*
_output_shapes
:@*
dtype02
mul_2/ReadVariableOpp
mul_2MulReadVariableOp:value:0mul_2/ReadVariableOp:value:0*
T0*
_output_shapes
:@2
mul_2W
sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2	
sub_1/yW
sub_1Sub	mul_2:z:0sub_1/y:output:0*
T0*
_output_shapes
:@2
sub_1D
ReluRelu	sub_1:z:0*
T0*
_output_shapes
:@2
Relu
AssignNewValueAssignVariableOpassignnewvalue_resourceRelu:activations:0*
_output_shapes
 *
dtype02
AssignNewValueg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batchnorm/add/y
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:@2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:@2
batchnorm/Rsqrth
batchnorm/mulMulbatchnorm/Rsqrt:y:0mul:z:0*
T0*
_output_shapes
:@2
batchnorm/mulv
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:?????????@2
batchnorm/mul_1{
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:@2
batchnorm/mul_2j
batchnorm/subSub	add_1:z:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:@2
batchnorm/sub
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:?????????@2
batchnorm/add_1r

Identity_6Identitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:?????????@2

Identity_6Π
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^AssignMovingAvg_2!^AssignMovingAvg_2/ReadVariableOp^AssignMovingAvg_3!^AssignMovingAvg_3/ReadVariableOp^AssignNewValue^Maximum/ReadVariableOp^ReadVariableOp^add_1/ReadVariableOp^mul/ReadVariableOp^mul_1/ReadVariableOp^mul_2/ReadVariableOp^sub/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"!

identity_6Identity_6:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????@: : : : : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp2&
AssignMovingAvg_2AssignMovingAvg_22D
 AssignMovingAvg_2/ReadVariableOp AssignMovingAvg_2/ReadVariableOp2&
AssignMovingAvg_3AssignMovingAvg_32D
 AssignMovingAvg_3/ReadVariableOp AssignMovingAvg_3/ReadVariableOp2 
AssignNewValueAssignNewValue20
Maximum/ReadVariableOpMaximum/ReadVariableOp2 
ReadVariableOpReadVariableOp2,
add_1/ReadVariableOpadd_1/ReadVariableOp2(
mul/ReadVariableOpmul/ReadVariableOp2,
mul_1/ReadVariableOpmul_1/ReadVariableOp2,
mul_2/ReadVariableOpmul_2/ReadVariableOp2(
sub/ReadVariableOpsub/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs

υ
D__inference_dense_27_layer_call_and_return_conditional_losses_598890

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource:
identity’BiasAdd/ReadVariableOp’MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAdda
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:?????????2	
Sigmoidf
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
©
c
*__inference_dropout_7_layer_call_fn_601553

inputs
identity’StatefulPartitionedCallα
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8 *N
fIRG
E__inference_dropout_7_layer_call_and_return_conditional_losses_5990722
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:?????????22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:?????????
 
_user_specified_nameinputs
δ
Υ
6__inference_batch_normalization_5_layer_call_fn_601135

inputs
unknown:	
	unknown_0:	
	unknown_1:	
	unknown_2:	
identity’StatefulPartitionedCall‘
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????*&
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8 *Z
fURS
Q__inference_batch_normalization_5_layer_call_and_return_conditional_losses_5973982
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:?????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:?????????
 
_user_specified_nameinputs

΄
Q__inference_batch_normalization_7_layer_call_and_return_conditional_losses_597918

inputs0
!batchnorm_readvariableop_resource:	4
%batchnorm_mul_readvariableop_resource:	2
#batchnorm_readvariableop_1_resource:	2
#batchnorm_readvariableop_2_resource:	
identity’batchnorm/ReadVariableOp’batchnorm/ReadVariableOp_1’batchnorm/ReadVariableOp_2’batchnorm/mul/ReadVariableOp
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batchnorm/add/y
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:2
batchnorm/Rsqrt
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype02
batchnorm/mul/ReadVariableOp
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
batchnorm/mulw
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:?????????2
batchnorm/mul_1
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOp_1
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:2
batchnorm/mul_2
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOp_2
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:2
batchnorm/sub
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:?????????2
batchnorm/add_1o
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:?????????2

IdentityΒ
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:?????????: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:?????????
 
_user_specified_nameinputs
Α{

H__inference_sequential_8_layer_call_and_return_conditional_losses_599402

inputs*
batch_normalization_4_599270:	*
batch_normalization_4_599272:	*
batch_normalization_4_599274:	*
batch_normalization_4_599276:	*
batch_normalization_4_599278:	*
batch_normalization_4_599280:	*
batch_normalization_4_599282:	"
dense_21_599285:		
dense_21_599287:	+
batch_normalization_5_599291:	+
batch_normalization_5_599293:	+
batch_normalization_5_599295:	+
batch_normalization_5_599297:	+
batch_normalization_5_599299:	+
batch_normalization_5_599301:	+
batch_normalization_5_599303:	#
dense_22_599306:

dense_22_599308:	+
batch_normalization_6_599312:	+
batch_normalization_6_599314:	+
batch_normalization_6_599316:	+
batch_normalization_6_599318:	+
batch_normalization_6_599320:	+
batch_normalization_6_599322:	+
batch_normalization_6_599324:	#
dense_23_599327:

dense_23_599329:	+
batch_normalization_7_599333:	+
batch_normalization_7_599335:	+
batch_normalization_7_599337:	+
batch_normalization_7_599339:	+
batch_normalization_7_599341:	+
batch_normalization_7_599343:	+
batch_normalization_7_599345:	#
dense_24_599348:

dense_24_599350:	+
batch_normalization_8_599354:	+
batch_normalization_8_599356:	+
batch_normalization_8_599358:	+
batch_normalization_8_599360:	+
batch_normalization_8_599362:	+
batch_normalization_8_599364:	+
batch_normalization_8_599366:	"
dense_25_599369:	@
dense_25_599371:@*
batch_normalization_9_599375:@*
batch_normalization_9_599377:@*
batch_normalization_9_599379:@*
batch_normalization_9_599381:@*
batch_normalization_9_599383:@*
batch_normalization_9_599385:@*
batch_normalization_9_599387:@!
dense_26_599390:@ 
dense_26_599392: !
dense_27_599396: 
dense_27_599398:
identity’-batch_normalization_4/StatefulPartitionedCall’-batch_normalization_5/StatefulPartitionedCall’-batch_normalization_6/StatefulPartitionedCall’-batch_normalization_7/StatefulPartitionedCall’-batch_normalization_8/StatefulPartitionedCall’-batch_normalization_9/StatefulPartitionedCall’ dense_21/StatefulPartitionedCall’ dense_22/StatefulPartitionedCall’ dense_23/StatefulPartitionedCall’ dense_24/StatefulPartitionedCall’ dense_25/StatefulPartitionedCall’ dense_26/StatefulPartitionedCall’ dense_27/StatefulPartitionedCall’!dropout_4/StatefulPartitionedCall’!dropout_5/StatefulPartitionedCall’!dropout_6/StatefulPartitionedCall’!dropout_7/StatefulPartitionedCall’!dropout_8/StatefulPartitionedCall’!dropout_9/StatefulPartitionedCallυ
-batch_normalization_4/StatefulPartitionedCallStatefulPartitionedCallinputsbatch_normalization_4_599270batch_normalization_4_599272batch_normalization_4_599274batch_normalization_4_599276batch_normalization_4_599278batch_normalization_4_599280batch_normalization_4_599282*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????	*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8 *Z
fURS
Q__inference_batch_normalization_4_layer_call_and_return_conditional_losses_5972412/
-batch_normalization_4/StatefulPartitionedCallΚ
 dense_21/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_4/StatefulPartitionedCall:output:0dense_21_599285dense_21_599287*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8 *M
fHRF
D__inference_dense_21_layer_call_and_return_conditional_losses_5987012"
 dense_21/StatefulPartitionedCall
!dropout_4/StatefulPartitionedCallStatefulPartitionedCall)dense_21/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8 *N
fIRG
E__inference_dropout_4_layer_call_and_return_conditional_losses_5991712#
!dropout_4/StatefulPartitionedCall
-batch_normalization_5/StatefulPartitionedCallStatefulPartitionedCall*dropout_4/StatefulPartitionedCall:output:0batch_normalization_5_599291batch_normalization_5_599293batch_normalization_5_599295batch_normalization_5_599297batch_normalization_5_599299batch_normalization_5_599301batch_normalization_5_599303*
Tin

2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8 *Z
fURS
Q__inference_batch_normalization_5_layer_call_and_return_conditional_losses_5975012/
-batch_normalization_5/StatefulPartitionedCallΚ
 dense_22/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_5/StatefulPartitionedCall:output:0dense_22_599306dense_22_599308*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8 *M
fHRF
D__inference_dense_22_layer_call_and_return_conditional_losses_5987342"
 dense_22/StatefulPartitionedCallΌ
!dropout_5/StatefulPartitionedCallStatefulPartitionedCall)dense_22/StatefulPartitionedCall:output:0"^dropout_4/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8 *N
fIRG
E__inference_dropout_5_layer_call_and_return_conditional_losses_5991382#
!dropout_5/StatefulPartitionedCall
-batch_normalization_6/StatefulPartitionedCallStatefulPartitionedCall*dropout_5/StatefulPartitionedCall:output:0batch_normalization_6_599312batch_normalization_6_599314batch_normalization_6_599316batch_normalization_6_599318batch_normalization_6_599320batch_normalization_6_599322batch_normalization_6_599324*
Tin

2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8 *Z
fURS
Q__inference_batch_normalization_6_layer_call_and_return_conditional_losses_5977612/
-batch_normalization_6/StatefulPartitionedCallΚ
 dense_23/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_6/StatefulPartitionedCall:output:0dense_23_599327dense_23_599329*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8 *M
fHRF
D__inference_dense_23_layer_call_and_return_conditional_losses_5987672"
 dense_23/StatefulPartitionedCallΌ
!dropout_6/StatefulPartitionedCallStatefulPartitionedCall)dense_23/StatefulPartitionedCall:output:0"^dropout_5/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8 *N
fIRG
E__inference_dropout_6_layer_call_and_return_conditional_losses_5991052#
!dropout_6/StatefulPartitionedCall
-batch_normalization_7/StatefulPartitionedCallStatefulPartitionedCall*dropout_6/StatefulPartitionedCall:output:0batch_normalization_7_599333batch_normalization_7_599335batch_normalization_7_599337batch_normalization_7_599339batch_normalization_7_599341batch_normalization_7_599343batch_normalization_7_599345*
Tin

2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8 *Z
fURS
Q__inference_batch_normalization_7_layer_call_and_return_conditional_losses_5980212/
-batch_normalization_7/StatefulPartitionedCallΚ
 dense_24/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_7/StatefulPartitionedCall:output:0dense_24_599348dense_24_599350*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8 *M
fHRF
D__inference_dense_24_layer_call_and_return_conditional_losses_5988002"
 dense_24/StatefulPartitionedCallΌ
!dropout_7/StatefulPartitionedCallStatefulPartitionedCall)dense_24/StatefulPartitionedCall:output:0"^dropout_6/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8 *N
fIRG
E__inference_dropout_7_layer_call_and_return_conditional_losses_5990722#
!dropout_7/StatefulPartitionedCall
-batch_normalization_8/StatefulPartitionedCallStatefulPartitionedCall*dropout_7/StatefulPartitionedCall:output:0batch_normalization_8_599354batch_normalization_8_599356batch_normalization_8_599358batch_normalization_8_599360batch_normalization_8_599362batch_normalization_8_599364batch_normalization_8_599366*
Tin

2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8 *Z
fURS
Q__inference_batch_normalization_8_layer_call_and_return_conditional_losses_5982812/
-batch_normalization_8/StatefulPartitionedCallΙ
 dense_25/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_8/StatefulPartitionedCall:output:0dense_25_599369dense_25_599371*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8 *M
fHRF
D__inference_dense_25_layer_call_and_return_conditional_losses_5988332"
 dense_25/StatefulPartitionedCall»
!dropout_8/StatefulPartitionedCallStatefulPartitionedCall)dense_25/StatefulPartitionedCall:output:0"^dropout_7/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8 *N
fIRG
E__inference_dropout_8_layer_call_and_return_conditional_losses_5990392#
!dropout_8/StatefulPartitionedCall
-batch_normalization_9/StatefulPartitionedCallStatefulPartitionedCall*dropout_8/StatefulPartitionedCall:output:0batch_normalization_9_599375batch_normalization_9_599377batch_normalization_9_599379batch_normalization_9_599381batch_normalization_9_599383batch_normalization_9_599385batch_normalization_9_599387*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8 *Z
fURS
Q__inference_batch_normalization_9_layer_call_and_return_conditional_losses_5985412/
-batch_normalization_9/StatefulPartitionedCallΙ
 dense_26/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_9/StatefulPartitionedCall:output:0dense_26_599390dense_26_599392*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8 *M
fHRF
D__inference_dense_26_layer_call_and_return_conditional_losses_5988662"
 dense_26/StatefulPartitionedCall»
!dropout_9/StatefulPartitionedCallStatefulPartitionedCall)dense_26/StatefulPartitionedCall:output:0"^dropout_8/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8 *N
fIRG
E__inference_dropout_9_layer_call_and_return_conditional_losses_5990062#
!dropout_9/StatefulPartitionedCall½
 dense_27/StatefulPartitionedCallStatefulPartitionedCall*dropout_9/StatefulPartitionedCall:output:0dense_27_599396dense_27_599398*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8 *M
fHRF
D__inference_dense_27_layer_call_and_return_conditional_losses_5988902"
 dense_27/StatefulPartitionedCall
IdentityIdentity)dense_27/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity»
NoOpNoOp.^batch_normalization_4/StatefulPartitionedCall.^batch_normalization_5/StatefulPartitionedCall.^batch_normalization_6/StatefulPartitionedCall.^batch_normalization_7/StatefulPartitionedCall.^batch_normalization_8/StatefulPartitionedCall.^batch_normalization_9/StatefulPartitionedCall!^dense_21/StatefulPartitionedCall!^dense_22/StatefulPartitionedCall!^dense_23/StatefulPartitionedCall!^dense_24/StatefulPartitionedCall!^dense_25/StatefulPartitionedCall!^dense_26/StatefulPartitionedCall!^dense_27/StatefulPartitionedCall"^dropout_4/StatefulPartitionedCall"^dropout_5/StatefulPartitionedCall"^dropout_6/StatefulPartitionedCall"^dropout_7/StatefulPartitionedCall"^dropout_8/StatefulPartitionedCall"^dropout_9/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
:?????????	: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2^
-batch_normalization_4/StatefulPartitionedCall-batch_normalization_4/StatefulPartitionedCall2^
-batch_normalization_5/StatefulPartitionedCall-batch_normalization_5/StatefulPartitionedCall2^
-batch_normalization_6/StatefulPartitionedCall-batch_normalization_6/StatefulPartitionedCall2^
-batch_normalization_7/StatefulPartitionedCall-batch_normalization_7/StatefulPartitionedCall2^
-batch_normalization_8/StatefulPartitionedCall-batch_normalization_8/StatefulPartitionedCall2^
-batch_normalization_9/StatefulPartitionedCall-batch_normalization_9/StatefulPartitionedCall2D
 dense_21/StatefulPartitionedCall dense_21/StatefulPartitionedCall2D
 dense_22/StatefulPartitionedCall dense_22/StatefulPartitionedCall2D
 dense_23/StatefulPartitionedCall dense_23/StatefulPartitionedCall2D
 dense_24/StatefulPartitionedCall dense_24/StatefulPartitionedCall2D
 dense_25/StatefulPartitionedCall dense_25/StatefulPartitionedCall2D
 dense_26/StatefulPartitionedCall dense_26/StatefulPartitionedCall2D
 dense_27/StatefulPartitionedCall dense_27/StatefulPartitionedCall2F
!dropout_4/StatefulPartitionedCall!dropout_4/StatefulPartitionedCall2F
!dropout_5/StatefulPartitionedCall!dropout_5/StatefulPartitionedCall2F
!dropout_6/StatefulPartitionedCall!dropout_6/StatefulPartitionedCall2F
!dropout_7/StatefulPartitionedCall!dropout_7/StatefulPartitionedCall2F
!dropout_8/StatefulPartitionedCall!dropout_8/StatefulPartitionedCall2F
!dropout_9/StatefulPartitionedCall!dropout_9/StatefulPartitionedCall:O K
'
_output_shapes
:?????????	
 
_user_specified_nameinputs"¨L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*«
serving_default
;
input_30
serving_default_input_3:0?????????	<
dense_270
StatefulPartitionedCall:0?????????tensorflow/serving/predict:ς?
Ύ
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer-2
layer_with_weights-2
layer-3
layer_with_weights-3
layer-4
layer-5
layer_with_weights-4
layer-6
layer_with_weights-5
layer-7
	layer-8

layer_with_weights-6

layer-9
layer_with_weights-7
layer-10
layer-11
layer_with_weights-8
layer-12
layer_with_weights-9
layer-13
layer-14
layer_with_weights-10
layer-15
layer_with_weights-11
layer-16
layer-17
layer_with_weights-12
layer-18
	optimizer
regularization_losses
	variables
trainable_variables
	keras_api

signatures
+?&call_and_return_all_conditional_losses
Σ_default_save_signature
Τ__call__"
_tf_keras_sequential
Έ
renorm_clipping
axis
	gamma
beta
moving_mean
moving_variance
 moving_stddev
!renorm_mean
"renorm_stddev
#regularization_losses
$	variables
%trainable_variables
&	keras_api
+Υ&call_and_return_all_conditional_losses
Φ__call__"
_tf_keras_layer
½

'kernel
(bias
)regularization_losses
*	variables
+trainable_variables
,	keras_api
+Χ&call_and_return_all_conditional_losses
Ψ__call__"
_tf_keras_layer
§
-regularization_losses
.	variables
/trainable_variables
0	keras_api
+Ω&call_and_return_all_conditional_losses
Ϊ__call__"
_tf_keras_layer
Έ
1renorm_clipping
2axis
	3gamma
4beta
5moving_mean
6moving_variance
7moving_stddev
8renorm_mean
9renorm_stddev
:regularization_losses
;	variables
<trainable_variables
=	keras_api
+Ϋ&call_and_return_all_conditional_losses
ά__call__"
_tf_keras_layer
½

>kernel
?bias
@regularization_losses
A	variables
Btrainable_variables
C	keras_api
+έ&call_and_return_all_conditional_losses
ή__call__"
_tf_keras_layer
§
Dregularization_losses
E	variables
Ftrainable_variables
G	keras_api
+ί&call_and_return_all_conditional_losses
ΰ__call__"
_tf_keras_layer
Έ
Hrenorm_clipping
Iaxis
	Jgamma
Kbeta
Lmoving_mean
Mmoving_variance
Nmoving_stddev
Orenorm_mean
Prenorm_stddev
Qregularization_losses
R	variables
Strainable_variables
T	keras_api
+α&call_and_return_all_conditional_losses
β__call__"
_tf_keras_layer
½

Ukernel
Vbias
Wregularization_losses
X	variables
Ytrainable_variables
Z	keras_api
+γ&call_and_return_all_conditional_losses
δ__call__"
_tf_keras_layer
§
[regularization_losses
\	variables
]trainable_variables
^	keras_api
+ε&call_and_return_all_conditional_losses
ζ__call__"
_tf_keras_layer
Έ
_renorm_clipping
`axis
	agamma
bbeta
cmoving_mean
dmoving_variance
emoving_stddev
frenorm_mean
grenorm_stddev
hregularization_losses
i	variables
jtrainable_variables
k	keras_api
+η&call_and_return_all_conditional_losses
θ__call__"
_tf_keras_layer
½

lkernel
mbias
nregularization_losses
o	variables
ptrainable_variables
q	keras_api
+ι&call_and_return_all_conditional_losses
κ__call__"
_tf_keras_layer
§
rregularization_losses
s	variables
ttrainable_variables
u	keras_api
+λ&call_and_return_all_conditional_losses
μ__call__"
_tf_keras_layer
»
vrenorm_clipping
waxis
	xgamma
ybeta
zmoving_mean
{moving_variance
|moving_stddev
}renorm_mean
~renorm_stddev
regularization_losses
	variables
trainable_variables
	keras_api
+ν&call_and_return_all_conditional_losses
ξ__call__"
_tf_keras_layer
Γ
kernel
	bias
regularization_losses
	variables
trainable_variables
	keras_api
+ο&call_and_return_all_conditional_losses
π__call__"
_tf_keras_layer
«
regularization_losses
	variables
trainable_variables
	keras_api
+ρ&call_and_return_all_conditional_losses
ς__call__"
_tf_keras_layer
Ε
renorm_clipping
	axis

gamma
	beta
moving_mean
moving_variance
moving_stddev
renorm_mean
renorm_stddev
regularization_losses
	variables
trainable_variables
	keras_api
+σ&call_and_return_all_conditional_losses
τ__call__"
_tf_keras_layer
Γ
kernel
	bias
regularization_losses
	variables
trainable_variables
	keras_api
+υ&call_and_return_all_conditional_losses
φ__call__"
_tf_keras_layer
«
 regularization_losses
‘	variables
’trainable_variables
£	keras_api
+χ&call_and_return_all_conditional_losses
ψ__call__"
_tf_keras_layer
Γ
€kernel
	₯bias
¦regularization_losses
§	variables
¨trainable_variables
©	keras_api
+ω&call_and_return_all_conditional_losses
ϊ__call__"
_tf_keras_layer
π
	ͺiter
«beta_1
¬beta_2

­decay
?learning_ratemm'm (m‘3m’4m£>m€?m₯Jm¦Km§Um¨Vm©amͺbm«lm¬mm­xm?ym―	m°	m±	m²	m³	m΄	m΅	€mΆ	₯m·vΈvΉ'vΊ(v»3vΌ4v½>vΎ?vΏJvΐKvΑUvΒVvΓavΔbvΕlvΖmvΗxvΘyvΙ	vΚ	vΛ	vΜ	vΝ	vΞ	vΟ	€vΠ	₯vΡ"
	optimizer
 "
trackable_list_wrapper
γ
0
1
2
3
 4
!5
"6
'7
(8
39
410
511
612
713
814
915
>16
?17
J18
K19
L20
M21
N22
O23
P24
U25
V26
a27
b28
c29
d30
e31
f32
g33
l34
m35
x36
y37
z38
{39
|40
}41
~42
43
44
45
46
47
48
49
50
51
52
53
€54
₯55"
trackable_list_wrapper
ξ
0
1
'2
(3
34
45
>6
?7
J8
K9
U10
V11
a12
b13
l14
m15
x16
y17
18
19
20
21
22
23
€24
₯25"
trackable_list_wrapper
Σ
―non_trainable_variables
°layer_metrics
regularization_losses
±layers
	variables
trainable_variables
 ²layer_regularization_losses
³metrics
Τ__call__
Σ_default_save_signature
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
-
ϋserving_default"
signature_map
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
):'	2batch_normalization_4/gamma
(:&	2batch_normalization_4/beta
1:/	 (2!batch_normalization_4/moving_mean
5:3	 (2%batch_normalization_4/moving_variance
3:1	 (2#batch_normalization_4/moving_stddev
1:/	 (2!batch_normalization_4/renorm_mean
3:1	 (2#batch_normalization_4/renorm_stddev
 "
trackable_list_wrapper
Q
0
1
2
3
 4
!5
"6"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
΅
΄non_trainable_variables
΅layer_metrics
#regularization_losses
Άlayers
$	variables
%trainable_variables
 ·layer_regularization_losses
Έmetrics
Φ__call__
+Υ&call_and_return_all_conditional_losses
'Υ"call_and_return_conditional_losses"
_generic_user_object
": 		2dense_21/kernel
:2dense_21/bias
 "
trackable_list_wrapper
.
'0
(1"
trackable_list_wrapper
.
'0
(1"
trackable_list_wrapper
΅
Ήnon_trainable_variables
Ίlayer_metrics
)regularization_losses
»layers
*	variables
+trainable_variables
 Όlayer_regularization_losses
½metrics
Ψ__call__
+Χ&call_and_return_all_conditional_losses
'Χ"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
΅
Ύnon_trainable_variables
Ώlayer_metrics
-regularization_losses
ΐlayers
.	variables
/trainable_variables
 Αlayer_regularization_losses
Βmetrics
Ϊ__call__
+Ω&call_and_return_all_conditional_losses
'Ω"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
*:(2batch_normalization_5/gamma
):'2batch_normalization_5/beta
2:0 (2!batch_normalization_5/moving_mean
6:4 (2%batch_normalization_5/moving_variance
4:2 (2#batch_normalization_5/moving_stddev
2:0 (2!batch_normalization_5/renorm_mean
4:2 (2#batch_normalization_5/renorm_stddev
 "
trackable_list_wrapper
Q
30
41
52
63
74
85
96"
trackable_list_wrapper
.
30
41"
trackable_list_wrapper
΅
Γnon_trainable_variables
Δlayer_metrics
:regularization_losses
Εlayers
;	variables
<trainable_variables
 Ζlayer_regularization_losses
Ηmetrics
ά__call__
+Ϋ&call_and_return_all_conditional_losses
'Ϋ"call_and_return_conditional_losses"
_generic_user_object
#:!
2dense_22/kernel
:2dense_22/bias
 "
trackable_list_wrapper
.
>0
?1"
trackable_list_wrapper
.
>0
?1"
trackable_list_wrapper
΅
Θnon_trainable_variables
Ιlayer_metrics
@regularization_losses
Κlayers
A	variables
Btrainable_variables
 Λlayer_regularization_losses
Μmetrics
ή__call__
+έ&call_and_return_all_conditional_losses
'έ"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
΅
Νnon_trainable_variables
Ξlayer_metrics
Dregularization_losses
Οlayers
E	variables
Ftrainable_variables
 Πlayer_regularization_losses
Ρmetrics
ΰ__call__
+ί&call_and_return_all_conditional_losses
'ί"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
*:(2batch_normalization_6/gamma
):'2batch_normalization_6/beta
2:0 (2!batch_normalization_6/moving_mean
6:4 (2%batch_normalization_6/moving_variance
4:2 (2#batch_normalization_6/moving_stddev
2:0 (2!batch_normalization_6/renorm_mean
4:2 (2#batch_normalization_6/renorm_stddev
 "
trackable_list_wrapper
Q
J0
K1
L2
M3
N4
O5
P6"
trackable_list_wrapper
.
J0
K1"
trackable_list_wrapper
΅
?non_trainable_variables
Σlayer_metrics
Qregularization_losses
Τlayers
R	variables
Strainable_variables
 Υlayer_regularization_losses
Φmetrics
β__call__
+α&call_and_return_all_conditional_losses
'α"call_and_return_conditional_losses"
_generic_user_object
#:!
2dense_23/kernel
:2dense_23/bias
 "
trackable_list_wrapper
.
U0
V1"
trackable_list_wrapper
.
U0
V1"
trackable_list_wrapper
΅
Χnon_trainable_variables
Ψlayer_metrics
Wregularization_losses
Ωlayers
X	variables
Ytrainable_variables
 Ϊlayer_regularization_losses
Ϋmetrics
δ__call__
+γ&call_and_return_all_conditional_losses
'γ"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
΅
άnon_trainable_variables
έlayer_metrics
[regularization_losses
ήlayers
\	variables
]trainable_variables
 ίlayer_regularization_losses
ΰmetrics
ζ__call__
+ε&call_and_return_all_conditional_losses
'ε"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
*:(2batch_normalization_7/gamma
):'2batch_normalization_7/beta
2:0 (2!batch_normalization_7/moving_mean
6:4 (2%batch_normalization_7/moving_variance
4:2 (2#batch_normalization_7/moving_stddev
2:0 (2!batch_normalization_7/renorm_mean
4:2 (2#batch_normalization_7/renorm_stddev
 "
trackable_list_wrapper
Q
a0
b1
c2
d3
e4
f5
g6"
trackable_list_wrapper
.
a0
b1"
trackable_list_wrapper
΅
αnon_trainable_variables
βlayer_metrics
hregularization_losses
γlayers
i	variables
jtrainable_variables
 δlayer_regularization_losses
εmetrics
θ__call__
+η&call_and_return_all_conditional_losses
'η"call_and_return_conditional_losses"
_generic_user_object
#:!
2dense_24/kernel
:2dense_24/bias
 "
trackable_list_wrapper
.
l0
m1"
trackable_list_wrapper
.
l0
m1"
trackable_list_wrapper
΅
ζnon_trainable_variables
ηlayer_metrics
nregularization_losses
θlayers
o	variables
ptrainable_variables
 ιlayer_regularization_losses
κmetrics
κ__call__
+ι&call_and_return_all_conditional_losses
'ι"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
΅
λnon_trainable_variables
μlayer_metrics
rregularization_losses
νlayers
s	variables
ttrainable_variables
 ξlayer_regularization_losses
οmetrics
μ__call__
+λ&call_and_return_all_conditional_losses
'λ"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
*:(2batch_normalization_8/gamma
):'2batch_normalization_8/beta
2:0 (2!batch_normalization_8/moving_mean
6:4 (2%batch_normalization_8/moving_variance
4:2 (2#batch_normalization_8/moving_stddev
2:0 (2!batch_normalization_8/renorm_mean
4:2 (2#batch_normalization_8/renorm_stddev
 "
trackable_list_wrapper
Q
x0
y1
z2
{3
|4
}5
~6"
trackable_list_wrapper
.
x0
y1"
trackable_list_wrapper
·
πnon_trainable_variables
ρlayer_metrics
regularization_losses
ςlayers
	variables
trainable_variables
 σlayer_regularization_losses
τmetrics
ξ__call__
+ν&call_and_return_all_conditional_losses
'ν"call_and_return_conditional_losses"
_generic_user_object
": 	@2dense_25/kernel
:@2dense_25/bias
 "
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
Έ
υnon_trainable_variables
φlayer_metrics
regularization_losses
χlayers
	variables
trainable_variables
 ψlayer_regularization_losses
ωmetrics
π__call__
+ο&call_and_return_all_conditional_losses
'ο"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Έ
ϊnon_trainable_variables
ϋlayer_metrics
regularization_losses
όlayers
	variables
trainable_variables
 ύlayer_regularization_losses
ώmetrics
ς__call__
+ρ&call_and_return_all_conditional_losses
'ρ"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
):'@2batch_normalization_9/gamma
(:&@2batch_normalization_9/beta
1:/@ (2!batch_normalization_9/moving_mean
5:3@ (2%batch_normalization_9/moving_variance
3:1@ (2#batch_normalization_9/moving_stddev
1:/@ (2!batch_normalization_9/renorm_mean
3:1@ (2#batch_normalization_9/renorm_stddev
 "
trackable_list_wrapper
X
0
1
2
3
4
5
6"
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
Έ
?non_trainable_variables
layer_metrics
regularization_losses
layers
	variables
trainable_variables
 layer_regularization_losses
metrics
τ__call__
+σ&call_and_return_all_conditional_losses
'σ"call_and_return_conditional_losses"
_generic_user_object
!:@ 2dense_26/kernel
: 2dense_26/bias
 "
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
Έ
non_trainable_variables
layer_metrics
regularization_losses
layers
	variables
trainable_variables
 layer_regularization_losses
metrics
φ__call__
+υ&call_and_return_all_conditional_losses
'υ"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Έ
non_trainable_variables
layer_metrics
 regularization_losses
layers
‘	variables
’trainable_variables
 layer_regularization_losses
metrics
ψ__call__
+χ&call_and_return_all_conditional_losses
'χ"call_and_return_conditional_losses"
_generic_user_object
!: 2dense_27/kernel
:2dense_27/bias
 "
trackable_list_wrapper
0
€0
₯1"
trackable_list_wrapper
0
€0
₯1"
trackable_list_wrapper
Έ
non_trainable_variables
layer_metrics
¦regularization_losses
layers
§	variables
¨trainable_variables
 layer_regularization_losses
metrics
ϊ__call__
+ω&call_and_return_all_conditional_losses
'ω"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate

0
1
 2
!3
"4
55
66
77
88
99
L10
M11
N12
O13
P14
c15
d16
e17
f18
g19
z20
{21
|22
}23
~24
25
26
27
28
29"
trackable_list_wrapper
 "
trackable_dict_wrapper
?
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15
16
17
18"
trackable_list_wrapper
 "
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
C
0
1
 2
!3
"4"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
C
50
61
72
83
94"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
C
L0
M1
N2
O3
P4"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
C
c0
d1
e2
f3
g4"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
C
z0
{1
|2
}3
~4"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
H
0
1
2
3
4"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
R

total

count
	variables
	keras_api"
_tf_keras_metric
c

total

count

_fn_kwargs
	variables
	keras_api"
_tf_keras_metric
:  (2total
:  (2count
0
0
1"
trackable_list_wrapper
.
	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
0
1"
trackable_list_wrapper
.
	variables"
_generic_user_object
.:,	2"Adam/batch_normalization_4/gamma/m
-:+	2!Adam/batch_normalization_4/beta/m
':%		2Adam/dense_21/kernel/m
!:2Adam/dense_21/bias/m
/:-2"Adam/batch_normalization_5/gamma/m
.:,2!Adam/batch_normalization_5/beta/m
(:&
2Adam/dense_22/kernel/m
!:2Adam/dense_22/bias/m
/:-2"Adam/batch_normalization_6/gamma/m
.:,2!Adam/batch_normalization_6/beta/m
(:&
2Adam/dense_23/kernel/m
!:2Adam/dense_23/bias/m
/:-2"Adam/batch_normalization_7/gamma/m
.:,2!Adam/batch_normalization_7/beta/m
(:&
2Adam/dense_24/kernel/m
!:2Adam/dense_24/bias/m
/:-2"Adam/batch_normalization_8/gamma/m
.:,2!Adam/batch_normalization_8/beta/m
':%	@2Adam/dense_25/kernel/m
 :@2Adam/dense_25/bias/m
.:,@2"Adam/batch_normalization_9/gamma/m
-:+@2!Adam/batch_normalization_9/beta/m
&:$@ 2Adam/dense_26/kernel/m
 : 2Adam/dense_26/bias/m
&:$ 2Adam/dense_27/kernel/m
 :2Adam/dense_27/bias/m
.:,	2"Adam/batch_normalization_4/gamma/v
-:+	2!Adam/batch_normalization_4/beta/v
':%		2Adam/dense_21/kernel/v
!:2Adam/dense_21/bias/v
/:-2"Adam/batch_normalization_5/gamma/v
.:,2!Adam/batch_normalization_5/beta/v
(:&
2Adam/dense_22/kernel/v
!:2Adam/dense_22/bias/v
/:-2"Adam/batch_normalization_6/gamma/v
.:,2!Adam/batch_normalization_6/beta/v
(:&
2Adam/dense_23/kernel/v
!:2Adam/dense_23/bias/v
/:-2"Adam/batch_normalization_7/gamma/v
.:,2!Adam/batch_normalization_7/beta/v
(:&
2Adam/dense_24/kernel/v
!:2Adam/dense_24/bias/v
/:-2"Adam/batch_normalization_8/gamma/v
.:,2!Adam/batch_normalization_8/beta/v
':%	@2Adam/dense_25/kernel/v
 :@2Adam/dense_25/bias/v
.:,@2"Adam/batch_normalization_9/gamma/v
-:+@2!Adam/batch_normalization_9/beta/v
&:$@ 2Adam/dense_26/kernel/v
 : 2Adam/dense_26/bias/v
&:$ 2Adam/dense_27/kernel/v
 :2Adam/dense_27/bias/v
ξ2λ
H__inference_sequential_8_layer_call_and_return_conditional_losses_600112
H__inference_sequential_8_layer_call_and_return_conditional_losses_600651
H__inference_sequential_8_layer_call_and_return_conditional_losses_599733
H__inference_sequential_8_layer_call_and_return_conditional_losses_599868ΐ
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsͺ 
annotationsͺ *
 
ΜBΙ
!__inference__wrapped_model_597114input_3"
²
FullArgSpec
args 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
2?
-__inference_sequential_8_layer_call_fn_598976
-__inference_sequential_8_layer_call_fn_600732
-__inference_sequential_8_layer_call_fn_600849
-__inference_sequential_8_layer_call_fn_599634ΐ
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsͺ 
annotationsͺ *
 
ΰ2έ
Q__inference_batch_normalization_4_layer_call_and_return_conditional_losses_600869
Q__inference_batch_normalization_4_layer_call_and_return_conditional_losses_600946΄
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsͺ 
annotationsͺ *
 
ͺ2§
6__inference_batch_normalization_4_layer_call_fn_600959
6__inference_batch_normalization_4_layer_call_fn_600978΄
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsͺ 
annotationsͺ *
 
ξ2λ
D__inference_dense_21_layer_call_and_return_conditional_losses_600989’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
Σ2Π
)__inference_dense_21_layer_call_fn_600998’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
Θ2Ε
E__inference_dropout_4_layer_call_and_return_conditional_losses_601003
E__inference_dropout_4_layer_call_and_return_conditional_losses_601015΄
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsͺ 
annotationsͺ *
 
2
*__inference_dropout_4_layer_call_fn_601020
*__inference_dropout_4_layer_call_fn_601025΄
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsͺ 
annotationsͺ *
 
ΰ2έ
Q__inference_batch_normalization_5_layer_call_and_return_conditional_losses_601045
Q__inference_batch_normalization_5_layer_call_and_return_conditional_losses_601122΄
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsͺ 
annotationsͺ *
 
ͺ2§
6__inference_batch_normalization_5_layer_call_fn_601135
6__inference_batch_normalization_5_layer_call_fn_601154΄
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsͺ 
annotationsͺ *
 
ξ2λ
D__inference_dense_22_layer_call_and_return_conditional_losses_601165’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
Σ2Π
)__inference_dense_22_layer_call_fn_601174’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
Θ2Ε
E__inference_dropout_5_layer_call_and_return_conditional_losses_601179
E__inference_dropout_5_layer_call_and_return_conditional_losses_601191΄
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsͺ 
annotationsͺ *
 
2
*__inference_dropout_5_layer_call_fn_601196
*__inference_dropout_5_layer_call_fn_601201΄
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsͺ 
annotationsͺ *
 
ΰ2έ
Q__inference_batch_normalization_6_layer_call_and_return_conditional_losses_601221
Q__inference_batch_normalization_6_layer_call_and_return_conditional_losses_601298΄
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsͺ 
annotationsͺ *
 
ͺ2§
6__inference_batch_normalization_6_layer_call_fn_601311
6__inference_batch_normalization_6_layer_call_fn_601330΄
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsͺ 
annotationsͺ *
 
ξ2λ
D__inference_dense_23_layer_call_and_return_conditional_losses_601341’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
Σ2Π
)__inference_dense_23_layer_call_fn_601350’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
Θ2Ε
E__inference_dropout_6_layer_call_and_return_conditional_losses_601355
E__inference_dropout_6_layer_call_and_return_conditional_losses_601367΄
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsͺ 
annotationsͺ *
 
2
*__inference_dropout_6_layer_call_fn_601372
*__inference_dropout_6_layer_call_fn_601377΄
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsͺ 
annotationsͺ *
 
ΰ2έ
Q__inference_batch_normalization_7_layer_call_and_return_conditional_losses_601397
Q__inference_batch_normalization_7_layer_call_and_return_conditional_losses_601474΄
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsͺ 
annotationsͺ *
 
ͺ2§
6__inference_batch_normalization_7_layer_call_fn_601487
6__inference_batch_normalization_7_layer_call_fn_601506΄
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsͺ 
annotationsͺ *
 
ξ2λ
D__inference_dense_24_layer_call_and_return_conditional_losses_601517’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
Σ2Π
)__inference_dense_24_layer_call_fn_601526’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
Θ2Ε
E__inference_dropout_7_layer_call_and_return_conditional_losses_601531
E__inference_dropout_7_layer_call_and_return_conditional_losses_601543΄
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsͺ 
annotationsͺ *
 
2
*__inference_dropout_7_layer_call_fn_601548
*__inference_dropout_7_layer_call_fn_601553΄
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsͺ 
annotationsͺ *
 
ΰ2έ
Q__inference_batch_normalization_8_layer_call_and_return_conditional_losses_601573
Q__inference_batch_normalization_8_layer_call_and_return_conditional_losses_601650΄
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsͺ 
annotationsͺ *
 
ͺ2§
6__inference_batch_normalization_8_layer_call_fn_601663
6__inference_batch_normalization_8_layer_call_fn_601682΄
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsͺ 
annotationsͺ *
 
ξ2λ
D__inference_dense_25_layer_call_and_return_conditional_losses_601693’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
Σ2Π
)__inference_dense_25_layer_call_fn_601702’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
Θ2Ε
E__inference_dropout_8_layer_call_and_return_conditional_losses_601707
E__inference_dropout_8_layer_call_and_return_conditional_losses_601719΄
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsͺ 
annotationsͺ *
 
2
*__inference_dropout_8_layer_call_fn_601724
*__inference_dropout_8_layer_call_fn_601729΄
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsͺ 
annotationsͺ *
 
ΰ2έ
Q__inference_batch_normalization_9_layer_call_and_return_conditional_losses_601749
Q__inference_batch_normalization_9_layer_call_and_return_conditional_losses_601826΄
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsͺ 
annotationsͺ *
 
ͺ2§
6__inference_batch_normalization_9_layer_call_fn_601839
6__inference_batch_normalization_9_layer_call_fn_601858΄
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsͺ 
annotationsͺ *
 
ξ2λ
D__inference_dense_26_layer_call_and_return_conditional_losses_601869’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
Σ2Π
)__inference_dense_26_layer_call_fn_601878’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
Θ2Ε
E__inference_dropout_9_layer_call_and_return_conditional_losses_601883
E__inference_dropout_9_layer_call_and_return_conditional_losses_601895΄
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsͺ 
annotationsͺ *
 
2
*__inference_dropout_9_layer_call_fn_601900
*__inference_dropout_9_layer_call_fn_601905΄
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsͺ 
annotationsͺ *
 
ξ2λ
D__inference_dense_27_layer_call_and_return_conditional_losses_601916’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
Σ2Π
)__inference_dense_27_layer_call_fn_601925’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
ΛBΘ
$__inference_signature_wrapper_599957input_3"
²
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 Ώ
!__inference__wrapped_model_5971140'(6354>?MJLKUVdacblm{xzy€₯0’-
&’#
!
input_3?????????	
ͺ "3ͺ0
.
dense_27"
dense_27?????????·
Q__inference_batch_normalization_4_layer_call_and_return_conditional_losses_600869b3’0
)’&
 
inputs?????????	
p 
ͺ "%’"

0?????????	
 Ί
Q__inference_batch_normalization_4_layer_call_and_return_conditional_losses_600946e"! 3’0
)’&
 
inputs?????????	
p
ͺ "%’"

0?????????	
 
6__inference_batch_normalization_4_layer_call_fn_600959U3’0
)’&
 
inputs?????????	
p 
ͺ "?????????	
6__inference_batch_normalization_4_layer_call_fn_600978X"! 3’0
)’&
 
inputs?????????	
p
ͺ "?????????	Ή
Q__inference_batch_normalization_5_layer_call_and_return_conditional_losses_601045d63544’1
*’'
!
inputs?????????
p 
ͺ "&’#

0?????????
 Ό
Q__inference_batch_normalization_5_layer_call_and_return_conditional_losses_601122g98345764’1
*’'
!
inputs?????????
p
ͺ "&’#

0?????????
 
6__inference_batch_normalization_5_layer_call_fn_601135W63544’1
*’'
!
inputs?????????
p 
ͺ "?????????
6__inference_batch_normalization_5_layer_call_fn_601154Z98345764’1
*’'
!
inputs?????????
p
ͺ "?????????Ή
Q__inference_batch_normalization_6_layer_call_and_return_conditional_losses_601221dMJLK4’1
*’'
!
inputs?????????
p 
ͺ "&’#

0?????????
 Ό
Q__inference_batch_normalization_6_layer_call_and_return_conditional_losses_601298gPOJKLNM4’1
*’'
!
inputs?????????
p
ͺ "&’#

0?????????
 
6__inference_batch_normalization_6_layer_call_fn_601311WMJLK4’1
*’'
!
inputs?????????
p 
ͺ "?????????
6__inference_batch_normalization_6_layer_call_fn_601330ZPOJKLNM4’1
*’'
!
inputs?????????
p
ͺ "?????????Ή
Q__inference_batch_normalization_7_layer_call_and_return_conditional_losses_601397ddacb4’1
*’'
!
inputs?????????
p 
ͺ "&’#

0?????????
 Ό
Q__inference_batch_normalization_7_layer_call_and_return_conditional_losses_601474ggfabced4’1
*’'
!
inputs?????????
p
ͺ "&’#

0?????????
 
6__inference_batch_normalization_7_layer_call_fn_601487Wdacb4’1
*’'
!
inputs?????????
p 
ͺ "?????????
6__inference_batch_normalization_7_layer_call_fn_601506Zgfabced4’1
*’'
!
inputs?????????
p
ͺ "?????????Ή
Q__inference_batch_normalization_8_layer_call_and_return_conditional_losses_601573d{xzy4’1
*’'
!
inputs?????????
p 
ͺ "&’#

0?????????
 Ό
Q__inference_batch_normalization_8_layer_call_and_return_conditional_losses_601650g~}xyz|{4’1
*’'
!
inputs?????????
p
ͺ "&’#

0?????????
 
6__inference_batch_normalization_8_layer_call_fn_601663W{xzy4’1
*’'
!
inputs?????????
p 
ͺ "?????????
6__inference_batch_normalization_8_layer_call_fn_601682Z~}xyz|{4’1
*’'
!
inputs?????????
p
ͺ "?????????»
Q__inference_batch_normalization_9_layer_call_and_return_conditional_losses_601749f3’0
)’&
 
inputs?????????@
p 
ͺ "%’"

0?????????@
 Α
Q__inference_batch_normalization_9_layer_call_and_return_conditional_losses_601826l3’0
)’&
 
inputs?????????@
p
ͺ "%’"

0?????????@
 
6__inference_batch_normalization_9_layer_call_fn_601839Y3’0
)’&
 
inputs?????????@
p 
ͺ "?????????@
6__inference_batch_normalization_9_layer_call_fn_601858_3’0
)’&
 
inputs?????????@
p
ͺ "?????????@₯
D__inference_dense_21_layer_call_and_return_conditional_losses_600989]'(/’,
%’"
 
inputs?????????	
ͺ "&’#

0?????????
 }
)__inference_dense_21_layer_call_fn_600998P'(/’,
%’"
 
inputs?????????	
ͺ "?????????¦
D__inference_dense_22_layer_call_and_return_conditional_losses_601165^>?0’-
&’#
!
inputs?????????
ͺ "&’#

0?????????
 ~
)__inference_dense_22_layer_call_fn_601174Q>?0’-
&’#
!
inputs?????????
ͺ "?????????¦
D__inference_dense_23_layer_call_and_return_conditional_losses_601341^UV0’-
&’#
!
inputs?????????
ͺ "&’#

0?????????
 ~
)__inference_dense_23_layer_call_fn_601350QUV0’-
&’#
!
inputs?????????
ͺ "?????????¦
D__inference_dense_24_layer_call_and_return_conditional_losses_601517^lm0’-
&’#
!
inputs?????????
ͺ "&’#

0?????????
 ~
)__inference_dense_24_layer_call_fn_601526Qlm0’-
&’#
!
inputs?????????
ͺ "?????????§
D__inference_dense_25_layer_call_and_return_conditional_losses_601693_0’-
&’#
!
inputs?????????
ͺ "%’"

0?????????@
 
)__inference_dense_25_layer_call_fn_601702R0’-
&’#
!
inputs?????????
ͺ "?????????@¦
D__inference_dense_26_layer_call_and_return_conditional_losses_601869^/’,
%’"
 
inputs?????????@
ͺ "%’"

0????????? 
 ~
)__inference_dense_26_layer_call_fn_601878Q/’,
%’"
 
inputs?????????@
ͺ "????????? ¦
D__inference_dense_27_layer_call_and_return_conditional_losses_601916^€₯/’,
%’"
 
inputs????????? 
ͺ "%’"

0?????????
 ~
)__inference_dense_27_layer_call_fn_601925Q€₯/’,
%’"
 
inputs????????? 
ͺ "?????????§
E__inference_dropout_4_layer_call_and_return_conditional_losses_601003^4’1
*’'
!
inputs?????????
p 
ͺ "&’#

0?????????
 §
E__inference_dropout_4_layer_call_and_return_conditional_losses_601015^4’1
*’'
!
inputs?????????
p
ͺ "&’#

0?????????
 
*__inference_dropout_4_layer_call_fn_601020Q4’1
*’'
!
inputs?????????
p 
ͺ "?????????
*__inference_dropout_4_layer_call_fn_601025Q4’1
*’'
!
inputs?????????
p
ͺ "?????????§
E__inference_dropout_5_layer_call_and_return_conditional_losses_601179^4’1
*’'
!
inputs?????????
p 
ͺ "&’#

0?????????
 §
E__inference_dropout_5_layer_call_and_return_conditional_losses_601191^4’1
*’'
!
inputs?????????
p
ͺ "&’#

0?????????
 
*__inference_dropout_5_layer_call_fn_601196Q4’1
*’'
!
inputs?????????
p 
ͺ "?????????
*__inference_dropout_5_layer_call_fn_601201Q4’1
*’'
!
inputs?????????
p
ͺ "?????????§
E__inference_dropout_6_layer_call_and_return_conditional_losses_601355^4’1
*’'
!
inputs?????????
p 
ͺ "&’#

0?????????
 §
E__inference_dropout_6_layer_call_and_return_conditional_losses_601367^4’1
*’'
!
inputs?????????
p
ͺ "&’#

0?????????
 
*__inference_dropout_6_layer_call_fn_601372Q4’1
*’'
!
inputs?????????
p 
ͺ "?????????
*__inference_dropout_6_layer_call_fn_601377Q4’1
*’'
!
inputs?????????
p
ͺ "?????????§
E__inference_dropout_7_layer_call_and_return_conditional_losses_601531^4’1
*’'
!
inputs?????????
p 
ͺ "&’#

0?????????
 §
E__inference_dropout_7_layer_call_and_return_conditional_losses_601543^4’1
*’'
!
inputs?????????
p
ͺ "&’#

0?????????
 
*__inference_dropout_7_layer_call_fn_601548Q4’1
*’'
!
inputs?????????
p 
ͺ "?????????
*__inference_dropout_7_layer_call_fn_601553Q4’1
*’'
!
inputs?????????
p
ͺ "?????????₯
E__inference_dropout_8_layer_call_and_return_conditional_losses_601707\3’0
)’&
 
inputs?????????@
p 
ͺ "%’"

0?????????@
 ₯
E__inference_dropout_8_layer_call_and_return_conditional_losses_601719\3’0
)’&
 
inputs?????????@
p
ͺ "%’"

0?????????@
 }
*__inference_dropout_8_layer_call_fn_601724O3’0
)’&
 
inputs?????????@
p 
ͺ "?????????@}
*__inference_dropout_8_layer_call_fn_601729O3’0
)’&
 
inputs?????????@
p
ͺ "?????????@₯
E__inference_dropout_9_layer_call_and_return_conditional_losses_601883\3’0
)’&
 
inputs????????? 
p 
ͺ "%’"

0????????? 
 ₯
E__inference_dropout_9_layer_call_and_return_conditional_losses_601895\3’0
)’&
 
inputs????????? 
p
ͺ "%’"

0????????? 
 }
*__inference_dropout_9_layer_call_fn_601900O3’0
)’&
 
inputs????????? 
p 
ͺ "????????? }
*__inference_dropout_9_layer_call_fn_601905O3’0
)’&
 
inputs????????? 
p
ͺ "????????? ΰ
H__inference_sequential_8_layer_call_and_return_conditional_losses_5997330'(6354>?MJLKUVdacblm{xzy€₯8’5
.’+
!
input_3?????????	
p 

 
ͺ "%’"

0?????????
 υ
H__inference_sequential_8_layer_call_and_return_conditional_losses_599868¨E"! '(9834576>?POJKLNMUVgfabcedlm~}xyz|{€₯8’5
.’+
!
input_3?????????	
p

 
ͺ "%’"

0?????????
 ί
H__inference_sequential_8_layer_call_and_return_conditional_losses_6001120'(6354>?MJLKUVdacblm{xzy€₯7’4
-’*
 
inputs?????????	
p 

 
ͺ "%’"

0?????????
 τ
H__inference_sequential_8_layer_call_and_return_conditional_losses_600651§E"! '(9834576>?POJKLNMUVgfabcedlm~}xyz|{€₯7’4
-’*
 
inputs?????????	
p

 
ͺ "%’"

0?????????
 Έ
-__inference_sequential_8_layer_call_fn_5989760'(6354>?MJLKUVdacblm{xzy€₯8’5
.’+
!
input_3?????????	
p 

 
ͺ "?????????Ν
-__inference_sequential_8_layer_call_fn_599634E"! '(9834576>?POJKLNMUVgfabcedlm~}xyz|{€₯8’5
.’+
!
input_3?????????	
p

 
ͺ "?????????·
-__inference_sequential_8_layer_call_fn_6007320'(6354>?MJLKUVdacblm{xzy€₯7’4
-’*
 
inputs?????????	
p 

 
ͺ "?????????Μ
-__inference_sequential_8_layer_call_fn_600849E"! '(9834576>?POJKLNMUVgfabcedlm~}xyz|{€₯7’4
-’*
 
inputs?????????	
p

 
ͺ "?????????Ν
$__inference_signature_wrapper_599957€0'(6354>?MJLKUVdacblm{xzy€₯;’8
’ 
1ͺ.
,
input_3!
input_3?????????	"3ͺ0
.
dense_27"
dense_27?????????