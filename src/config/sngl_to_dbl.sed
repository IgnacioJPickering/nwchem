# This script performs blas keyword substitutions using the sed editor.
# It is divided into four separate sed commands because of buffer overflow
# on some machines, including Cray unicos. 
# (1) The first command substitutes regular embedded keywords in noncomment
#     lines.
# (2) The second version substitutes keywords that occur at the end of
#     noncomment lines.
# (3) The third version substitutes embedded keywords that are jammed next
#     to continuation characters.
# (4) The fourth version substitutes jammed keywords at the end of
#     continuation lines.
# This is not bulletproof, but it catches almost all keyword occurences.  It
# is recommended that your coding practices be consistent with this script.
#
# 08-feb-90 four-part division. -rls
# 14-dec-88 written by ron shepard. based on a previous script written
#           by eric stahlberg.
/^[ 0-9]/ s/\([^A-Za-z0-9_]\)[Ss][Aa][Xx][Pp][Yy]\([^A-Za-z0-9_]\)/\1daxpy\2/g
/^[ 0-9]/ s/\([^A-Za-z0-9_]\)[Ss][Dd][Oo][Tt]\([^A-Za-z0-9_]\)/\1ddot\2/g
/^[ 0-9]/ s/\([^A-Za-z0-9_]\)[Ss][Ss][Cc][Aa][Ll]\([^A-Za-z0-9_]\)/\1dscal\2/g
/^[ 0-9]/ s/\([^A-Za-z0-9_]\)[Ss][Cc][Oo][Pp][Yy]\([^A-Za-z0-9_]\)/\1dcopy\2/g
/^[ 0-9]/ s/\([^A-Za-z0-9_]\)[Ss][Nn][Rr][Mm]2\([^A-Za-z0-9_]\)/\1dnrm2\2/g
/^[ 0-9]/ s/\([^A-Za-z0-9_]\)[Ii][Ss][Aa][Mm][Aa][Xx]\([^A-Za-z0-9_]\)/\1idamax\2/g
/^[ 0-9]/ s/\([^A-Za-z0-9_]\)[Ss][Aa][Ss][Uu][Mm]\([^A-Za-z0-9_]\)/\1dasum\2/g
/^[ 0-9]/ s/\([^A-Za-z0-9_]\)[Ss][Rr][Oo][Tt]\([^A-Za-z0-9_]\)/\1srot\2/g
/^[ 0-9]/ s/\([^A-Za-z0-9_]\)[Ss][Rr][Oo][Tt][Gg]\([^A-Za-z0-9_]\)/\1drotg\2/g
/^[ 0-9]/ s/\([^A-Za-z0-9_]\)[Ss][Ss][Ww][Aa][Pp]\([^A-Za-z0-9_]\)/\1dswap\2/g
/^[ 0-9]/ s/\([^A-Za-z0-9_]\)[Ss][Mm][Aa][Cc][Hh]\([^A-Za-z0-9_]\)/\1dmach\2/g
/^[ 0-9]/ s/\([^A-Za-z0-9_]\)[Ss][Gg][Ee][Mm][Mm]\([^A-Za-z0-9_]\)/\1dgemm\2/g
/^[ 0-9]/ s/\([^A-Za-z0-9_]\)[Ss][Gg][Ee][Mm][Vv]\([^A-Za-z0-9_]\)/\1dgemv\2/g
/^[ 0-9]/ s/\([^A-Za-z0-9_]\)[Ss][Gg][Ee][Ss][Vv]\([^A-Za-z0-9_]\)/\1dgesv\2/g
/^[ 0-9]/ s/\([^A-Za-z0-9_]\)[Ss][Ss][Pp][Mm][Vv]\([^A-Za-z0-9_]\)/\1dspmv\2/g
/^[ 0-9]/ s/\([^A-Za-z0-9_]\)[Ss][Gg][Ee][Rr]\([^A-Za-z0-9_]\)/\1dger\2/g
/^[ 0-9]/ s/\([^A-Za-z0-9_]\)[Ss][Gg][Ee][Ss][Vv][Dd]\([^A-Za-z0-9_]\)/\1dgesvd\2/g
/^[ 0-9]/ s/\([^A-Za-z0-9_]\)[Ss][Ss][Pp][Ss][Vv][Xx]\([^A-Za-z0-9_]\)/\1dspsvx\2/g
/^[ 0-9]/ s/\([^A-Za-z0-9_]\)[Ss][Gg][Ee][Tt][Rr][Ss]\([^A-Za-z0-9_]\)/\1dgetrs\2/g

