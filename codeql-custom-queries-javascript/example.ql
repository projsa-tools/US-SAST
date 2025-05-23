/**
 * @name Insecure use of eval (simple name check)
 * @description Flags any function call whose callee is named "eval"
 * @kind problem
 * @problem.severity warning
 */
import javascript

from CallExpr call
where call.getCalleeName() = "eval"
select call, "Cross-site scripting vulnerability due to a user-provided value"