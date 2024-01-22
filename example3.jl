mutable struct Node
    state
    parent
    action
end

mutable struct Frontier
    frontier::Vector{Node}
end

function add(frontier::Frontier, node::Node)
    push!(frontier.frontier, node)
end

function contains_state(frontier::Frontier, state)
    any(node.state == state for node in frontier.frontier)
end

function empty(frontier::Frontier)
    isempty(frontier.frontier)
end

function remove!(frontier::Frontier)
    return popfirst!(frontier.frontier)
end

mutable struct Grid
    grid
    init
    goal
    rows
    cols
end

function get_neighbors(grid::Grid, state)
    row, col = state
    actions = [
        ("up", (row-1, col)),
        ("down", (row+1, col)),
        ("left", (row, col-1)),
        ("right", (row, col+1))
    ]
    
    result = []
    for (action, (r, c)) in actions
        if 1 <= r <= grid.rows && 1 <= c <= grid.cols && grid.grid[r][c] != '#'
            push!(result, (action, (r, c)))
        end
    end
    return result
end

function search(grid::Grid)
    start = Node(grid.init, nothing, nothing)
    frontier = Frontier(Node[])
    add(frontier, start)
    
    explored = Set()
    
    while true
        if empty(frontier)
            throw(ErrorException("No solution"))
        end

        node = remove!(frontier)
        
        if node.state == grid.goal
            actions = []
            while node.parent !== nothing
                push!(actions, node.action)
                node = node.parent
            end
            return reverse(actions)
        end
        
        push!(explored, node.state)
        
        for (action, state) in get_neighbors(grid, node.state)
            state_str = string(state)
            if !contains_state(frontier, state_str) && !(state_str in explored)
                child = Node(state, node, action)
                add(frontier, child)
            end
        end
    end
end

# Input parameters
println("Enter the number of rows: ")
rows = parse(Int, readline())
println("Enter the number of columns: ")
cols = parse(Int, readline())

grid_data = []
for i in 1:rows
    println("Enter row data (use '.' for empty, '#' for blocked): ")
    row = readline()
    push!(grid_data, split(row, ""))
end

# Create the grid object
init = (1, 1)  # Change this to your desired initial position33
goal = (rows, cols)  # Change this to your desired goal position
grid = Grid(grid_data, init, goal, rows, cols)

try
    path = search(grid)
    println("Path: ", path)
catch e
    println(e)
end