/^[ 0-9]/ s/\([^A-Za-z0-9_]\)[Ss][Aa][Xx][Pp][Yy]$/\1daxpy/
/^[ 0-9]/ s/\([^A-Za-z0-9_]\)[Ss][Dd][Oo][Tt]$/\1ddot/
/^[ 0-9]/ s/\([^A-Za-z0-9_]\)[Ss][Ss][Cc][Aa][Ll]$/\1dscal/
/^[ 0-9]/ s/\([^A-Za-z0-9_]\)[Ss][Cc][Oo][Pp][Yy]$/\1dcopy/
/^[ 0-9]/ s/\([^A-Za-z0-9_]\)[Ss][Nn][Rr][Mm]2$/\1dnrm2/
/^[ 0-9]/ s/\([^A-Za-z0-9_]\)[Ii][Ss][Aa][Mm][Aa][Xx]$/\1idamax/
/^[ 0-9]/ s/\([^A-Za-z0-9_]\)[Ss][Aa][Ss][Uu][Mm]$/\1dasum/
/^[ 0-9]/ s/\([^A-Za-z0-9_]\)[Ss][Rr][Oo][Tt]$/\1drot/
/^[ 0-9]/ s/\([^A-Za-z0-9_]\)[Ss][Rr][Oo][Tt][Gg]$/\1drotg/
/^[ 0-9]/ s/\([^A-Za-z0-9_]\)[Ss][Ss][Ww][Aa][Pp]$/\1dswap/
/^[ 0-9]/ s/\([^A-Za-z0-9_]\)[Ss][Mm][Aa][Cc][Hh]$/\1dmach/
/^[ 0-9]/ s/\([^A-Za-z0-9_]\)[Ss][Gg][Ee][Mm][Mm]$/\1dgemm/
/^[ 0-9]/ s/\([^A-Za-z0-9_]\)[Ss][Gg][Ee][Mm][Vv]$/\1dgemv/
/^[ 0-9]/ s/\([^A-Za-z0-9_]\)[Ss][Gg][Ee][Ss][Vv]$/\1dgesv/
/^[ 0-9]/ s/\([^A-Za-z0-9_]\)[Ss][Ss][Pp][Mm][Vv]$/\1dspmv/
/^[ 0-9]/ s/\([^A-Za-z0-9_]\)[Ss][Gg][Ee][Rr]$/\1dger/
/^[ 0-9]/ s/\([^A-Za-z0-9_]\)[Ss][Gg][Ee][Ss][Vv][Dd]$/\1dgesvd/
/^[ 0-9]/ s/\([^A-Za-z0-9_]\)[Ss][Ss][Pp][Ss][Vv][Xx]$/\1dspsvx/
/^[ 0-9]/ s/\([^A-Za-z0-9_]\)[Ss][Gg][Ee][Tt][Rr][Ss]$/\1dgetrs/

