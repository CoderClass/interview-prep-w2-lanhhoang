class Complement
  require_relative 'BookKeeping'

  DNA_TO_RNA = {
    'G' => 'C',
    'C' => 'G',
    'T' => 'A',
    'A' => 'U'
  }

  def self.of_dna(dna_strand)
    rna_strand = []
    dna_strand.chars.each do |c|
      return '' unless DNA_TO_RNA[c]
      rna_strand.push(DNA_TO_RNA[c])
    end
    rna_strand.join
  end
end