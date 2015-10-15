def highest_word_score(word_list)
  score_array = []
  word_array = []
  tie = []

  word_list.split(",").each do |palabra|
    word_array.push(palabra)
    word_total = word_score(palabra)
    score_array.push(word_total)
    end

  score_array.each do |num|
    if num == score_array.sort[-1]
      then
        s = word_array[num.index]
        tie.push(s)
        tie.sort_by { |x| x.length }
    else
      break
    end
    tie_break = tie.sort_by { |x| x.length }
    return
    tie_break[0]
