## A node in the behaviour tree. Every node must return `SUCCESS`, `FAILURE` or
## `RUNNING` when ticked.
class_name BeehaveNode extends BeehaveTree
@icon("../icons/action.svg")

## Executes this node and returns a status code.
## This method must be overwritten. 
func tick(actor: Node, blackboard: Blackboard) -> int:
	return SUCCESS
