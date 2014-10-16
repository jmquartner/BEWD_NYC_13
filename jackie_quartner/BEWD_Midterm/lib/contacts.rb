class Contacts
  attr_accessor :name, :number, :contacts_content, :contacts 

  def initialize (name, number)
 
    @contacts_content = File.read('/Users/jaclynquartner/Desktop/BEWD_Midterm/lib/contacts.json')
 
    if contacts_content.empty?
      contacts = []
    else
      contacts = JSON.parse(contacts_content)
    end
 
    contacts << {name: name, number: number}
 
    File.write('/Users/jaclynquartner/Desktop/BEWD_Midterm/lib/contacts.json', contacts.to_json)
  end

  def read_contacts
  contacts_content = File.read('/Users/jaclynquartner/Desktop/BEWD_Midterm/lib/contacts.json')
 
    if contacts_content.empty?
      puts "you have no contacts"
    else
      contacts = JSON.parse(contacts_content)
      puts contacts
    end
  end

end
