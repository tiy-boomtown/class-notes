class MyFile
  # class << self
  #   def write(...)
  # end

  # self == MyFile
  # def self.whatever
  # def MyFile.whatever
  def self.write(to_file:, contents:)
    puts "path is #{to_file}, contents is #{contents}"
  end

  # Mirroring CSV foreach
  def foreach(path, headers: false, other: 15, req:)
    puts "path=#{path}, headers=#{headers}, other=#{other}, req=#{req}"
  end

  # def m(a, b, opt: true)
  # end
end

f = MyFile.new

f.foreach('asdf', req: 7)
f.foreach('asdf', req: 10, headers: true)
f.foreach('zxcv', other: 'other', req: 5)

# Before
# f.write(path, contents)

# These work
MyFile.write contents: 'Hello file', to_file: '/src/file'
MyFile.write to_file: '/src/file', contents: 'Hello'

# These don't
# f.write to_file: '/src/other'
# f.write contents: 'Hello'