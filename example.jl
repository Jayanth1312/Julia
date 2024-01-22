using DataStructures

tree = AVLTree{Int, Float64}()

for i in 1:10
    insert!(tree, i => rand())
end

