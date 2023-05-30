class RelatorioVendasPdf < Prawn::Document
    def initialize(dados, view)
      super(top_margin: 10)
      @dados = dados
      @view = view
      printPdf
    end

    def printPdf 
      horaAtual = Time.now
      text "#{horaAtual.strftime("%d/%m/%Y - %H:%M " )}", :align=> :right, :cell_style => { :font => "Courier"},:size => 7
      move_down 5
      text "Relatório de Vendas", :align=> :center,:style => :bold, :font => "Courier", :size => 10
      table tabelacabecalho , :cell_style => [ :font =>"Courier", :size => 10,] do
        column(0).width = 80
        column(0).font_style = :bold
        column(1).width = 80
        column(1).font_style = :bold
        column(2).width = 80
        column(2).font_style = :bold
        
        
      end
      @dados.each do |dado|
        table tabeladados(dado) , :cell_style => [ :font =>"Courier", :size => 10,] do
          column(0).width = 80
          column(0).font_style = :bold
          column(1).width = 80
          column(2).width = 80
          
       
        end
      end
    end


  def tabelacabecalho
      [[ "Data", "Total", "Total_pagar"]]
  end 

  def tabeladados(dado)
    [[ dado.data, dado.total,floatMoney(dado.total_pagar) ]]
  end 

  def floatMoney(valor)
    valor = sprintf('%.2f', valor).to_s
    valor = valor.gsub('.',',')
    return valor
  end
       
end