using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Globalization;
using System.IO;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

namespace WebApp.App.pages
{
    public partial class importarArquivo : System.Web.UI.Page
    {
        private DBConnection context = new DBConnection();
        List<Pessoa> listaPessoas = new List<Pessoa>();
        Pessoa pessoa = null;

        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void BtImportar_Click(object sender, EventArgs e)
        {
            string caminhoArquivo = AppDomain.CurrentDomain.BaseDirectory + System.Configuration.ConfigurationManager.AppSettings["LocalArquivo"];
            string nomeCompleto = (Path.Combine(caminhoArquivo, FileUpload.FileName));

            if (String.IsNullOrEmpty(FileUpload.FileName))
            {
                MessageBox.Show("Selecione um arquivo!");
            }

            else if (System.IO.File.Exists(nomeCompleto))
            {

                MessageBox.Show(String.Format("O documento '{0}' já foi importado!", FileUpload.FileName));
            }

            else
            {
                FileUpload.SaveAs(nomeCompleto);

                string texto = System.IO.File.ReadAllText(nomeCompleto);

                string[] linhas = System.IO.File.ReadAllLines(nomeCompleto);

                for (int i = 0; i < linhas.Length; i++)
                {
                    linhas[i] = linhas[i].Replace("INDIGOSOFT", "|");
                    linhas[i] = linhas[i].Replace("ipsum interdum nam tristique", "|");
                    linhas[i] = linhas[i].Replace("Hendrerit felis lorem maecenas neque", "|");
                    linhas[i] = linhas[i].Replace("conubia luctus pellentesque viverra leo aliquet", "|");
                    linhas[i] = linhas[i].Replace("massa proin, dui bibendum molestie", "|");
                    linhas[i] = linhas[i].Replace("pendisse pretium senectus eleifend in sociosqu semper, sollicitudin aliquet mauris libero ligula augue nullam, arcu cursus netus vel enim curabitur. nisi sollicitudin pharetra enim mauris congue dolor, tincidunt dapibus vestibulum quisque non justo dapibus, faucibus orci convallis primis sociosqu. ipsum quisque a id hendrerit nullam nisl, suspendisse aliquam quisque lorem ipsum euismod inceptos, auctor duis curae vestibulum tellus. ipsum suscipit neque est porta facilisis aptent habitasse risus, conubia pulvinar platea lacinia turpis mattis hac fames, sed lorem mollis aenean est aptent potenti.", "|");
                    linhas[i] = linhas[i].Replace("|||", "|");
                    linhas[i] = linhas[i].Replace("||", "|");
                    linhas[i] = linhas[i].Replace("DATA ENTRADA", "DATAENTRADA");
                }
                string cabecalho = linhas[0];

                linhas = linhas.Where(x => x != linhas[0]).ToArray();


                for (var i = 0; i < linhas.Length; i++)
                {
                    string[] retorno = linhas[i].Split('|');
                    DateTime.TryParseExact(retorno[11],
                                           "dd/MM/yyyy",
                                           CultureInfo.InvariantCulture,
                                           DateTimeStyles.AdjustToUniversal, out DateTime data);

                    pessoa = new Pessoa
                    {
                        Nome = retorno[0],
                        Cpf = retorno[1],
                        Telefone = retorno[2],
                        Rg = retorno[3],
                        Endereco = retorno[4],
                        Email = retorno[5],
                        Sexo = retorno[6],
                        Cidade = retorno[7],
                        Estado = retorno[8],
                        Salario = retorno[9],
                        Idade = retorno[10],
                        DataEntrada = data
                    };

                    listaPessoas.Add(pessoa);
                }
                GravarDados(listaPessoas);
                MessageBox.Show("Arquivo importado com sucesso!");
            }
        }


        protected void GravarDados(List<Pessoa> listaPessoas)
        {
            using (var conn = new SqlConnection(context.ConnectionString()))
            {
                StringBuilder comandoSql = new StringBuilder();
                #region CONSULTA SQL
                comandoSql.AppendLine(" SET DATEFORMAT DMY; ");
                comandoSql.AppendLine(" INSERT INTO [dbo].[Pessoas] ([Nome], [CPF], [Telefone], [Rg], [Endereco], [Email], [Sexo], [Cidade], [Estado], [Salario], [Idade], [DataEntrada]) ");
                comandoSql.AppendLine(" VALUES ('" + listaPessoas[0].Nome + "',");
                comandoSql.AppendLine("'" + listaPessoas[0].Cpf + "',");
                comandoSql.AppendLine("'" + listaPessoas[0].Telefone + "',");
                comandoSql.AppendLine("'" + listaPessoas[0].Rg + "',");
                comandoSql.AppendLine("'" + listaPessoas[0].Endereco + "',");
                comandoSql.AppendLine("'" + listaPessoas[0].Email + "',");
                comandoSql.AppendLine("'" + listaPessoas[0].Sexo + "',");
                comandoSql.AppendLine("'" + listaPessoas[0].Cidade + "',");
                comandoSql.AppendLine("'" + listaPessoas[0].Estado + "',");
                comandoSql.AppendLine("'" + listaPessoas[0].Salario + "',");
                comandoSql.AppendLine("'" + listaPessoas[0].Idade + "',");
                comandoSql.AppendLine("'" + listaPessoas[0].DataEntrada + "'");
                comandoSql.AppendLine(")");

                for (int x = 1; x < listaPessoas.Count; x++)
                {
                    comandoSql.AppendLine(" ,('" + listaPessoas[x].Nome + "',");
                    comandoSql.AppendLine("'" + listaPessoas[x].Cpf + "',");
                    comandoSql.AppendLine("'" + listaPessoas[x].Telefone + "',");
                    comandoSql.AppendLine("'" + listaPessoas[x].Rg + "',");
                    comandoSql.AppendLine("'" + listaPessoas[x].Endereco + "',");
                    comandoSql.AppendLine("'" + listaPessoas[x].Email + "',");
                    comandoSql.AppendLine("'" + listaPessoas[x].Sexo + "',");
                    comandoSql.AppendLine("'" + listaPessoas[x].Cidade + "',");
                    comandoSql.AppendLine("'" + listaPessoas[x].Estado + "',");
                    comandoSql.AppendLine("'" + listaPessoas[x].Salario + "',");
                    comandoSql.AppendLine("'" + listaPessoas[x].Idade + "',");
                    comandoSql.AppendLine("'" + listaPessoas[x].DataEntrada + "'");
                    comandoSql.AppendLine(")");
                }
                #endregion

                SqlCommand cmd = new SqlCommand(comandoSql.ToString(), conn);

                try
                {
                    conn.Open();
                    cmd.ExecuteNonQuery();
                }
                catch (Exception e)
                {
                    throw e;
                }

            }
        }
    }
}