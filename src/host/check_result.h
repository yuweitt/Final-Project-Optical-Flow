/*===============================================================*/
/*                                                               */
/*                        check_result.h                         */
/*                                                               */
/*      Compare result and expected label to get error rate      */
/*                                                               */
/*===============================================================*/

#ifndef __CHECK_RESULT_H__
#define __CHECK_RESULT_H__

#include "typedefs.h"
#include "../imageLib/imageLib.h"
#include <string>

void check_results(velocity_t output[MAX_HEIGHT][MAX_WIDTH], CFloatImage refFlow, std::string outFile);
void gen_output(velocity_t output[MAX_HEIGHT][MAX_WIDTH], std::string outFile);

#endif
