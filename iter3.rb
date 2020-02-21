def filter(hash, parametro)
    new_hash = {} 
    hash.each do |k,v|
        if v > parametro
            new_hash[k] = v
        end
    end 
    return new_hash 
end


hash = {"Q1"=>49000, "Q2"=>111000, "Q3"=>87200, "Q4"=>133500, "Q5"=>99000, "Q6"=> 100001}
parametro = ARGV[0].to_i

filter(hash, parametro)