s/^\(     .\)[Ss][Aa][Xx][Pp][Yy]\([^A-Za-z0-9_]\)/\1daxpy\2/
s/^\(     .\)[Ss][Dd][Oo][Tt]\([^A-Za-z0-9_]\)/\1ddot\2/
s/^\(     .\)[Ss][Ss][Cc][Aa][Ll]\([^A-Za-z0-9_]\)/\1dscal\2/
s/^\(     .\)[Ss][Cc][Oo][Pp][Yy]\([^A-Za-z0-9_]\)/\1dcopy\2/
s/^\(     .\)[Ss][Nn][Rr][Mm]2\([^A-Za-z0-9_]\)/\1dnrm2\2/
s/^\(     .\)[Ii][Ss][Aa][Mm][Aa][Xx]\([^A-Za-z0-9_]\)/\1idamax\2/
s/^\(     .\)[Ss][Aa][Ss][Uu][Mm]\([^A-Za-z0-9_]\)/\1dasum\2/
s/^\(     .\)[Ss][Rr][Oo][Tt]\([^A-Za-z0-9_]\)/\1srot\2/
s/^\(     .\)[Ss][Rr][Oo][Tt][Gg]\([^A-Za-z0-9_]\)/\1drotg\2/
s/^\(     .\)[Ss][Ss][Ww][Aa][Pp]\([^A-Za-z0-9_]\)/\1dswap\2/
s/^\(     .\)[Ss][Mm][Aa][Cc][Hh]\([^A-Za-z0-9_]\)/\1dmach\2/
s/^\(     .\)[Ss][Gg][Ee][Mm][Mm]\([^A-Za-z0-9_]\)/\1dgemm\2/
s/^\(     .\)[Ss][Gg][Ee][Mm][Vv]\([^A-Za-z0-9_]\)/\1dgemv\2/
s/^\(     .\)[Ss][Gg][Ee][Ss][Vv]\([^A-Za-z0-9_]\)/\1dgesv\2/
s/^\(     .\)[Ss][Ss][Pp][Mm][Vv]\([^A-Za-z0-9_]\)/\1dspmv\2/
s/^\(     .\)[Ss][Gg][Ee][Rr]\([^A-Za-z0-9_]\)/\1dger\2/
s/^\(     .\)[Ss][Gg][Ee][Ss][Vv][Dd]\([^A-Za-z0-9_]\)/\1dgesvd\2/
s/^\(     .\)[Ss][Ss][Pp][Ss][Vv][Xx]\([^A-Za-z0-9_]\)/\1dspsvx\2/
s/^\(     .\)[Ss][Gg][Ee][Tt][Rr][Ss]\([^A-Za-z0-9_]\)/\1dgetrs\2/

s/^\(     .\)[Ss][Aa][Xx][Pp][Yy]$/\1daxpy/
s/^\(     .\)[Ss][Dd][Oo][Tt]$/\1ddot/
s/^\(     .\)[Ss][Ss][Cc][Aa][Ll]$/\1dscal/
s/^\(     .\)[Ss][Cc][Oo][Pp][Yy]$/\1dcopy/
s/^\(     .\)[Ss][Nn][Rr][Mm]2$/\1dnrm2/
s/^\(     .\)[Ii][Ss][Aa][Mm][Aa][Xx]$/\1idamax/
s/^\(     .\)[Ss][Aa][Ss][Uu][Mm]$/\1dasum/
s/^\(     .\)[Ss][Rr][Oo][Tt]$/\1drot/
s/^\(     .\)[Ss][Rr][Oo][Tt][Gg]$/\1drotg/
s/^\(     .\)[Ss][Ss][Ww][Aa][Pp]$/\1dswap/
s/^\(     .\)[Ss][Mm][Aa][Cc][Hh]$/\1dmach/
s/^\(     .\)[Ss][Gg][Ee][Mm][Mm]$/\1dgemm/
s/^\(     .\)[Ss][Gg][Ee][Mm][Vv]$/\1dgemv/
s/^\(     .\)[Ss][Gg][Ee][Ss][Vv]$/\1dgesv/
s/^\(     .\)[Ss][Ss][Pp][Mm][Vv]$/\1dspmv/
s/^\(     .\)[Ss][Gg][Ee][Rr]$/\1dger/
s/^\(     .\)[Ss][Gg][Ee][Ss][Vv][Dd]$/\1dgesvd/
s/^\(     .\)[Ss][Ss][Pp][Ss][Vv][Xx]$/\1dspsvx/
s/^\(     .\)[Ss][Gg][Ee][Tt][Rr][Ss]$/\1dgetrs/
