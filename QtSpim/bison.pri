bison.name = Bison ${QMAKE_FILE_IN}
bison.input = BISONSOURCES
bison.output = ${QMAKE_FILE_BASE}_yacc.cpp
bison.commands = bison --defines=${QMAKE_FILE_BASE}_yacc.h -p yy -o ${QMAKE_FILE_BASE}_yacc.cpp ${QMAKE_FILE_IN}
bison.CONFIG += target_predeps
bison.variable_out = GENERATED_SOURCES
silent:bison.commands = @echo Bison ${QMAKE_FILE_IN} && $$bison.commands
QMAKE_EXTRA_COMPILERS += bison

bison_header.input = BISONSOURCES
bison_header.output = ${QMAKE_FILE_BASE}_yacc.h
bison_header.commands = bison --defines=${QMAKE_FILE_BASE}_yacc.h -p yy -o ${QMAKE_FILE_BASE}_yacc.cpp ${QMAKE_FILE_IN}
bison_header.CONFIG += target_predeps no_link
silent:bison_header.commands = @echo Bison ${QMAKE_FILE_IN} && $$bison.commands
QMAKE_EXTRA_COMPILERS += bison_header
