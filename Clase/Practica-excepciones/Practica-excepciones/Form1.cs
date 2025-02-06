namespace Practica_excepciones
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void richTextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        private void btnCalcular_Click(object sender, EventArgs e)
        {

            try
            {
                //  Verificaci�n de Casillas Vacias
                if (tbKm.Text == "")
                {
                    throw new ParametrosVaciosException("RELLENE LA CASILLA DE KM");
                }
                if (tbLitros.Text == "")
                {
                    throw new ParametrosVaciosException("RELLENE LA CASILLA DE LITROS");
                }

                int km, litros;
                
                //  Conversi�n de TextBox a N�meros
                km = int.Parse(tbKm.Text);
                litros = int.Parse(tbLitros.Text);

                //  C�lculos
                Calculador.calcular(km, litros);

            }
            catch (ParametrosVaciosException ex)
            {

                MessageBox.Show(ex.Message);
            }
            catch (Exception ex) 
            {
                MessageBox.Show(ex.Message);
            }
        }
    }
}
