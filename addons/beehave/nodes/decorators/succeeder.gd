## A succeeder node will always return a `SUCCESS` status code.
extends Decorator

class_name AlwaysSucceedDecorator
@icon("../../icons/succeed.svg")


func tick(actor: Node, blackboard: Blackboard) -> int:
	for c in get_children():
		var response = c.tick(actor, blackboard)
		if response == RUNNING:
			return RUNNING
	return SUCCESS
