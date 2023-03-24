class InvalidCodonError < ArgumentError
end

module Translation
  STOP_CODONS = %w[UAA UAG UGA]
  CODON_TO_PROTEIN = {
    'AUG' => 'Methionine',
    'UUU' => 'Phenylalanine',
    'UUC' => 'Phenylalanine',
    'UUA' => 'Leucine',
    'UUG' => 'Leucine',
    'UCU' => 'Serine',
    'UCC' => 'Serine',
    'UCA' => 'Serine',
    'UCG' => 'Serine',
    'UAU' => 'Tyrosine',
    'UAC' => 'Tyrosine',
    'UGU' => 'Cysteine',
    'UGC' => 'Cysteine',
    'UGG' => 'Tryptophan',
  }       

  def self.of_rna(strand)
    codons = strand.scan(/\w{3}/)
    
    stop_index = codons.index { |codon| STOP_CODONS.include?(codon) } 

    fail InvalidCodonError if stop_index.nil? && strand.length % 3 != 0
    codons[0...stop_index]
      .map do |codon| 
        protein = CODON_TO_PROTEIN[codon] 
        fail InvalidCodonError if protein.nil?
        protein
      end
  end
end