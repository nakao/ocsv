def vertical_charactor_variation(omatrix)
  vcv = []
  maxcol = omatrix.map {|orow| orow.size }.max
  0.upto(maxcol) do |c|
    vcv[c] = omatrix.map {|orow| orow[c]}
  end
  vcv
end

def column_boundary(vcv)
  cb = []
  vcv.each_with_index do |cv, i|
    cb << if cv.uniq.compact == [" "] then i else nil end
  end
  cb.compact!
  dmarks = []
  cb.each do |i|
    cb.each do |j|
      if i == j
        next
      elsif i + 1 == j
        dmarks << j
      end
    end
  end
  dmarks.each do |x| cb.delete(x) end
  cb
end

def format_csv(omatrix, cb)
  oc = []
  omatrix.each do |line|
    cb.each do |b|
      line[b] = ","
    end
    oc << line.join.split(",").map {|x| x.strip }.join(",")
  end
  oc.join("\n")
end

def omatrix(otable)
  olines = otable.split(/\n/)
  line = olines.size
  om = olines.map {|x| x.split("")}
end

def ocsv(otable)
  om = omatrix(otable)
  vcv = vertical_charactor_variation(om)
  cb = column_boundary(vcv)
  format_csv(om, cb)
end

if __FILE__ == $0
  otable = STDIN.read
  puts ocsv(otable)
end
